package com.squareup.picasso;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import com.apptentive.android.sdk.ApptentiveNotifications;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Utils.class */
public final class Utils {
    static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 15000;
    static final int DEFAULT_READ_TIMEOUT_MILLIS = 20000;
    static final int DEFAULT_WRITE_TIMEOUT_MILLIS = 20000;
    private static final int KEY_PADDING = 50;
    static final char KEY_SEPARATOR = '\n';
    static final StringBuilder MAIN_THREAD_KEY_BUILDER = new StringBuilder();
    private static final int MAX_DISK_CACHE_SIZE = 52428800;
    private static final int MIN_DISK_CACHE_SIZE = 5242880;
    static final String OWNER_DISPATCHER = "Dispatcher";
    static final String OWNER_HUNTER = "Hunter";
    static final String OWNER_MAIN = "Main";
    private static final String PICASSO_CACHE = "picasso-cache";
    static final String THREAD_IDLE_NAME = "Picasso-Idle";
    static final int THREAD_LEAK_CLEANING_MS = 1000;
    static final String THREAD_PREFIX = "Picasso-";
    static final String VERB_BATCHED = "batched";
    static final String VERB_CANCELED = "canceled";
    static final String VERB_CHANGED = "changed";
    static final String VERB_COMPLETED = "completed";
    static final String VERB_CREATED = "created";
    static final String VERB_DECODED = "decoded";
    static final String VERB_DELIVERED = "delivered";
    static final String VERB_ENQUEUED = "enqueued";
    static final String VERB_ERRORED = "errored";
    static final String VERB_EXECUTING = "executing";
    static final String VERB_IGNORED = "ignored";
    static final String VERB_JOINED = "joined";
    static final String VERB_PAUSED = "paused";
    static final String VERB_REMOVED = "removed";
    static final String VERB_REPLAYING = "replaying";
    static final String VERB_RESUMED = "resumed";
    static final String VERB_RETRYING = "retrying";
    static final String VERB_TRANSFORMED = "transformed";
    private static final String WEBP_FILE_HEADER_RIFF = "RIFF";
    private static final int WEBP_FILE_HEADER_SIZE = 12;
    private static final String WEBP_FILE_HEADER_WEBP = "WEBP";

    @TargetApi(11)
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Utils$ActivityManagerHoneycomb.class */
    private static class ActivityManagerHoneycomb {
        private ActivityManagerHoneycomb() {
        }

