package p459j.p460a.p546o.p547f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p203i.p383d.C10078a;
import p081h.p203i.p383d.C10079b;
import p081h.p203i.p383d.C10080c;
import p081h.p203i.p383d.C10083d;
import p459j.p460a.p546o.p547f.C13282a;
/* renamed from: j.a.o.f.b */
/* loaded from: classes2-dex2jar.jar:j/a/o/f/b.class */
public final class C13284b extends C10083d {

    /* renamed from: j.a.o.f.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/f/b$a.class */
    public static final class C13285a extends C10078a {
        public C13285a __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public C13284b get(int i) {
            return get(new C13284b(), i);
        }

        public C13284b get(C13284b bVar, int i) {
            return bVar.__assign(C10083d.__indirect(__element(i), this.f22788bb), this.f22788bb);
        }
    }

    public static void ValidateVersion() {
        C10079b.m13451a();
    }

    public static void addArticles(C10080c cVar, int i) {
        cVar.m13430b(1, i, 0);
    }

    public static void addNameRes(C10080c cVar, int i) {
        cVar.m13430b(0, i, 0);
    }

    public static int createArticlesVector(C10080c cVar, int[] iArr) {
        cVar.m13424c(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            cVar.m13432b(iArr[length]);
        }
        return cVar.m13426c();
    }

    public static int createCategory(C10080c cVar, int i, int i2) {
        cVar.m13416h(2);
        addArticles(cVar, i2);
        addNameRes(cVar, i);
        return endCategory(cVar);
    }

    public static int endCategory(C10080c cVar) {
        return cVar.m13435b();
    }

    public static C13284b getRootAsCategory(ByteBuffer byteBuffer) {
        return getRootAsCategory(byteBuffer, new C13284b());
    }

    public static C13284b getRootAsCategory(ByteBuffer byteBuffer, C13284b bVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return bVar.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startArticlesVector(C10080c cVar, int i) {
        cVar.m13424c(4, i, 4);
    }

    public static void startCategory(C10080c cVar) {
        cVar.m13416h(2);
    }

    public C13284b __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public C13282a articles(int i) {
        return articles(new C13282a(), i);
    }

    public C13282a articles(C13282a aVar, int i) {
        int __offset = __offset(6);
        return __offset != 0 ? aVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb) : null;
    }

    public int articlesLength() {
        int __offset = __offset(6);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    public C13282a.C13283a articlesVector() {
        return articlesVector(new C13282a.C13283a());
    }

    public C13282a.C13283a articlesVector(C13282a.C13283a aVar) {
        int __offset = __offset(6);
        return __offset != 0 ? aVar.__assign(__vector(__offset), 4, this.f22804bb) : null;
    }

    public String nameRes() {
        int __offset = __offset(4);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    public ByteBuffer nameResAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public ByteBuffer nameResInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }
}
