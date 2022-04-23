package p646n.p649b.p650a.p651d;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p203i.p383d.C10083d;
/* renamed from: n.b.a.d.c */
/* loaded from: classes3-dex2jar.jar:n/b/a/d/c.class */
public final class C15207c extends C10083d {
    /* renamed from: a */
    public static C15207c m236a(ByteBuffer byteBuffer, C15207c cVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        cVar.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
        return cVar;
    }

    /* renamed from: a */
    public static boolean m237a(ByteBuffer byteBuffer) {
        return C10083d.__has_identifier(byteBuffer, "TFL3");
    }

    /* renamed from: b */
    public static C15207c m230b(ByteBuffer byteBuffer) {
        C15207c cVar = new C15207c();
        m236a(byteBuffer, cVar);
        return cVar;
    }

    public C15207c __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: a */
    public int m239a() {
        int __offset = __offset(16);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    /* renamed from: a */
    public C15205a m238a(int i) {
        return m235a(new C15205a(), i);
    }

    /* renamed from: a */
    public C15205a m235a(C15205a aVar, int i) {
        int __offset = __offset(12);
        if (__offset != 0) {
            aVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            aVar = null;
        }
        return aVar;
    }

    /* renamed from: a */
    public C15206b m234a(C15206b bVar, int i) {
        int __offset = __offset(16);
        if (__offset != 0) {
            bVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            bVar = null;
        }
        return bVar;
    }

    /* renamed from: a */
    public C15208d m233a(C15208d dVar, int i) {
        int __offset = __offset(8);
        if (__offset != 0) {
            dVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            dVar = null;
        }
        return dVar;
    }

    /* renamed from: b */
    public int m232b() {
        int __offset = __offset(8);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    /* renamed from: b */
    public C15206b m231b(int i) {
        return m234a(new C15206b(), i);
    }

    /* renamed from: c */
    public C15208d m229c(int i) {
        return m233a(new C15208d(), i);
    }
}
