package p081h.p444n.p445a;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
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
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ThreadFactory;
import p645m.AbstractC15174e;
import p645m.C15175f;
/* renamed from: h.n.a.e0 */
/* loaded from: classes2-dex2jar.jar:h/n/a/e0.class */
public final class C10770e0 {

    /* renamed from: a */
    public static final StringBuilder f24590a = new StringBuilder();

    /* renamed from: b */
    public static final C15175f f24591b = C15175f.m336d("RIFF");

    /* renamed from: c */
    public static final C15175f f24592c = C15175f.m336d("WEBP");

    /* renamed from: h.n.a.e0$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/e0$a.class */
    public static final class HandlerC10771a extends Handler {
        public HandlerC10771a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* renamed from: h.n.a.e0$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/e0$b.class */
    public static class C10772b extends Thread {
        public C10772b(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* renamed from: h.n.a.e0$c */
    /* loaded from: classes2-dex2jar.jar:h/n/a/e0$c.class */
    public static class ThreadFactoryC10773c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C10772b(runnable);
        }
    }

    /* renamed from: a */
    public static int m10680a(Context context) {
        ActivityManager activityManager = (ActivityManager) m10678a(context, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        return (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * PsExtractor.MAX_SEARCH_LENGTH) / 7);
    }

    /* renamed from: a */
    public static int m10677a(Resources resources, C10811x xVar) throws FileNotFoundException {
        Uri uri;
        int parseInt;
        if (xVar.f24706e != 0 || (uri = xVar.f24705d) == null) {
            return xVar.f24706e;
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            List<String> pathSegments = xVar.f24705d.getPathSegments();
            if (pathSegments == null || pathSegments.isEmpty()) {
                throw new FileNotFoundException("No path segments: " + xVar.f24705d);
            }
            if (pathSegments.size() == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException("Last path segment is not a resource ID: " + xVar.f24705d);
                }
            } else if (pathSegments.size() == 2) {
                parseInt = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + xVar.f24705d);
            }
            return parseInt;
        }
        throw new FileNotFoundException("No package provided: " + xVar.f24705d);
    }

    /* renamed from: a */
    public static int m10676a(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    @TargetApi(18)
    /* renamed from: a */
    public static long m10670a(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = ((Build.VERSION.SDK_INT < 18 ? statFs.getBlockCount() : statFs.getBlockCountLong()) * (Build.VERSION.SDK_INT < 18 ? statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50;
        } catch (IllegalArgumentException e) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    /* renamed from: a */
    public static Resources m10679a(Context context, C10811x xVar) throws FileNotFoundException {
        Uri uri;
        if (xVar.f24706e != 0 || (uri = xVar.f24705d) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            try {
                return context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException e) {
                throw new FileNotFoundException("Unable to obtain resources for package: " + xVar.f24705d);
            }
        } else {
            throw new FileNotFoundException("No package provided: " + xVar.f24705d);
        }
    }

    /* renamed from: a */
    public static <T> T m10678a(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* renamed from: a */
    public static <T> T m10669a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static String m10674a(RunnableC10758c cVar) {
        return m10673a(cVar, "");
    }

    /* renamed from: a */
    public static String m10673a(RunnableC10758c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        AbstractC10751a c = cVar.m10698c();
        if (c != null) {
            sb.append(c.f24515b.m10586d());
        }
        List<AbstractC10751a> d = cVar.m10697d();
        if (d != null) {
            int size = d.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || c != null) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(d.get(i).f24515b.m10586d());
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m10672a(C10811x xVar) {
        String a = m10671a(xVar, f24590a);
        f24590a.setLength(0);
        return a;
    }

    /* renamed from: a */
    public static String m10671a(C10811x xVar, StringBuilder sb) {
        String str = xVar.f24707f;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(xVar.f24707f);
        } else {
            Uri uri = xVar.f24705d;
            if (uri != null) {
                String uri2 = uri.toString();
                sb.ensureCapacity(uri2.length() + 50);
                sb.append(uri2);
            } else {
                sb.ensureCapacity(50);
                sb.append(xVar.f24706e);
            }
        }
        sb.append('\n');
        if (xVar.f24715n != 0.0f) {
            sb.append("rotation:");
            sb.append(xVar.f24715n);
            if (xVar.f24718q) {
                sb.append('@');
                sb.append(xVar.f24716o);
                sb.append('x');
                sb.append(xVar.f24717p);
            }
            sb.append('\n');
        }
        if (xVar.m10587c()) {
            sb.append("resize:");
            sb.append(xVar.f24709h);
            sb.append('x');
            sb.append(xVar.f24710i);
            sb.append('\n');
        }
        if (xVar.f24711j) {
            sb.append("centerCrop:");
            sb.append(xVar.f24712k);
            sb.append('\n');
        } else if (xVar.f24713l) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<AbstractC10768d0> list = xVar.f24708g;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(xVar.f24708g.get(i).m10684a());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m10681a() {
        if (!m10665b()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    /* renamed from: a */
    public static void m10675a(Looper looper) {
        HandlerC10771a aVar = new HandlerC10771a(looper);
        aVar.sendMessageDelayed(aVar.obtainMessage(), 1000L);
    }

    /* renamed from: a */
    public static void m10668a(String str, String str2, String str3) {
        m10667a(str, str2, str3, "");
    }

    /* renamed from: a */
    public static void m10667a(String str, String str2, String str3, String str4) {
        String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4);
    }

    /* renamed from: a */
    public static boolean m10666a(AbstractC15174e eVar) throws IOException {
        return eVar.mo304a(0L, f24591b) && eVar.mo304a(8L, f24592c);
    }

    /* renamed from: b */
    public static File m10664b(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: b */
    public static boolean m10665b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: b */
    public static boolean m10663b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: c */
    public static boolean m10662c(Context context) {
        boolean z;
        ContentResolver contentResolver = context.getContentResolver();
        boolean z2 = false;
        try {
        } catch (NullPointerException | SecurityException e) {
            z = false;
        }
        if (Build.VERSION.SDK_INT < 17) {
            if (Settings.System.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                z2 = true;
            }
            return z2;
        }
        z = false;
        if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
            z = true;
        }
        return z;
    }
}
