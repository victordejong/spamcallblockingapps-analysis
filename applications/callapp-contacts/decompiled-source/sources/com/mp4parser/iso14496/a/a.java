package com.mp4parser.iso14496.a;

import com.b.a.d;
import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/a/a.class */
public class a extends c {

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f34920d = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;

    /* renamed from: a  reason: collision with root package name */
    private long[] f34921a = new long[0];

    /* renamed from: b  reason: collision with root package name */
    private String f34922b;

    /* renamed from: c  reason: collision with root package name */
    private String f34923c;

    static {
        c();
    }

    public a() {
        super("saio");
    }

    private static void c() {
        b bVar = new b("SampleAuxiliaryInformationOffsetsBox.java", a.class);
        f34920d = bVar.a("method-execution", bVar.a("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 107);
        e = bVar.a("method-execution", bVar.a("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        f = bVar.a("method-execution", bVar.a("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 115);
        g = bVar.a("method-execution", bVar.a("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        h = bVar.a("method-execution", bVar.a("1", "getOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "[J"), 123);
        i = bVar.a("method-execution", bVar.a("1", "setOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "[J", "offsets", "", "void"), 127);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if ((i() & 1) == 1) {
            this.f34922b = e.h(byteBuffer);
            this.f34923c = e.h(byteBuffer);
        }
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f34921a = new long[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            if (h() == 0) {
                this.f34921a[i2] = e.a(byteBuffer);
            } else {
                this.f34921a[i2] = e.d(byteBuffer);
            }
        }
    }

    public final String a() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f34920d, this, this);
        h.a();
        h.a(a2);
        return this.f34922b;
    }

    public final void a(long[] jArr) {
        org.mp4parser.aspectj.lang.a a2 = b.a(i, this, this, jArr);
        h.a();
        h.a(a2);
        this.f34921a = jArr;
    }

    public final long[] b() {
        org.mp4parser.aspectj.lang.a a2 = b.a(h, this, this);
        h.a();
        h.a(a2);
        return this.f34921a;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        if ((i() & 1) == 1) {
            byteBuffer.put(d.a(this.f34922b));
            byteBuffer.put(d.a(this.f34923c));
        }
        f.b(byteBuffer, this.f34921a.length);
        for (long j : this.f34921a) {
            Long valueOf = Long.valueOf(j);
            if (h() == 0) {
                f.b(byteBuffer, valueOf.longValue());
            } else {
                f.a(byteBuffer, valueOf.longValue());
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        int i2 = 8;
        int length = h() == 0 ? this.f34921a.length * 4 : this.f34921a.length * 8;
        if ((i() & 1) != 1) {
            i2 = 0;
        }
        return length + 8 + i2;
    }
}
