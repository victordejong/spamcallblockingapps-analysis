package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/w.class */
public class w extends c {

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7152c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f7153d = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;

    /* renamed from: a  reason: collision with root package name */
    public long[] f7154a = new long[0];

    /* renamed from: b  reason: collision with root package name */
    int f7155b;
    private long e;

    static {
        b();
    }

    public w() {
        super("stsz");
    }

    private static void b() {
        b bVar = new b("SampleSizeBox.java", w.class);
        f = bVar.a("method-execution", bVar.a("1", "getSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 50);
        g = bVar.a("method-execution", bVar.a("1", "setSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "long", "sampleSize", "", "void"), 54);
        h = bVar.a("method-execution", bVar.a("1", "getSampleSizeAtIndex", "com.coremedia.iso.boxes.SampleSizeBox", "int", "index", "", "long"), 59);
        i = bVar.a("method-execution", bVar.a("1", "getSampleCount", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 67);
        f7152c = bVar.a("method-execution", bVar.a("1", "getSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "[J"), 76);
        f7153d = bVar.a("method-execution", bVar.a("1", "setSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "[J", "sampleSizes", "", "void"), 80);
        j = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "java.lang.String"), 119);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.e = e.a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7155b = a2;
        if (this.e == 0) {
            this.f7154a = new long[a2];
            for (int i2 = 0; i2 < this.f7155b; i2++) {
                this.f7154a[i2] = e.a(byteBuffer);
            }
        }
    }

    public final long a() {
        a a2 = b.a(i, this, this);
        h.a();
        h.a(a2);
        return this.e > 0 ? this.f7155b : this.f7154a.length;
    }

    public final long a(int i2) {
        a a2 = b.a(h, this, this, Integer.valueOf(i2));
        h.a();
        h.a(a2);
        long j2 = this.e;
        return j2 > 0 ? j2 : this.f7154a[i2];
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.e);
        if (this.e == 0) {
            f.b(byteBuffer, this.f7154a.length);
            for (long j2 : this.f7154a) {
                f.b(byteBuffer, j2);
            }
            return;
        }
        f.b(byteBuffer, this.f7155b);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.e == 0 ? this.f7154a.length * 4 : 0) + 12;
    }

    public String toString() {
        a a2 = b.a(j, this, this);
        h.a();
        h.a(a2);
        StringBuilder sb = new StringBuilder("SampleSizeBox[sampleSize=");
        a a3 = b.a(f, this, this);
        h.a();
        h.a(a3);
        sb.append(this.e);
        sb.append(";sampleCount=");
        sb.append(a());
        sb.append("]");
        return sb.toString();
    }
}
