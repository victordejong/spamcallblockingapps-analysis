package p193e.p194a.p1114o5.p1115a2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StatFs;
import androidx.work.ListenableWorker;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1114o5.C19036h0;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
/* renamed from: e.a.o5.a2.d */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a2/d.class */
public final class C18940d extends AbstractC21765k {

    /* renamed from: b */
    public final String f53087b = "ImageCacheOptimizingWorkAction";

    /* renamed from: c */
    public final a<Context> f53088c;

    @Inject
    public C18940d(a<Context> aVar) {
        l.e(aVar, AnalyticsConstants.CONTEXT);
        this.f53088c = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        char c;
        char c2;
        boolean z;
        char c3;
        StatFs statFs;
        Context context = (Context) this.f53088c.get();
        synchronized (C19036h0.f53157a) {
            File cacheDir = context.getCacheDir();
            ?? m14218a = C19036h0.m14218a(new File(cacheDir, "webviewCacheChromiumStaging").getAbsolutePath()) + C19036h0.m14218a(new File(cacheDir, "webviewCacheChromium").getAbsolutePath()) + 0;
            String absolutePath = context.getFilesDir().getAbsolutePath();
            try {
                try {
                    c = new StatFs(absolutePath).getAvailableBytes();
                } catch (NoSuchMethodError e) {
                    c = statFs.getAvailableBlocks() * statFs.getBlockSize();
                }
                AssertionUtil.OnlyInDebug.isTrue(c >= 0, new String[0]);
            } catch (IllegalArgumentException e2) {
                C10480a.m26057J1(e2, "Failed to get available space for path " + absolutePath);
                c = 0;
            }
            try {
                c2 = C19036h0.m14218a(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).dataDir);
            } catch (PackageManager.NameNotFoundException e3) {
                AssertionUtil.OnlyInDebug.isTrue(false, new String[0]);
                c2 = 0;
            }
            AssertionUtil.OnlyInDebug.isTrue(c >= 0, new String[0]);
            AssertionUtil.OnlyInDebug.isTrue(c2 >= 0, new String[0]);
            long max = Math.max(Math.min(52428800L, (((float) (c + c2)) - 3.145728E7f) * 0.4f), 0L);
            AssertionUtil.OnlyInDebug.isTrue(max >= 0, new String[0]);
            char c4 = c2 - max;
            if (c4 <= 0 || m14218a <= 7340032) {
                z = false;
                c3 = m14218a;
            } else {
                c4 -= m14218a;
                z = true;
                c3 = 0;
            }
            boolean z2 = z;
            char c5 = c3;
            if (c4 > 0) {
                z2 = z;
                c5 = c3;
                if (!z) {
                    z2 = true;
                    c5 = 0;
                }
            }
            boolean z3 = true;
            if (z2) {
                z3 = c5 == 0;
            }
            AssertionUtil.OnlyInDebug.isTrue(z3, new String[0]);
            if (z2) {
                File cacheDir2 = context.getCacheDir();
                C12864a2.m22544n(new File(cacheDir2, "webviewCacheChromium"));
                C12864a2.m22544n(new File(cacheDir2, "webviewCacheChromiumStaging"));
            }
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f53087b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return true;
    }
}
