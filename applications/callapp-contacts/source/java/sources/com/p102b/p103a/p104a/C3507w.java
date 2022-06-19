package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.w */
/* loaded from: classes-dex2jar.jar:com/b/a/a/w.class */
public class C3507w extends AbstractC16280c {

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13351c = null;

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f13352d = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f13353f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f13354g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f13355h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f13356i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f13357j = null;

    /* renamed from: a */
    public long[] f13358a = new long[0];

    /* renamed from: b */
    int f13359b;

    /* renamed from: e */
    private long f13360e;

    static {
        m37871b();
    }

    public C3507w() {
        super("stsz");
    }

    /* renamed from: b */
    private static void m37871b() {
        C20987b c20987b = new C20987b("SampleSizeBox.java", C3507w.class);
        f13353f = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 50);
        f13354g = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "long", "sampleSize", "", "void"), 54);
        f13355h = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleSizeAtIndex", "com.coremedia.iso.boxes.SampleSizeBox", "int", "index", "", "long"), 59);
        f13356i = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleCount", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 67);
        f13351c = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "[J"), 76);
        f13352d = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "[J", "sampleSizes", "", "void"), 80);
        f13357j = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "java.lang.String"), 119);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13360e = C3515e.m37851a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13359b = m7517a;
        if (this.f13360e == 0) {
            this.f13358a = new long[m7517a];
            for (int i = 0; i < this.f13359b; i++) {
                this.f13358a[i] = C3515e.m37851a(byteBuffer);
            }
        }
    }

    /* renamed from: a */
    public final long m37873a() {
        AbstractC20997a m163a = C20987b.m163a(f13356i, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13360e > 0 ? this.f13359b : this.f13358a.length;
    }

    /* renamed from: a */
    public final long m37872a(int i) {
        AbstractC20997a m162a = C20987b.m162a(f13355h, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        long j = this.f13360e;
        return j > 0 ? j : this.f13358a[i];
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13360e);
        if (this.f13360e != 0) {
            C3516f.m37835b(byteBuffer, this.f13359b);
            return;
        }
        C3516f.m37835b(byteBuffer, this.f13358a.length);
        for (long j : this.f13358a) {
            C3516f.m37835b(byteBuffer, j);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13360e == 0 ? this.f13358a.length * 4 : 0) + 12;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13357j, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder("SampleSizeBox[sampleSize=");
        AbstractC20997a m163a2 = C20987b.m163a(f13353f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13360e);
        sb.append(";sampleCount=");
        sb.append(m37873a());
        sb.append("]");
        return sb.toString();
    }
}
