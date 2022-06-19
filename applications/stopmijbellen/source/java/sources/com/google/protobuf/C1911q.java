package com.google.protobuf;

import java.io.IOException;
import p287x6.EnumC4898c0;
/* renamed from: com.google.protobuf.q */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/q.class */
public class C1911q<K, V> {

    /* renamed from: a */
    public final C1912a<K, V> f7104a;

    /* renamed from: b */
    public final K f7105b;

    /* renamed from: c */
    public final V f7106c;

    /* renamed from: com.google.protobuf.q$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/q$a.class */
    public static class C1912a<K, V> {

        /* renamed from: a */
        public final EnumC4898c0 f7107a;

        /* renamed from: b */
        public final K f7108b;

        /* renamed from: c */
        public final EnumC4898c0 f7109c;

        /* renamed from: d */
        public final V f7110d;

        public C1912a(EnumC4898c0 enumC4898c0, K k, EnumC4898c0 enumC4898c02, V v) {
            this.f7107a = enumC4898c0;
            this.f7108b = k;
            this.f7109c = enumC4898c02;
            this.f7110d = v;
        }
    }

    public C1911q(EnumC4898c0 enumC4898c0, K k, EnumC4898c0 enumC4898c02, V v) {
        this.f7104a = new C1912a<>(enumC4898c0, k, enumC4898c02, v);
        this.f7105b = k;
        this.f7106c = v;
    }

    /* renamed from: a */
    public static <K, V> int m4251a(C1912a<K, V> c1912a, K k, V v) {
        return C1886h.m4307c(c1912a.f7109c, 2, v) + C1886h.m4307c(c1912a.f7107a, 1, k);
    }

    /* renamed from: b */
    public static <K, V> void m4250b(CodedOutputStream codedOutputStream, C1912a<K, V> c1912a, K k, V v) throws IOException {
        C1886h.m4294p(codedOutputStream, c1912a.f7107a, 1, k);
        C1886h.m4294p(codedOutputStream, c1912a.f7109c, 2, v);
    }
}
