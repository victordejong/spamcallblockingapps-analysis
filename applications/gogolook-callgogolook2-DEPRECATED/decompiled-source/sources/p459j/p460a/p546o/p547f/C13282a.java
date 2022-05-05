package p459j.p460a.p546o.p547f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p203i.p383d.C10078a;
import p081h.p203i.p383d.C10079b;
import p081h.p203i.p383d.C10080c;
import p081h.p203i.p383d.C10083d;
/* renamed from: j.a.o.f.a */
/* loaded from: classes2-dex2jar.jar:j/a/o/f/a.class */
public final class C13282a extends C10083d {

    /* renamed from: j.a.o.f.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/f/a$a.class */
    public static final class C13283a extends C10078a {
        public C13283a __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public C13282a get(int i) {
            return get(new C13282a(), i);
        }

        public C13282a get(C13282a aVar, int i) {
            return aVar.__assign(C10083d.__indirect(__element(i), this.f22788bb), this.f22788bb);
        }
    }

    public static void ValidateVersion() {
        C10079b.m13451a();
    }

    public static void addClickUrl(C10080c cVar, int i) {
        cVar.m13430b(2, i, 0);
    }

    public static void addContentRes(C10080c cVar, int i) {
        cVar.m13430b(1, i, 0);
    }

    public static void addGfIssueNo(C10080c cVar, int i) {
        cVar.m13430b(3, i, 0);
    }

    public static void addTitleRes(C10080c cVar, int i) {
        cVar.m13430b(0, i, 0);
    }

    public static int createArticle(C10080c cVar, int i, int i2, int i3, int i4) {
        cVar.m13416h(4);
        addGfIssueNo(cVar, i4);
        addClickUrl(cVar, i3);
        addContentRes(cVar, i2);
        addTitleRes(cVar, i);
        return endArticle(cVar);
    }

    public static int endArticle(C10080c cVar) {
        return cVar.m13435b();
    }

    public static C13282a getRootAsArticle(ByteBuffer byteBuffer) {
        return getRootAsArticle(byteBuffer, new C13282a());
    }

    public static C13282a getRootAsArticle(ByteBuffer byteBuffer, C13282a aVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return aVar.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startArticle(C10080c cVar) {
        cVar.m13416h(4);
    }

    public C13282a __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public String clickUrl() {
        int __offset = __offset(8);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    public ByteBuffer clickUrlAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public ByteBuffer clickUrlInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 8, 1);
    }

    public String contentRes() {
        int __offset = __offset(6);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    public ByteBuffer contentResAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public ByteBuffer contentResInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 6, 1);
    }

    public String gfIssueNo() {
        int __offset = __offset(10);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    public ByteBuffer gfIssueNoAsByteBuffer() {
        return __vector_as_bytebuffer(10, 1);
    }

    public ByteBuffer gfIssueNoInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 10, 1);
    }

    public String titleRes() {
        int __offset = __offset(4);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    public ByteBuffer titleResAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public ByteBuffer titleResInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }
}
