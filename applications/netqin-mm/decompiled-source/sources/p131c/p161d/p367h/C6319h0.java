package p131c.p161d.p367h;

import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.WireFormat;
import java.io.IOException;
/* renamed from: c.d.h.h0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/h0.class */
public class C6319h0<K, V> {

    /* renamed from: a */
    public final C6320a<K, V> f19925a;

    /* renamed from: b */
    public final K f19926b;

    /* renamed from: c */
    public final V f19927c;

    /* renamed from: c.d.h.h0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/h0$a.class */
    public static class C6320a<K, V> {

        /* renamed from: a */
        public final WireFormat.FieldType f19928a;

        /* renamed from: b */
        public final K f19929b;

        /* renamed from: c */
        public final WireFormat.FieldType f19930c;

        /* renamed from: d */
        public final V f19931d;

        public C6320a(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
            this.f19928a = fieldType;
            this.f19929b = k;
            this.f19930c = fieldType2;
            this.f19931d = v;
        }
    }

    public C6319h0(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        this.f19925a = new C6320a<>(fieldType, k, fieldType2, v);
        this.f19926b = k;
        this.f19927c = v;
    }

    /* renamed from: a */
    public static <K, V> int m21478a(C6320a<K, V> aVar, K k, V v) {
        return C6371u.m21062a(aVar.f19928a, 1, k) + C6371u.m21062a(aVar.f19930c, 2, v);
    }

    /* renamed from: a */
    public static <K, V> C6319h0<K, V> m21476a(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        return new C6319h0<>(fieldType, k, fieldType2, v);
    }

    /* renamed from: a */
    public static <K, V> void m21477a(CodedOutputStream codedOutputStream, C6320a<K, V> aVar, K k, V v) throws IOException {
        C6371u.m21064a(codedOutputStream, aVar.f19928a, 1, k);
        C6371u.m21064a(codedOutputStream, aVar.f19930c, 2, v);
    }

    /* renamed from: a */
    public int m21479a(int i, K k, V v) {
        return CodedOutputStream.m7007o(i) + CodedOutputStream.m7019j(m21478a(this.f19925a, k, v));
    }

    /* renamed from: a */
    public C6320a<K, V> m21480a() {
        return this.f19925a;
    }
}