        static int getLargeMemoryClass(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    @TargetApi(12)
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Utils$BitmapHoneycombMR1.class */
    private static class BitmapHoneycombMR1 {
        private BitmapHoneycombMR1() {
        }

        static int getByteCount(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Utils$OkHttpLoaderCreator.class */
    private static class OkHttpLoaderCreator {
        private OkHttpLoaderCreator() {
        }

        static Downloader create(Context context) {
            return new OkHttpDownloader(context);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Utils$PicassoThread.class */
    private static class PicassoThread extends Thread {
        public PicassoThread(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Utils$PicassoThreadFactory.class */
    static class PicassoThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new PicassoThread(runnable);
        }
    }

    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long calculateDiskCacheSize(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException e) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateMemoryCacheSize(Context context) {
        ActivityManager activityManager = (ActivityManager) getService(context, ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY);
        boolean z = (context.getApplicationInfo().flags & 1048576) != 0;
        int memoryClass = activityManager.getMemoryClass();
        int i = memoryClass;
        if (z) {
            i = memoryClass;
            if (Build.VERSION.SDK_INT >= 11) {
                i = ActivityManagerHoneycomb.getLargeMemoryClass(activityManager);
            }
        }
        return (i * 1048576) / 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkMain() {
        if (!isMain()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNotMain() {
        if (isMain()) {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeQuietly(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File createDefaultCacheDir(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), PICASSO_CACHE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Downloader createDefaultDownloader(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return OkHttpLoaderCreator.create(context);
        } catch (ClassNotFoundException e) {
            return new UrlConnectionDownloader(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String createKey(Request request) {
        String createKey = createKey(request, MAIN_THREAD_KEY_BUILDER);
        MAIN_THREAD_KEY_BUILDER.setLength(0);
        return createKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String createKey(Request request, StringBuilder sb) {
        if (request.stableKey != null) {
            sb.ensureCapacity(request.stableKey.length() + 50);
            sb.append(request.stableKey);
        } else if (request.uri != null) {
            String uri = request.uri.toString();
            sb.ensureCapacity(uri.length() + 50);
            sb.append(uri);
        } else {
            sb.ensureCapacity(50);
            sb.append(request.resourceId);
        }
        sb.append('\n');
        if (request.rotationDegrees != 0.0f) {
            sb.append("rotation:");
            sb.append(request.rotationDegrees);
            if (request.hasRotationPivot) {
                sb.append('@');
                sb.append(request.rotationPivotX);
                sb.append('x');
                sb.append(request.rotationPivotY);
            }
            sb.append('\n');
        }
        if (request.hasSize()) {
            sb.append("resize:");
            sb.append(request.targetWidth);
            sb.append('x');
            sb.append(request.targetHeight);
            sb.append('\n');
        }
        if (request.centerCrop) {
            sb.append("centerCrop");
            sb.append('\n');
        } else if (request.centerInside) {
            sb.append("centerInside");
            sb.append('\n');
        }
        if (request.transformations != null) {
            int size = request.transformations.size();
            for (int i = 0; i < size; i++) {
                sb.append(request.transformations.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void flushStackLocalLeaks(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.squareup.picasso.Utils.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getBitmapBytes(Bitmap bitmap) {
        int byteCount = Build.VERSION.SDK_INT >= 12 ? BitmapHoneycombMR1.getByteCount(bitmap) : bitmap.getRowBytes() * bitmap.getHeight();
        if (byteCount >= 0) {
            return byteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getLogIdsForHunter(BitmapHunter bitmapHunter) {
        return getLogIdsForHunter(bitmapHunter, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getLogIdsForHunter(BitmapHunter bitmapHunter, String str) {
        StringBuilder sb = new StringBuilder(str);
        Action action = bitmapHunter.getAction();
        if (action != null) {
            sb.append(action.request.logId());
        }
        List<Action> actions = bitmapHunter.getActions();
        if (actions != null) {
            int size = actions.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || action != null) {
                    sb.append(", ");
                }
                sb.append(actions.get(i).request.logId());
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getResourceId(Resources resources, Request request) throws FileNotFoundException {
        int parseInt;
        if (request.resourceId != 0 || request.uri == null) {
            return request.resourceId;
        }
        String authority = request.uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + request.uri);
        }
        List<String> pathSegments = request.uri.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + request.uri);
        }
        if (pathSegments.size() == 1) {
            try {
                parseInt = Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException e) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + request.uri);
            }
        } else if (pathSegments.size() == 2) {
            parseInt = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        } else {
            throw new FileNotFoundException("More than two path segments: " + request.uri);
        }
        return parseInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Resources getResources(Context context, Request request) throws FileNotFoundException {
        if (request.resourceId != 0 || request.uri == null) {
            return context.getResources();
        }
        String authority = request.uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + request.uri);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException e) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + request.uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T getService(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAirplaneModeOn(Context context) {
        boolean z = false;
        try {
            if (Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0) {
                z = true;
            }
            return z;
        } catch (NullPointerException e) {
            return false;
        }
    }

    static boolean isMain() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isWebPFile(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        boolean z = false;
        if (inputStream.read(bArr, 0, 12) == 12) {
            z = false;
            if (WEBP_FILE_HEADER_RIFF.equals(new String(bArr, 0, 4, "US-ASCII"))) {
                z = false;
                if (WEBP_FILE_HEADER_WEBP.equals(new String(bArr, 8, 4, "US-ASCII"))) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void log(String str, String str2, String str3) {
        log(str, str2, str3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void log(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean parseResponseSourceHeader(String str) {
        if (str == null) {
            return false;
        }
        String[] split = str.split(" ", 2);
        if ("CACHE".equals(split[0])) {
            return true;
        }
        if (split.length == 1) {
            return false;
        }
        boolean z = false;
        try {
            if ("CONDITIONAL_CACHE".equals(split[0])) {
                z = false;
                if (Integer.parseInt(split[1]) == 304) {
                    z = true;
                }
            }
            return z;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}
