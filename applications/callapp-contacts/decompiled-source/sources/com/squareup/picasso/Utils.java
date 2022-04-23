package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.ContentResolver;
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
import android.support.v4.media.session.PlaybackStateCompat;
import c.h;
import c.i;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Utils.class */
public final class Utils {
    private static final int KEY_PADDING = 50;
    static final char KEY_SEPARATOR = '\n';
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
    static final StringBuilder MAIN_THREAD_KEY_BUILDER = new StringBuilder();
    private static final i WEBP_FILE_HEADER_RIFF = i.b("RIFF");
    private static final i WEBP_FILE_HEADER_WEBP = i.b("WEBP");

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Utils$PicassoThread.class */
    static class PicassoThread extends Thread {
        PicassoThread(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Utils$PicassoThreadFactory.class */
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
            j = ((Build.VERSION.SDK_INT < 18 ? statFs.getBlockCount() : statFs.getBlockCountLong()) * (Build.VERSION.SDK_INT < 18 ? statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50;
        } catch (IllegalArgumentException e) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateMemoryCacheSize(Context context) {
        ActivityManager activityManager = (ActivityManager) getService(context, "activity");
        return (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) / 7);
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
        Objects.requireNonNull(t, str);
        return t;
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
    public static String createKey(Request request) {
        StringBuilder sb = MAIN_THREAD_KEY_BUILDER;
        String createKey = createKey(request, sb);
        sb.setLength(0);
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
        if (request.rotationDegrees != BitmapDescriptorFactory.HUE_RED) {
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
            sb.append("centerCrop:");
            sb.append(request.centerCropGravity);
            sb.append('\n');
        } else if (request.centerInside) {
            sb.append("centerInside\n");
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
            public final void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getBitmapBytes(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: ".concat(String.valueOf(bitmap)));
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
        if (authority != null) {
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
        throw new FileNotFoundException("No package provided: " + request.uri);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Resources getResources(Context context, Request request) throws FileNotFoundException {
        if (request.resourceId != 0 || request.uri == null) {
            return context.getResources();
        }
        String authority = request.uri.getAuthority();
        if (authority != null) {
            try {
                return context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException e) {
                throw new FileNotFoundException("Unable to obtain resources for package: " + request.uri);
            }
        } else {
            throw new FileNotFoundException("No package provided: " + request.uri);
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
        ContentResolver contentResolver = context.getContentResolver();
        try {
            return Build.VERSION.SDK_INT < 17 ? Settings.System.getInt(contentResolver, "airplane_mode_on", 0) != 0 : Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) != 0;
        } catch (NullPointerException | SecurityException e) {
            return false;
        }
    }

    static boolean isMain() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isWebPFile(h hVar) throws IOException {
        return hVar.a(0L, WEBP_FILE_HEADER_RIFF) && hVar.a(8L, WEBP_FILE_HEADER_WEBP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void log(String str, String str2, String str3) {
        log(str, str2, str3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void log(String str, String str2, String str3, String str4) {
        String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4);
    }
}
