package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/ImageResponseCache.class */
public class ImageResponseCache {
    static final String TAG = "ImageResponseCache";
    private static FileLruCache imageCache;

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/ImageResponseCache$BufferedHttpInputStream.class */
    public static class BufferedHttpInputStream extends BufferedInputStream {
        HttpURLConnection connection;

        BufferedHttpInputStream(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.connection = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            Utility.disconnectQuietly(this.connection);
        }
    }

    ImageResponseCache() {
    }

    public static void clearCache(Context context) {
        try {
            getCache(context).clearCache();
        } catch (IOException e) {
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            Logger.log(loggingBehavior, 5, str, "clearCache failed " + e.getMessage());
        }
    }

    static FileLruCache getCache(Context context) throws IOException {
        FileLruCache fileLruCache;
        synchronized (ImageResponseCache.class) {
            try {
                if (imageCache == null) {
                    imageCache = new FileLruCache(TAG, new FileLruCache.Limits());
                }
                fileLruCache = imageCache;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileLruCache;
    }

    public static InputStream getCachedImageStream(Uri uri, Context context) {
        InputStream inputStream;
        if (uri != null && isCDNURL(uri)) {
            try {
                inputStream = getCache(context).get(uri.toString());
            } catch (IOException e) {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, e.toString());
            }
            return inputStream;
        }
        inputStream = null;
        return inputStream;
    }

    public static InputStream interceptAndCacheImageStream(Context context, HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        if (httpURLConnection.getResponseCode() == 200) {
            Uri parse = Uri.parse(httpURLConnection.getURL().toString());
            InputStream inputStream2 = httpURLConnection.getInputStream();
            inputStream = inputStream2;
            try {
                if (isCDNURL(parse)) {
                    inputStream = getCache(context).interceptAndPut(parse.toString(), new BufferedHttpInputStream(inputStream2, httpURLConnection));
                }
            } catch (IOException e) {
                inputStream = inputStream2;
            }
        } else {
            inputStream = null;
        }
        return inputStream;
    }

    private static boolean isCDNURL(Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (host.endsWith("fbcdn.net")) {
                return true;
            }
            return host.startsWith("fbcdn") && host.endsWith("akamaihd.net");
        }
        return false;
    }
}
