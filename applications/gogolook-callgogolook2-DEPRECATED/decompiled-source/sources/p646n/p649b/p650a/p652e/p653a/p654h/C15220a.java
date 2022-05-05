package p646n.p649b.p650a.p652e.p653a.p654h;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p203i.p383d.C10083d;
/* renamed from: n.b.a.e.a.h.a */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/h/a.class */
public final class C15220a extends C10083d {
    /* renamed from: a */
    public static C15220a m175a(ByteBuffer byteBuffer, C15220a aVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        aVar.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
        return aVar;
    }

    /* renamed from: a */
    public static boolean m176a(ByteBuffer byteBuffer) {
        return C10083d.__has_identifier(byteBuffer, "M001");
    }

    /* renamed from: b */
    public static C15220a m172b(ByteBuffer byteBuffer) {
        C15220a aVar = new C15220a();
        m175a(byteBuffer, aVar);
        return aVar;
    }

    public C15220a __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: a */
    public String m178a() {
        int __offset = __offset(6);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    /* renamed from: a */
    public C15221b m177a(int i) {
        return m174a(new C15221b(), i);
    }

    /* renamed from: a */
    public C15221b m174a(C15221b bVar, int i) {
        int __offset = __offset(10);
        if (__offset != 0) {
            bVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            bVar = null;
        }
        return bVar;
    }

    /* renamed from: b */
    public String m173b() {
        int __offset = __offset(18);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    /* renamed from: c */
    public int m171c() {
        int __offset = __offset(10);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }
}
