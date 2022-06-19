package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dip;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfi.class */
public final class dfi {
    @Deprecated
    /* renamed from: a */
    public static dcq m16813a(dcz dczVar) throws GeneralSecurityException {
        byte[] bArr;
        ddm.m16847a((ddh) new dfh());
        Class<?> m16843a = ddm.m16843a((Class<?>) dcq.class);
        if (m16843a == null) {
            String valueOf = String.valueOf(dcq.class.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        ddq.m16824b(dczVar.f46953a);
        ddd dddVar = new ddd(m16843a);
        for (dip.C12363b c12363b : dczVar.f46953a.zziku) {
            if (c12363b.m16622b() == dii.ENABLED) {
                Object m16845a = ddm.m16845a(c12363b.m16623a(), m16843a);
                if (c12363b.m16622b() != dii.ENABLED) {
                    throw new GeneralSecurityException("only ENABLED key is allowed");
                }
                int i = dco.f46943a[c12363b.m16621c().ordinal()];
                if (i == 1 || i == 2) {
                    bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(c12363b.zziky).array();
                } else if (i == 3) {
                    bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(c12363b.zziky).array();
                } else if (i != 4) {
                    throw new GeneralSecurityException("unknown output prefix type");
                } else {
                    bArr = dcp.f46944a;
                }
                ddf<P> ddfVar = new ddf<>(m16845a, bArr, c12363b.m16622b(), c12363b.m16621c(), c12363b.zziky);
                ArrayList arrayList = new ArrayList();
                arrayList.add(ddfVar);
                ddi ddiVar = new ddi(ddfVar.m16851a());
                List list = (List) dddVar.f46969a.put(ddiVar, Collections.unmodifiableList(arrayList));
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(list);
                    arrayList2.add(ddfVar);
                    dddVar.f46969a.put(ddiVar, Collections.unmodifiableList(arrayList2));
                }
                if (c12363b.zziky != dczVar.f46953a.zzikt) {
                    continue;
                } else if (ddfVar.f46973b != dii.ENABLED) {
                    throw new IllegalArgumentException("the primary entry has to be ENABLED");
                } else {
                    List list2 = (List) dddVar.f46969a.get(new ddi(ddfVar.m16851a()));
                    if (list2 == null) {
                        list2 = Collections.emptyList();
                    }
                    if (list2.isEmpty()) {
                        throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
                    }
                    dddVar.f46970b = ddfVar;
                }
            }
        }
        return (dcq) ddm.m16848a(dddVar, dcq.class);
    }
}
