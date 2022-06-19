package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.dp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dp.class */
public class C3884dp {

    /* renamed from: c */
    private static volatile C3884dp f18002c;

    /* renamed from: d */
    private static volatile C3884dp f18003d;

    /* renamed from: f */
    private final Map<C3885a, AbstractC3900ed.C3906f<?, ?>> f18005f;

    /* renamed from: a */
    private static volatile boolean f18000a = false;

    /* renamed from: b */
    private static boolean f18001b = true;

    /* renamed from: e */
    private static final C3884dp f18004e = new C3884dp(true);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.dp$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dp$a.class */
    public static final class C3885a {

        /* renamed from: a */
        private final Object f18006a;

        /* renamed from: b */
        private final int f18007b;

        C3885a(Object obj, int i) {
            this.f18006a = obj;
            this.f18007b = i;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (!(obj instanceof C3885a)) {
                z = false;
            } else {
                C3885a c3885a = (C3885a) obj;
                z = false;
                if (this.f18006a == c3885a.f18006a) {
                    z = false;
                    if (this.f18007b == c3885a.f18007b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f18006a) * 65535) + this.f18007b;
        }
    }

    C3884dp() {
        this.f18005f = new HashMap();
    }

    private C3884dp(boolean z) {
        this.f18005f = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C3884dp m5694a() {
        C3884dp c3884dp = f18002c;
        C3884dp c3884dp2 = c3884dp;
        if (c3884dp == null) {
            synchronized (C3884dp.class) {
                try {
                    C3884dp c3884dp3 = f18002c;
                    c3884dp2 = c3884dp3;
                    if (c3884dp3 == null) {
                        c3884dp2 = f18004e;
                        f18002c = c3884dp2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c3884dp2;
    }

    /* renamed from: b */
    public static C3884dp m5692b() {
        C3884dp c3884dp = f18003d;
        if (c3884dp == null) {
            synchronized (C3884dp.class) {
                try {
                    c3884dp = f18003d;
                    if (c3884dp == null) {
                        c3884dp = AbstractC3898eb.m5656a(C3884dp.class);
                        f18003d = c3884dp;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c3884dp;
    }

    /* renamed from: a */
    public final <ContainingType extends AbstractC3943fn> AbstractC3900ed.C3906f<ContainingType, ?> m5693a(ContainingType containingtype, int i) {
        return (AbstractC3900ed.C3906f<ContainingType, ?>) this.f18005f.get(new C3885a(containingtype, i));
    }
}
