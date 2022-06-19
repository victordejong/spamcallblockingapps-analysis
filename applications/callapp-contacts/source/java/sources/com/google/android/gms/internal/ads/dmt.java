package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmt.class */
public class dmt {

    /* renamed from: a */
    private static volatile boolean f47247a = false;

    /* renamed from: b */
    private static boolean f47248b = true;

    /* renamed from: c */
    private static volatile dmt f47249c;

    /* renamed from: d */
    private static volatile dmt f47250d;

    /* renamed from: e */
    private static final dmt f47251e = new dmt(true);

    /* renamed from: f */
    private final Map<C12380a, dnh.C12386e<?, ?>> f47252f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.dmt$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmt$a.class */
    public static final class C12380a {

        /* renamed from: a */
        private final Object f47253a;

        /* renamed from: b */
        private final int f47254b;

        C12380a(Object obj, int i) {
            this.f47253a = obj;
            this.f47254b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C12380a)) {
                return false;
            }
            C12380a c12380a = (C12380a) obj;
            return this.f47253a == c12380a.f47253a && this.f47254b == c12380a.f47254b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f47253a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f47254b;
        }
    }

    dmt() {
        this.f47252f = new HashMap();
    }

    private dmt(boolean z) {
        this.f47252f = Collections.emptyMap();
    }

    /* renamed from: a */
    public static dmt m16396a() {
        dmt dmtVar = f47249c;
        dmt dmtVar2 = dmtVar;
        if (dmtVar == null) {
            synchronized (dmt.class) {
                try {
                    dmt dmtVar3 = f47249c;
                    dmtVar2 = dmtVar3;
                    if (dmtVar3 == null) {
                        dmtVar2 = f47251e;
                        f47249c = dmtVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dmtVar2;
    }

    /* renamed from: b */
    public static dmt m16394b() {
        dmt dmtVar = f47250d;
        if (dmtVar != null) {
            return dmtVar;
        }
        synchronized (dmt.class) {
            try {
                dmt dmtVar2 = f47250d;
                if (dmtVar2 != null) {
                    return dmtVar2;
                }
                dmt m16356a = dne.m16356a(dmt.class);
                f47250d = m16356a;
                return m16356a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final <ContainingType extends dot> dnh.C12386e<ContainingType, ?> m16395a(ContainingType containingtype, int i) {
        return (dnh.C12386e<ContainingType, ?>) this.f47252f.get(new C12380a(containingtype, i));
    }
}
