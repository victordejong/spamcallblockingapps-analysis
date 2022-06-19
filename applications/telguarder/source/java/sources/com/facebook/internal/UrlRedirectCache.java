package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/UrlRedirectCache.class */
public class UrlRedirectCache {
    private static final String REDIRECT_CONTENT_TAG;
    static final String TAG = "UrlRedirectCache";
    private static FileLruCache urlRedirectCache;

    static {
        String simpleName = UrlRedirectCache.class.getSimpleName();
        REDIRECT_CONTENT_TAG = simpleName + "_Redirect";
    }

    UrlRedirectCache() {
    }

    public static void cacheUriRedirect(Uri uri, Uri uri2) {
        OutputStream outputStream;
        if (uri == null || uri2 == null) {
            return;
        }
        OutputStream outputStream2 = null;
        OutputStream outputStream3 = null;
        try {
            outputStream = getCache().openPutStream(uri.toString(), REDIRECT_CONTENT_TAG);
            outputStream3 = outputStream;
            outputStream2 = outputStream;
            outputStream.write(uri2.toString().getBytes());
        } catch (IOException e) {
            outputStream = outputStream2;
        } catch (Throwable th) {
            Utility.closeQuietly(outputStream3);
            throw th;
        }
        Utility.closeQuietly(outputStream);
    }

    public static void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e) {
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            Logger.log(loggingBehavior, 5, str, "clearCache failed " + e.getMessage());
        }
    }

    static FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            try {
                if (urlRedirectCache == null) {
                    urlRedirectCache = new FileLruCache(TAG, new FileLruCache.Limits());
                }
                fileLruCache = urlRedirectCache;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileLruCache;
    }

    public static Uri getRedirectedUri(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        FileLruCache cache;
        InputStreamReader inputStreamReader2;
        boolean z;
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        try {
            cache = getCache();
            inputStreamReader2 = null;
            z = false;
        } catch (IOException e) {
            inputStreamReader = null;
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader = null;
        }
        while (true) {
            try {
                InputStream inputStream = cache.get(uri2, REDIRECT_CONTENT_TAG);
                if (inputStream == null) {
                    break;
                }
                z = true;
                inputStreamReader = new InputStreamReader(inputStream);
                try {
                    char[] cArr = new char[128];
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int read = inputStreamReader.read(cArr, 0, 128);
                        if (read <= 0) {
                            break;
                        }
                        sb.append(cArr, 0, read);
                    }
                    Utility.closeQuietly(inputStreamReader);
                    uri2 = sb.toString();
                    inputStreamReader2 = inputStreamReader;
                } catch (IOException e2) {
                } catch (Throwable th3) {
                    th = th3;
                    Utility.closeQuietly(inputStreamReader);
                    throw th;
                }
            } catch (IOException e3) {
                inputStreamReader = inputStreamReader2;
            } catch (Throwable th4) {
                InputStreamReader inputStreamReader3 = inputStreamReader2;
                th = th4;
                inputStreamReader = inputStreamReader3;
            }
            Utility.closeQuietly(inputStreamReader);
            return null;
        }
        inputStreamReader = inputStreamReader2;
        if (z) {
            Uri parse = Uri.parse(uri2);
            Utility.closeQuietly(inputStreamReader2);
            return parse;
        }
        Utility.closeQuietly(inputStreamReader);
        return null;
    }
}
