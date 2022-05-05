package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import n.h;
import n.i;
/* renamed from: com.squareup.picasso.f0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0.class */
final class C0185f0 {

    /* renamed from: a */
    static final StringBuilder f350a = new StringBuilder();

    /* renamed from: b */
    private static final i f351b = i.i("RIFF");

    /* renamed from: c */
    private static final i f352c = i.i("WEBP");

    /* renamed from: com.squareup.picasso.f0$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$a.class */
    static final class HandlerC0186a extends Handler {
        HandlerC0186a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* renamed from: com.squareup.picasso.f0$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$b.class */
    private static class C0187b extends Thread {
        C0187b(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* renamed from: com.squareup.picasso.f0$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$c.class */
    static class ThreadFactoryC0188c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0187b(runnable);
        }
    }

    /* renamed from: a */
    static long m793a(File file) {
        StatFs statFs = new StatFs(file.getAbsolutePath());
        int i = Build.VERSION.SDK_INT;
        return Math.max(Math.min(((i < 18 ? statFs.getBlockCount() : statFs.getBlockCountLong()) * (i < 18 ? statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50, 52428800L), 5242880L);
    }

    /* renamed from: b */
    static int m792b(Context context) {
        ActivityManager activityManager = (ActivityManager) m780n(context, "activity");
        return (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m791c() {
        if (!m777q()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static <T> T m790d(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: e */
    static File m789e(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static String m788f(C0204w wVar) {
        StringBuilder sb = f350a;
        String g = m787g(wVar, sb);
        sb.setLength(0);
        return g;
    }

    /* renamed from: g */
    static String m787g(C0204w wVar, StringBuilder sb) {
        String str = wVar.f404f;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(wVar.f404f);
        } else {
            Uri uri = wVar.f402d;
            if (uri != null) {
                String uri2 = uri.toString();
                sb.ensureCapacity(uri2.length() + 50);
                sb.append(uri2);
            } else {
                sb.ensureCapacity(50);
                sb.append(wVar.f403e);
            }
        }
        sb.append('\n');
        if (wVar.f412n != 0.0f) {
            sb.append("rotation:");
            sb.append(wVar.f412n);
            if (wVar.f415q) {
                sb.append('@');
                sb.append(wVar.f413o);
                sb.append('x');
                sb.append(wVar.f414p);
            }
            sb.append('\n');
        }
        if (wVar.m727c()) {
            sb.append("resize:");
            sb.append(wVar.f406h);
            sb.append('x');
            sb.append(wVar.f407i);
            sb.append('\n');
        }
        if (wVar.f408j) {
            sb.append("centerCrop:");
            sb.append(wVar.f409k);
            sb.append('\n');
        } else if (wVar.f410l) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<AbstractC0184e0> list = wVar.f405g;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(wVar.f405g.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m786h(Looper looper) {
        HandlerC0186a aVar = new HandlerC0186a(looper);
        aVar.sendMessageDelayed(aVar.obtainMessage(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m785i(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static String m784j(RunnableC0175c cVar) {
        return m783k(cVar, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static String m783k(RunnableC0175c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        AbstractC0169a h = cVar.m819h();
        if (h != null) {
            sb.append(h.f280b.m726d());
        }
        List<AbstractC0169a> i = cVar.m818i();
        if (i != null) {
            int size = i.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0 || h != null) {
                    sb.append(", ");
                }
                sb.append(i.get(i2).f280b.m726d());
            }
        }
        return sb.toString();
    }

    /* renamed from: l */
    static int m782l(Resources resources, C0204w wVar) throws FileNotFoundException {
        Uri uri;
        int i;
        int i2 = wVar.f403e;
        if (i2 != 0 || (uri = wVar.f402d) == null) {
            return i2;
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            List<String> pathSegments = wVar.f402d.getPathSegments();
            if (pathSegments == null || pathSegments.isEmpty()) {
                throw new FileNotFoundException("No path segments: " + wVar.f402d);
            }
            if (pathSegments.size() == 1) {
                i = Integer.parseInt(pathSegments.get(0));
            } else if (pathSegments.size() == 2) {
                i = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + wVar.f402d);
            }
            return i;
        }
        throw new FileNotFoundException("No package provided: " + wVar.f402d);
    }

    /* renamed from: m */
    static Resources m781m(Context context, C0204w wVar) throws FileNotFoundException {
        Uri uri;
        if (wVar.f403e != 0 || (uri = wVar.f402d) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            return context.getPackageManager().getResourcesForApplication(authority);
        }
        throw new FileNotFoundException("No package provided: " + wVar.f402d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static <T> T m780n(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static boolean m779o(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static boolean m778p(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = false;
        boolean z2 = false;
        if (Build.VERSION.SDK_INT < 17) {
            if (Settings.System.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                z2 = true;
            }
            return z2;
        }
        if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: q */
    static boolean m777q() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static boolean m776r(h hVar) throws IOException {
        return hVar.p0(0L, f351b) && hVar.p0(8L, f352c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static void m775s(String str, String str2, String str3) {
        m774t(str, str2, str3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static void m774t(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }
}
