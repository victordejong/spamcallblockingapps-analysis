package com.google.protobuf;

import com.google.protobuf.WireFormat;
/* renamed from: com.google.protobuf.g0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/g0.class */
public class C2607g0<K, V> {

    /* renamed from: a */
    private final C2608a<K, V> f11100a;

    /* renamed from: b */
    private final K f11101b;

    /* renamed from: c */
    private final V f11102c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.g0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/g0$a.class */
    public static class C2608a<K, V> {

        /* renamed from: a */
        public final WireFormat.FieldType f11103a;

        /* renamed from: b */
        public final K f11104b;

        /* renamed from: c */
        public final WireFormat.FieldType f11105c;

        /* renamed from: d */
        public final V f11106d;

        public C2608a(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
            this.f11103a = fieldType;
            this.f11104b = k;
            this.f11105c = fieldType2;
            this.f11106d = v;
        }
    }

    private C2607g0(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        this.f11100a = new C2608a<>(fieldType, k, fieldType2, v);
        this.f11101b = k;
        this.f11102c = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <K, V> int m2728b(C2608a<K, V> aVar, K k, V v) {
        return C2655t.m2313d(aVar.f11103a, 1, k) + C2655t.m2313d(aVar.f11105c, 2, v);
    }

    /* renamed from: d */
    public static <K, V> C2607g0<K, V> m2726d(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        return new C2607g0<>(fieldType, k, fieldType2, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static <K, V> void m2725e(CodedOutputStream codedOutputStream, C2608a<K, V> aVar, K k, V v) {
        C2655t.m2291z(codedOutputStream, aVar.f11103a, 1, k);
        C2655t.m2291z(codedOutputStream, aVar.f11105c, 2, v);
    }

    /* renamed from: a */
    public int m2729a(int i, K k, V v) {
        return CodedOutputStream.m3119V(i) + CodedOutputStream.m3147D(m2728b(this.f11100a, k, v));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2608a<K, V> m2727c() {
        return this.f11100a;
    }
}
