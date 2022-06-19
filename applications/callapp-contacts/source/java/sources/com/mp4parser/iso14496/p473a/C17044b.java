package com.mp4parser.iso14496.p473a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.mp4parser.iso14496.a.b */
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/a/b.class */
public class C17044b extends AbstractC16280c {

    /* renamed from: e */
    static final /* synthetic */ boolean f60525e = true;

    /* renamed from: f */
    public static final AbstractC20997a.AbstractC20998a f60526f = null;

    /* renamed from: g */
    public static final AbstractC20997a.AbstractC20998a f60527g = null;

    /* renamed from: h */
    public static final AbstractC20997a.AbstractC20998a f60528h = null;

    /* renamed from: i */
    public static final AbstractC20997a.AbstractC20998a f60529i = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f60530k = null;

    /* renamed from: l */
    private static final AbstractC20997a.AbstractC20998a f60531l = null;

    /* renamed from: m */
    private static final AbstractC20997a.AbstractC20998a f60532m = null;

    /* renamed from: n */
    private static final AbstractC20997a.AbstractC20998a f60533n = null;

    /* renamed from: o */
    private static final AbstractC20997a.AbstractC20998a f60534o = null;

    /* renamed from: p */
    private static final AbstractC20997a.AbstractC20998a f60535p = null;

    /* renamed from: q */
    private static final AbstractC20997a.AbstractC20998a f60536q = null;

    /* renamed from: r */
    private static final AbstractC20997a.AbstractC20998a f60537r = null;

    /* renamed from: a */
    public short f60538a;

    /* renamed from: b */
    public short[] f60539b = new short[0];

    /* renamed from: c */
    public int f60540c;

    /* renamed from: d */
    public String f60541d;

    /* renamed from: j */
    private String f60542j;

    static {
        m5965d();
    }

    public C17044b() {
        super("saiz");
    }

    /* renamed from: d */
    private static void m5965d() {
        C20987b c20987b = new C20987b("SampleAuxiliaryInformationSizesBox.java", C17044b.class);
        f60530k = c20987b.m164a("method-execution", c20987b.m165a("1", "getSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "index", "", "short"), 57);
        f60531l = c20987b.m164a("method-execution", c20987b.m165a("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 106);
        f60529i = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "sampleCount", "", "void"), 146);
        f60537r = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 151);
        f60526f = c20987b.m164a("method-execution", c20987b.m165a("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoType", "", "void"), 110);
        f60532m = c20987b.m164a("method-execution", c20987b.m165a("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 114);
        f60533n = c20987b.m164a("method-execution", c20987b.m165a("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 118);
        f60534o = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 122);
        f60527g = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "defaultSampleInfoSize", "", "void"), WebSocketProtocol.PAYLOAD_SHORT);
        f60528h = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "[S"), 131);
        f60535p = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "[S", "sampleInfoSizes", "", "void"), 137);
        f60536q = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 142);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if ((m7518i() & 1) == 1) {
            this.f60541d = C3515e.m37843h(byteBuffer);
            this.f60542j = C3515e.m37843h(byteBuffer);
        }
        this.f60538a = (short) C3515e.m37852a(byteBuffer.get());
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f60540c = m7517a;
        if (this.f60538a == 0) {
            this.f60539b = new short[m7517a];
            for (int i = 0; i < this.f60540c; i++) {
                this.f60539b[i] = (short) C3515e.m37852a(byteBuffer.get());
            }
        }
    }

    /* renamed from: a */
    public final String m5969a() {
        AbstractC20997a m163a = C20987b.m163a(f60531l, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f60541d;
    }

    /* renamed from: a */
    public final short m5968a(int i) {
        AbstractC20997a m162a = C20987b.m162a(f60530k, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        return m5967b() == 0 ? this.f60539b[i] : this.f60538a;
    }

    /* renamed from: b */
    public final int m5967b() {
        AbstractC20997a m163a = C20987b.m163a(f60534o, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f60538a;
    }

    /* renamed from: c */
    public final int m5966c() {
        AbstractC20997a m163a = C20987b.m163a(f60536q, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f60540c;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        if ((m7518i() & 1) == 1) {
            byteBuffer.put(C3514d.m37853a(this.f60541d));
            byteBuffer.put(C3514d.m37853a(this.f60542j));
        }
        C3516f.m37832c(byteBuffer, (int) this.f60538a);
        if (this.f60538a != 0) {
            C3516f.m37835b(byteBuffer, this.f60540c);
            return;
        }
        C3516f.m37835b(byteBuffer, this.f60539b.length);
        for (short s : this.f60539b) {
            C3516f.m37832c(byteBuffer, (int) s);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return ((m7518i() & 1) == 1 ? 12 : 4) + 5 + (this.f60538a == 0 ? this.f60539b.length : 0);
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f60537r, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize=" + ((int) this.f60538a) + ", sampleCount=" + this.f60540c + ", auxInfoType='" + this.f60541d + "', auxInfoTypeParameter='" + this.f60542j + "'}";
    }
}
