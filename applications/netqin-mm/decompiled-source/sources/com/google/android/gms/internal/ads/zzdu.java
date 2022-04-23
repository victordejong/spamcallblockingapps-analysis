package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzbw;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4196wz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdu.class */
public class zzdu {

    /* renamed from: c */
    public static final ConditionVariable f27830c = new ConditionVariable();

    /* renamed from: d */
    public static volatile zztx f27831d = null;

    /* renamed from: e */
    public static volatile Random f27832e = null;

    /* renamed from: a */
    public zzex f27833a;

    /* renamed from: b */
    public volatile Boolean f27834b;

    public zzdu(zzex zzexVar) {
        this.f27833a = zzexVar;
        zzexVar.m12160e().execute(new RunnableC4196wz(this));
    }

    /* renamed from: a */
    public static int m13182a() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : m13177b().nextInt();
        } catch (RuntimeException e) {
            return m13177b().nextInt();
        }
    }

    /* renamed from: b */
    public static Random m13177b() {
        if (f27832e == null) {
            synchronized (zzdu.class) {
                try {
                    if (f27832e == null) {
                        f27832e = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f27832e;
    }

    /* renamed from: a */
    public final void m13181a(int i, int i2, long j) {
        m13179a(i, i2, j, null, null);
    }

    /* renamed from: a */
    public final void m13180a(int i, int i2, long j, String str) {
        m13179a(i, -1, j, str, null);
    }

    /* renamed from: a */
    public final void m13179a(int i, int i2, long j, String str, Exception exc) {
        try {
            f27830c.block();
            if (this.f27834b.booleanValue() && f27831d != null) {
                zzbw.zza.C10490zza m = zzbw.zza.m14994m();
                m.m14990a(this.f27833a.f28157a.getPackageName());
                m.m14992a(j);
                if (str != null) {
                    m.m14987d(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    zzehy.m12543a(exc, new PrintWriter(stringWriter));
                    m.m14989b(stringWriter.toString());
                    m.m14988c(exc.getClass().getName());
                }
                zzub a = f27831d.m11418a(((zzbw.zza) ((zzejz) m.mo12342K())).mo12349c());
                a.m11208b(i);
                if (i2 != -1) {
                    a.m11209a(i2);
                }
                a.m11210a();
            }
        } catch (Exception e) {
        }
    }
}
