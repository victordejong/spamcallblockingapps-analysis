package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g23.class */
public final class g23<P> {

    /* renamed from: a */
    private final ConcurrentMap<f23, List<d23<P>>> f23227a = new ConcurrentHashMap();

    /* renamed from: b */
    private d23<P> f23228b;

    /* renamed from: c */
    private final Class<P> f23229c;

    private g23(Class<P> cls) {
        this.f23229c = cls;
    }

    /* renamed from: b */
    public static <P> g23<P> m14994b(Class<P> cls) {
        return new g23<>(cls);
    }

    /* renamed from: a */
    public final d23<P> m14995a() {
        return this.f23228b;
    }

    /* renamed from: c */
    public final void m14993c(d23<P> d23Var) {
        if (d23Var.m15956c() == 3) {
            List<d23<P>> list = this.f23227a.get(new f23(d23Var.m15957b(), null));
            List<d23<P>> list2 = list;
            if (list == null) {
                list2 = Collections.emptyList();
            }
            if (list2.isEmpty()) {
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            this.f23228b = d23Var;
            return;
        }
        throw new IllegalArgumentException("the primary entry has to be ENABLED");
    }

    /* renamed from: d */
    public final d23<P> m14992d(P p, l93 l93Var) {
        byte[] bArr;
        if (l93Var.m13660G() == 3) {
            int m13659H = l93Var.m13659H() - 2;
            if (m13659H != 1) {
                if (m13659H != 2) {
                    if (m13659H == 3) {
                        bArr = k13.f25056a;
                    } else if (m13659H != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                }
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(l93Var.m13662E()).array();
            } else {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(l93Var.m13662E()).array();
            }
            d23<P> d23Var = new d23<>(p, bArr, l93Var.m13660G(), l93Var.m13659H(), l93Var.m13662E());
            ArrayList arrayList = new ArrayList();
            arrayList.add(d23Var);
            f23 f23Var = new f23(d23Var.m15957b(), null);
            List<d23<P>> put = this.f23227a.put(f23Var, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(d23Var);
                this.f23227a.put(f23Var, Collections.unmodifiableList(arrayList2));
            }
            return d23Var;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    /* renamed from: e */
    public final Class<P> m14991e() {
        return this.f23229c;
    }
}
