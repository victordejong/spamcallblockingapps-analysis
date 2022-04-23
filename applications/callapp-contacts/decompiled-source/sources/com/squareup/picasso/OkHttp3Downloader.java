package com.squareup.picasso;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/OkHttp3Downloader.class */
public final class OkHttp3Downloader implements Downloader {
    private final Cache cache;
    final Call.Factory client;
    private boolean sharedClient;

    public OkHttp3Downloader(Context context) {
        this(Utils.createDefaultCacheDir(context));
    }

    public OkHttp3Downloader(Context context, long j) {
        this(Utils.createDefaultCacheDir(context), j);
    }

    public OkHttp3Downloader(File file) {
        this(file, Utils.calculateDiskCacheSize(file));
    }

    public OkHttp3Downloader(File file, long j) {
        this(new OkHttpClient.Builder().cache(new Cache(file, j)).build());
        this.sharedClient = false;
    }

    public OkHttp3Downloader(Call.Factory factory) {
        this.sharedClient = true;
        this.client = factory;
        this.cache = null;
    }

    public OkHttp3Downloader(OkHttpClient okHttpClient) {
        this.sharedClient = true;
        this.client = okHttpClient;
        this.cache = okHttpClient.cache();
    }

    @Override // com.squareup.picasso.Downloader
    public final Response load(Request request) throws IOException {
        return this.client.newCall(request).execute();
    }

    @Override // com.squareup.picasso.Downloader
    public final void shutdown() {
        Cache cache;
        if (!this.sharedClient && (cache = this.cache) != null) {
            try {
                cache.close();
            } catch (IOException e) {
            }
        }
    }
}
