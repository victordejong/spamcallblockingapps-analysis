package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.akn;
import com.google.android.gms.tasks.AbstractC4459a;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/clq.class */
public final class clq {

    /* renamed from: d */
    private static volatile akn.C2774a.EnumC2778c f13298d = akn.C2774a.EnumC2778c.UNKNOWN;

    /* renamed from: a */
    private final Context f13299a;

    /* renamed from: b */
    private final Executor f13300b;

    /* renamed from: c */
    private final AbstractC4469g<dwn> f13301c;

    private clq(Context context, Executor executor, AbstractC4469g<dwn> abstractC4469g) {
        this.f13299a = context;
        this.f13300b = executor;
        this.f13301c = abstractC4469g;
    }

    /* renamed from: a */
    public static clq m11080a(Context context, Executor executor) {
        return new clq(context, executor, C4473j.m3879a(executor, new Callable(context) { // from class: com.google.android.gms.internal.ads.cls

            /* renamed from: a */
            private final Context f13304a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13304a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return clq.m11081a(this.f13304a);
            }
        }));
    }

    /* renamed from: a */
    public static final /* synthetic */ dwn m11081a(Context context) {
        return new dwn(context, "GLAS", null);
    }

    /* renamed from: a */
    private final AbstractC4469g<Boolean> m11084a(int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        akn.C2774a.C2775a m13002a = akn.C2774a.m13018a().m13000a(this.f13299a.getPackageName()).m13002a(j);
        m13002a.m13001a(f13298d);
        if (exc != null) {
            m13002a.m12999b(cou.m10920c(exc)).m12998c(exc.getClass().getName());
        }
        if (str2 != null) {
            m13002a.m12997d(str2);
        }
        if (str != null) {
            m13002a.m12996e(str);
        }
        return this.f13301c.mo3900a(this.f13300b, new AbstractC4459a(m13002a, i) { // from class: com.google.android.gms.internal.ads.clr

            /* renamed from: a */
            private final akn.C2774a.C2775a f13302a;

            /* renamed from: b */
            private final int f13303b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13302a = m13002a;
                this.f13303b = i;
            }

            @Override // com.google.android.gms.tasks.AbstractC4459a
            /* renamed from: a */
            public final Object mo1911a(AbstractC4469g abstractC4469g) {
                return clq.m11079a(this.f13302a, this.f13303b, abstractC4469g);
            }
        });
    }

    /* renamed from: a */
    public static final /* synthetic */ Boolean m11079a(akn.C2774a.C2775a c2775a, int i, AbstractC4469g abstractC4469g) {
        Boolean bool;
        if (abstractC4469g.mo3894b()) {
            dws m8433a = ((dwn) abstractC4469g.mo3891d()).m8433a(((akn.C2774a) ((dcw) c2775a.mo9987g())).mo9984l());
            m8433a.m8430b(i);
            m8433a.m8432a();
            bool = true;
        } else {
            bool = false;
        }
        return bool;
    }

    /* renamed from: a */
    public static void m11078a(akn.C2774a.EnumC2778c enumC2778c) {
        f13298d = enumC2778c;
    }

    /* renamed from: a */
    public final AbstractC4469g<Boolean> m11086a(int i, long j) {
        return m11084a(i, j, null, null, null, null);
    }

    /* renamed from: a */
    public final AbstractC4469g<Boolean> m11085a(int i, long j, Exception exc) {
        return m11084a(i, j, exc, null, null, null);
    }

    /* renamed from: a */
    public final AbstractC4469g<Boolean> m11083a(int i, long j, String str, Map<String, String> map) {
        return m11084a(i, j, null, str, null, null);
    }

    /* renamed from: a */
    public final AbstractC4469g<Boolean> m11082a(int i, String str) {
        return m11084a(4007, 0L, null, null, null, str);
    }
}
