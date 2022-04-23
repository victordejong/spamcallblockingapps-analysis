package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import com.google.common.collect.RegularImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.t70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejm.class */
public class zzejm {

    /* renamed from: b */
    public static volatile zzejm f28064b;

    /* renamed from: c */
    public static volatile zzejm f28065c;

    /* renamed from: d */
    public static final zzejm f28066d = new zzejm(true);

    /* renamed from: a */
    public final Map<C7263a, zzejz.zzf<?, ?>> f28067a;

    /* renamed from: com.google.android.gms.internal.ads.zzejm$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejm$a.class */
    public static final class C7263a {

        /* renamed from: a */
        public final Object f28068a;

        /* renamed from: b */
        public final int f28069b;

        public C7263a(Object obj, int i) {
            this.f28068a = obj;
            this.f28069b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C7263a)) {
                return false;
            }
            C7263a aVar = (C7263a) obj;
            return this.f28068a == aVar.f28068a && this.f28069b == aVar.f28069b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f28068a) * RegularImmutableMap.SHORT_MASK) + this.f28069b;
        }
    }

    public zzejm() {
        this.f28067a = new HashMap();
    }

    public zzejm(boolean z) {
        this.f28067a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static zzejm m12419a() {
        zzejm zzejmVar = f28064b;
        zzejm zzejmVar2 = zzejmVar;
        if (zzejmVar == null) {
            synchronized (zzejm.class) {
                try {
                    zzejm zzejmVar3 = f28064b;
                    zzejmVar2 = zzejmVar3;
                    if (zzejmVar3 == null) {
                        zzejmVar2 = f28066d;
                        f28064b = zzejmVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzejmVar2;
    }

    /* renamed from: b */
    public static zzejm m12417b() {
        zzejm zzejmVar = f28065c;
        if (zzejmVar != null) {
            return zzejmVar;
        }
        synchronized (zzejm.class) {
            try {
                zzejm zzejmVar2 = f28065c;
                if (zzejmVar2 != null) {
                    return zzejmVar2;
                }
                zzejm a = t70.m26326a(zzejm.class);
                f28065c = a;
                return a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final <ContainingType extends zzelj> zzejz.zzf<ContainingType, ?> m12418a(ContainingType containingtype, int i) {
        return (zzejz.zzf<ContainingType, ?>) this.f28067a.get(new C7263a(containingtype, i));
    }
}
