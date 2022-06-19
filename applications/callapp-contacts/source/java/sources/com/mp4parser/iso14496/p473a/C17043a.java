package com.mp4parser.iso14496.p473a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.mp4parser.iso14496.a.a */
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/a/a.class */
public class C17043a extends AbstractC16280c {

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f60516d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f60517e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f60518f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f60519g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f60520h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f60521i = null;

    /* renamed from: a */
    private long[] f60522a = new long[0];

    /* renamed from: b */
    private String f60523b;

    /* renamed from: c */
    private String f60524c;

    static {
        m5970c();
    }

    public C17043a() {
        super("saio");
    }

    /* renamed from: c */
    private static void m5970c() {
        C20987b c20987b = new C20987b("SampleAuxiliaryInformationOffsetsBox.java", C17043a.class);
        f60516d = c20987b.m164a("method-execution", c20987b.m165a("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 107);
        f60517e = c20987b.m164a("method-execution", c20987b.m165a("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        f60518f = c20987b.m164a("method-execution", c20987b.m165a("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 115);
        f60519g = c20987b.m164a("method-execution", c20987b.m165a("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        f60520h = c20987b.m164a("method-execution", c20987b.m165a("1", "getOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "[J"), 123);
        f60521i = c20987b.m164a("method-execution", c20987b.m165a("1", "setOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "[J", "offsets", "", "void"), 127);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if ((m7518i() & 1) == 1) {
            this.f60523b = C3515e.m37843h(byteBuffer);
            this.f60524c = C3515e.m37843h(byteBuffer);
        }
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f60522a = new long[m7517a];
        for (int i = 0; i < m7517a; i++) {
            if (m7519h() == 0) {
                this.f60522a[i] = C3515e.m37851a(byteBuffer);
            } else {
                this.f60522a[i] = C3515e.m37847d(byteBuffer);
            }
        }
    }

    /* renamed from: a */
    public final String m5973a() {
        AbstractC20997a m163a = C20987b.m163a(f60516d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f60523b;
    }

    /* renamed from: a */
    public final void m5972a(long[] jArr) {
        AbstractC20997a m162a = C20987b.m162a(f60521i, this, this, jArr);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.f60522a = jArr;
    }

    /* renamed from: b */
    public final long[] m5971b() {
        AbstractC20997a m163a = C20987b.m163a(f60520h, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f60522a;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        if ((m7518i() & 1) == 1) {
            byteBuffer.put(C3514d.m37853a(this.f60523b));
            byteBuffer.put(C3514d.m37853a(this.f60524c));
        }
        C3516f.m37835b(byteBuffer, this.f60522a.length);
        for (long j : this.f60522a) {
            Long valueOf = Long.valueOf(j);
            if (m7519h() == 0) {
                C3516f.m37835b(byteBuffer, valueOf.longValue());
            } else {
                C3516f.m37839a(byteBuffer, valueOf.longValue());
            }
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        int i = 8;
        int length = m7519h() == 0 ? this.f60522a.length * 4 : this.f60522a.length * 8;
        if ((m7518i() & 1) != 1) {
            i = 0;
        }
        return length + 8 + i;
    }
}
