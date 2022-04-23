package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/NetworkRequestHandler.class */
public class NetworkRequestHandler extends RequestHandler {
    private static final String SCHEME_HTTP = "http";
    private static final String SCHEME_HTTPS = "https";
    private final Downloader downloader;
    private final Stats stats;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/NetworkRequestHandler$ContentLengthException.class */
    public static class ContentLengthException extends IOException {
        ContentLengthException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/NetworkRequestHandler$ResponseException.class */
    static final class ResponseException extends IOException {
        final int code;
        final int networkPolicy;

        ResponseException(int i, int i2) {
            super("HTTP ".concat(String.valueOf(i)));
            this.code = i;
            this.networkPolicy = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkRequestHandler(Downloader downloader, Stats stats) {
        this.downloader = downloader;
        this.stats = stats;
    }

    private static Request createRequest(Request request, int i) {
        CacheControl cacheControl;
        if (i == 0) {
            cacheControl = null;
        } else if (NetworkPolicy.isOfflineOnly(i)) {
            cacheControl = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                builder.noCache();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                builder.noStore();
            }
            cacheControl = builder.build();
        }
        Request.Builder url = new Request.Builder().url(request.uri.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        return url.build();
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        String scheme = request.uri.getScheme();
        return SCHEME_HTTP.equals(scheme) || "https".equals(scheme);
    }

    @Override // com.squareup.picasso.RequestHandler
    int getRetryCount() {
        return 2;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        Response load = this.downloader.load(createRequest(request, i));
        ResponseBody body = load.body();
        if (load.isSuccessful()) {
            Picasso.LoadedFrom loadedFrom = load.cacheResponse() == null ? Picasso.LoadedFrom.NETWORK : Picasso.LoadedFrom.DISK;
            if (loadedFrom == Picasso.LoadedFrom.DISK && body.contentLength() == 0) {
                body.close();
                throw new ContentLengthException("Received response with 0 content-length header.");
            }
            if (loadedFrom == Picasso.LoadedFrom.NETWORK && body.contentLength() > 0) {
                this.stats.dispatchDownloadFinished(body.contentLength());
            }
            return new RequestHandler.Result(body.source(), loadedFrom);
        }
        body.close();
        throw new ResponseException(load.code(), request.networkPolicy);
    }

    @Override // com.squareup.picasso.RequestHandler
    boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.squareup.picasso.RequestHandler
    boolean supportsReplay() {
        return true;
    }
}
