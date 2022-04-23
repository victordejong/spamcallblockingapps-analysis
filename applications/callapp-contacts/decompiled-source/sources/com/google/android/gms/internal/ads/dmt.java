package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmt.class */
public class dmt {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f26969a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f26970b = true;

    /* renamed from: c  reason: collision with root package name */
    private static volatile dmt f26971c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile dmt f26972d;
    private static final dmt e = new dmt(true);
    private final Map<a, dnh.e<?, ?>> f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmt$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f26973a;

        /* renamed from: b  reason: collision with root package name */
        private final int f26974b;

        a(Object obj, int i) {
            this.f26973a = obj;
            this.f26974b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f26973a == aVar.f26973a && this.f26974b == aVar.f26974b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f26973a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f26974b;
        }
    }

    dmt() {
        this.f = new HashMap();
    }

    private dmt(boolean z) {
        this.f = Collections.emptyMap();
    }

    public static dmt a() {
        dmt dmtVar = f26971c;
        dmt dmtVar2 = dmtVar;
        if (dmtVar == null) {
            synchronized (dmt.class) {
                try {
                    dmt dmtVar3 = f26971c;
                    dmtVar2 = dmtVar3;
                    if (dmtVar3 == null) {
                        dmtVar2 = e;
                        f26971c = dmtVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dmtVar2;
    }

    public static dmt b() {
        dmt dmtVar = f26972d;
        if (dmtVar != null) {
            return dmtVar;
        }
        synchronized (dmt.class) {
            try {
                dmt dmtVar2 = f26972d;
                if (dmtVar2 != null) {
                    return dmtVar2;
                }
                dmt a2 = dne.a(dmt.class);
                f26972d = a2;
                return a2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends dot> dnh.e<ContainingType, ?> a(ContainingType containingtype, int i) {
        return (dnh.e<ContainingType, ?>) this.f.get(new a(containingtype, i));
    }
}
