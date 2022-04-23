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
    public static dcq a(dcz dczVar) throws GeneralSecurityException {
        byte[] bArr;
        ddm.a((ddh) new dfh());
        Class<?> a2 = ddm.a((Class<?>) dcq.class);
        if (a2 == null) {
            String valueOf = String.valueOf(dcq.class.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        ddq.b(dczVar.f26734a);
        ddd dddVar = new ddd(a2);
        for (dip.b bVar : dczVar.f26734a.zziku) {
            if (bVar.b() == dii.ENABLED) {
                Object a3 = ddm.a(bVar.a(), a2);
                if (bVar.b() == dii.ENABLED) {
                    int i = dco.f26724a[bVar.c().ordinal()];
                    if (i == 1 || i == 2) {
                        bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(bVar.zziky).array();
                    } else if (i == 3) {
                        bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(bVar.zziky).array();
                    } else if (i == 4) {
                        bArr = dcp.f26725a;
                    } else {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                    ddf<P> ddfVar = new ddf<>(a3, bArr, bVar.b(), bVar.c(), bVar.zziky);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(ddfVar);
                    ddi ddiVar = new ddi(ddfVar.a());
                    List list = (List) dddVar.f26741a.put(ddiVar, Collections.unmodifiableList(arrayList));
                    if (list != null) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.addAll(list);
                        arrayList2.add(ddfVar);
                        dddVar.f26741a.put(ddiVar, Collections.unmodifiableList(arrayList2));
                    }
                    if (bVar.zziky != dczVar.f26734a.zzikt) {
                        continue;
                    } else if (ddfVar.f26745b == dii.ENABLED) {
                        List list2 = (List) dddVar.f26741a.get(new ddi(ddfVar.a()));
                        if (list2 == null) {
                            list2 = Collections.emptyList();
                        }
                        if (!list2.isEmpty()) {
                            dddVar.f26742b = ddfVar;
                        } else {
                            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
                        }
                    } else {
                        throw new IllegalArgumentException("the primary entry has to be ENABLED");
                    }
                } else {
                    throw new GeneralSecurityException("only ENABLED key is allowed");
                }
            }
        }
        return (dcq) ddm.a(dddVar, dcq.class);
    }
}
