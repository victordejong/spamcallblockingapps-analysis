package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dci.class */
public class dci {

    /* renamed from: c */
    private static volatile dci f13984c;

    /* renamed from: d */
    private static volatile dci f13985d;

    /* renamed from: f */
    private final Map<C2954a, dcw.C2958d<?, ?>> f13987f;

    /* renamed from: a */
    private static volatile boolean f13982a = false;

    /* renamed from: b */
    private static boolean f13983b = true;

    /* renamed from: e */
    private static final dci f13986e = new dci(true);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.dci$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dci$a.class */
    public static final class C2954a {

        /* renamed from: a */
        private final Object f13988a;

        /* renamed from: b */
        private final int f13989b;

        C2954a(Object obj, int i) {
            this.f13988a = obj;
            this.f13989b = i;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (!(obj instanceof C2954a)) {
                z = false;
            } else {
                C2954a c2954a = (C2954a) obj;
                z = false;
                if (this.f13988a == c2954a.f13988a) {
                    z = false;
                    if (this.f13989b == c2954a.f13989b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f13988a) * 65535) + this.f13989b;
        }
    }

    dci() {
        this.f13987f = new HashMap();
    }

    private dci(boolean z) {
        this.f13987f = Collections.emptyMap();
    }

    /* renamed from: a */
    public static dci m10138a() {
        dci dciVar = f13984c;
        dci dciVar2 = dciVar;
        if (dciVar == null) {
            synchronized (dci.class) {
                try {
                    dci dciVar3 = f13984c;
                    dciVar2 = dciVar3;
                    if (dciVar3 == null) {
                        dciVar2 = f13986e;
                        f13984c = dciVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dciVar2;
    }

    /* renamed from: b */
    public static dci m10136b() {
        dci dciVar = f13985d;
        if (dciVar == null) {
            synchronized (dci.class) {
                try {
                    dciVar = f13985d;
                    if (dciVar == null) {
                        dciVar = dcv.m10097a(dci.class);
                        f13985d = dciVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dciVar;
    }

    /* renamed from: a */
    public final <ContainingType extends deg> dcw.C2958d<ContainingType, ?> m10137a(ContainingType containingtype, int i) {
        return (dcw.C2958d<ContainingType, ?>) this.f13987f.get(new C2954a(containingtype, i));
    }
}
