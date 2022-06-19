package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.p077y.AbstractC1523c;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.pi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pi.class */
public final class C1890pi {
    @GuardedBy("InternalQueryInfoGenerator.class")

    /* renamed from: d */
    private static AbstractC1835ln f8123d;

    /* renamed from: a */
    private final Context f8124a;

    /* renamed from: b */
    private final AdFormat f8125b;

    /* renamed from: c */
    private final C1932s1 f8126c;

    public C1890pi(Context context, AdFormat adFormat, C1932s1 c1932s1) {
        this.f8124a = context;
        this.f8125b = adFormat;
        this.f8126c = c1932s1;
    }

    /* renamed from: a */
    public static AbstractC1835ln m6197a(Context context) {
        AbstractC1835ln abstractC1835ln;
        synchronized (C1890pi.class) {
            try {
                if (f8123d == null) {
                    f8123d = m03.m6635b().m6887g(context, new de());
                }
                abstractC1835ln = f8123d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC1835ln;
    }

    /* renamed from: b */
    public final void m6196b(AbstractC1523c abstractC1523c) {
        String str;
        AbstractC1835ln m6197a = m6197a(this.f8124a);
        if (m6197a == null) {
            str = "Internal Error, query info generator is null.";
        } else {
            AbstractC1632a g3 = b.g3(this.f8124a);
            C1932s1 c1932s1 = this.f8126c;
            try {
                m6197a.m6682I2(g3, new zzbak((String) null, this.f8125b.name(), (zzyx) null, c1932s1 == null ? new pz2().m6152a() : sz2.f8580a.m5551a(this.f8124a, c1932s1)), new ni(this, abstractC1523c));
                return;
            } catch (RemoteException e) {
                str = "Internal Error.";
            }
        }
        abstractC1523c.m8521a(str);
    }
}
