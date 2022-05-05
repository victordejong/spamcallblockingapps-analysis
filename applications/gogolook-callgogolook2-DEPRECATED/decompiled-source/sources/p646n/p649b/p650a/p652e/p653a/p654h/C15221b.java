package p646n.p649b.p650a.p652e.p653a.p654h;

import java.nio.ByteBuffer;
import p081h.p203i.p383d.C10083d;
/* renamed from: n.b.a.e.a.h.b */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/h/b.class */
public final class C15221b extends C10083d {
    public C15221b __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: a */
    public int m170a() {
        int __offset = __offset(8);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    /* renamed from: a */
    public C15222c m169a(int i) {
        return m168a(new C15222c(), i);
    }

    /* renamed from: a */
    public C15222c m168a(C15222c cVar, int i) {
        int __offset = __offset(8);
        if (__offset != 0) {
            cVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            cVar = null;
        }
        return cVar;
    }

    /* renamed from: b */
    public int m167b() {
        int __offset = __offset(10);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    /* renamed from: b */
    public C15222c m166b(int i) {
        return m165b(new C15222c(), i);
    }

    /* renamed from: b */
    public C15222c m165b(C15222c cVar, int i) {
        int __offset = __offset(10);
        if (__offset != 0) {
            cVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            cVar = null;
        }
        return cVar;
    }
}
