package com.mp4parser.iso14496.a;

import com.b.a.d;
import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/a/b.class */
public class b extends c {
    static final /* synthetic */ boolean e = true;
    public static final a.AbstractC0755a f = null;
    public static final a.AbstractC0755a g = null;
    public static final a.AbstractC0755a h = null;
    public static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a k = null;
    private static final a.AbstractC0755a l = null;
    private static final a.AbstractC0755a m = null;
    private static final a.AbstractC0755a n = null;
    private static final a.AbstractC0755a o = null;
    private static final a.AbstractC0755a p = null;
    private static final a.AbstractC0755a q = null;
    private static final a.AbstractC0755a r = null;

    /* renamed from: a  reason: collision with root package name */
    public short f34924a;

    /* renamed from: b  reason: collision with root package name */
    public short[] f34925b = new short[0];

    /* renamed from: c  reason: collision with root package name */
    public int f34926c;

    /* renamed from: d  reason: collision with root package name */
    public String f34927d;
    private String j;

    static {
        d();
    }

    public b() {
        super("saiz");
    }

    private static void d() {
        org.mp4parser.aspectj.a.b.b bVar = new org.mp4parser.aspectj.a.b.b("SampleAuxiliaryInformationSizesBox.java", b.class);
        k = bVar.a("method-execution", bVar.a("1", "getSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "index", "", "short"), 57);
        l = bVar.a("method-execution", bVar.a("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 106);
        i = bVar.a("method-execution", bVar.a("1", "setSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "sampleCount", "", "void"), 146);
        r = bVar.a("method-execution", bVar.a("1", "toString", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 151);
        f = bVar.a("method-execution", bVar.a("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoType", "", "void"), 110);
        m = bVar.a("method-execution", bVar.a("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 114);
        n = bVar.a("method-execution", bVar.a("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 118);
        o = bVar.a("method-execution", bVar.a("1", "getDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 122);
        g = bVar.a("method-execution", bVar.a("1", "setDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "defaultSampleInfoSize", "", "void"), WebSocketProtocol.PAYLOAD_SHORT);
        h = bVar.a("method-execution", bVar.a("1", "getSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "[S"), 131);
        p = bVar.a("method-execution", bVar.a("1", "setSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "[S", "sampleInfoSizes", "", "void"), 137);
        q = bVar.a("method-execution", bVar.a("1", "getSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 142);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if ((i() & 1) == 1) {
            this.f34927d = e.h(byteBuffer);
            this.j = e.h(byteBuffer);
        }
        this.f34924a = (short) e.a(byteBuffer.get());
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f34926c = a2;
        if (this.f34924a == 0) {
            this.f34925b = new short[a2];
            for (int i2 = 0; i2 < this.f34926c; i2++) {
                this.f34925b[i2] = (short) e.a(byteBuffer.get());
            }
        }
    }

    public final String a() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(l, this, this);
        h.a();
        h.a(a2);
        return this.f34927d;
    }

    public final short a(int i2) {
        a a2 = org.mp4parser.aspectj.a.b.b.a(k, this, this, Integer.valueOf(i2));
        h.a();
        h.a(a2);
        return b() == 0 ? this.f34925b[i2] : this.f34924a;
    }

    public final int b() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(o, this, this);
        h.a();
        h.a(a2);
        return this.f34924a;
    }

    public final int c() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(q, this, this);
        h.a();
        h.a(a2);
        return this.f34926c;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        if ((i() & 1) == 1) {
            byteBuffer.put(d.a(this.f34927d));
            byteBuffer.put(d.a(this.j));
        }
        f.c(byteBuffer, (int) this.f34924a);
        if (this.f34924a == 0) {
            f.b(byteBuffer, this.f34925b.length);
            for (short s : this.f34925b) {
                f.c(byteBuffer, (int) s);
            }
            return;
        }
        f.b(byteBuffer, this.f34926c);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return ((i() & 1) == 1 ? 12 : 4) + 5 + (this.f34924a == 0 ? this.f34925b.length : 0);
    }

    public String toString() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(r, this, this);
        h.a();
        h.a(a2);
        return "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize=" + ((int) this.f34924a) + ", sampleCount=" + this.f34926c + ", auxInfoType='" + this.f34927d + "', auxInfoTypeParameter='" + this.j + "'}";
    }
}
