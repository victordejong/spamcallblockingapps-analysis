package com.google.protobuf;

import com.google.protobuf.C2607g0;
import java.util.Map;
/* renamed from: com.google.protobuf.i0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/i0.class */
class C2619i0 implements AbstractC2611h0 {
    /* renamed from: i */
    private static <K, V> int m2614i(int i, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        C2607g0 g0Var = (C2607g0) obj2;
        int i2 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i2 += g0Var.m2729a(i, entry.getKey(), entry.getValue());
        }
        return i2;
    }

    /* renamed from: j */
    private static <K, V> MapFieldLite<K, V> m2613j(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) obj2;
        MapFieldLite<K, V> mapFieldLite3 = mapFieldLite;
        if (!mapFieldLite2.isEmpty()) {
            mapFieldLite3 = mapFieldLite;
            if (!mapFieldLite.isMutable()) {
                mapFieldLite3 = mapFieldLite.mutableCopy();
            }
            mapFieldLite3.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite3;
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: a */
    public Object mo2622a(Object obj, Object obj2) {
        return m2613j(obj, obj2);
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: b */
    public Object mo2621b(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: c */
    public int mo2620c(int i, Object obj, Object obj2) {
        return m2614i(i, obj, obj2);
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: d */
    public boolean mo2619d(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: e */
    public Object mo2618e(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: f */
    public C2607g0.C2608a<?, ?> mo2617f(Object obj) {
        return ((C2607g0) obj).m2727c();
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: g */
    public Map<?, ?> mo2616g(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.AbstractC2611h0
    /* renamed from: h */
    public Map<?, ?> mo2615h(Object obj) {
        return (MapFieldLite) obj;
    }
}
