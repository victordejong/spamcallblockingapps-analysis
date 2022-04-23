package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.aut;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwd.class */
public class cwd {

    /* renamed from: b  reason: collision with root package name */
    protected volatile Boolean f26491b;

    /* renamed from: c  reason: collision with root package name */
    private dtg f26492c;

    /* renamed from: d  reason: collision with root package name */
    private static final ConditionVariable f26490d = new ConditionVariable();

    /* renamed from: a  reason: collision with root package name */
    protected static volatile ehq f26489a = null;
    private static volatile Random e = null;

    public cwd(dtg dtgVar) {
        this.f26492c = dtgVar;
        dtgVar.f27191b.execute(new cvd(this));
    }

    public static int a() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : c().nextInt();
        } catch (RuntimeException e2) {
            return c().nextInt();
        }
    }

    private static Random c() {
        if (e == null) {
            synchronized (cwd.class) {
                try {
                    if (e == null) {
                        e = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final void a(int i, int i2, long j) {
        a(i, i2, j, null, null);
    }

    public final void a(int i, int i2, long j, String str, Exception exc) {
        try {
            f26490d.block();
            if (this.f26491b.booleanValue() && f26489a != null) {
                aut.a.b a2 = aut.a.a().a(this.f26492c.f27190a.getPackageName()).a(j);
                if (str != null) {
                    a2.d(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    dlf.a(exc, new PrintWriter(stringWriter));
                    a2.b(stringWriter.toString()).c(exc.getClass().getName());
                }
                ehu a3 = f26489a.a(a2.f().g());
                a3.f27853b = i;
                if (i2 != -1) {
                    a3.f27852a = i2;
                }
                a3.a();
            }
        } catch (Exception e2) {
        }
    }

    public final void a(int i, long j, String str) {
        a(i, -1, j, str, null);
    }
}
