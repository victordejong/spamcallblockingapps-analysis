package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.n */
/* loaded from: classes-dex2jar.jar:com/b/a/a/n.class */
public class C3497n extends AbstractC3455a {

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f13274e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f13275f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f13276g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f13277h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f13278i = null;

    /* renamed from: a */
    private int f13279a;

    /* renamed from: b */
    private int f13280b;

    /* renamed from: c */
    private long f13281c;

    /* renamed from: d */
    private long f13282d;

    static {
        m37886a();
    }

    public C3497n() {
        super("hmhd");
    }

    /* renamed from: a */
    private static void m37886a() {
        C20987b c20987b = new C20987b("HintMediaHeaderBox.java", C3497n.class);
        f13274e = c20987b.m164a("method-execution", c20987b.m165a("1", "getMaxPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 42);
        f13275f = c20987b.m164a("method-execution", c20987b.m165a("1", "getAvgPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 46);
        f13276g = c20987b.m164a("method-execution", c20987b.m165a("1", "getMaxBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 50);
        f13277h = c20987b.m164a("method-execution", c20987b.m165a("1", "getAvgBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 54);
        f13278i = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "java.lang.String"), 84);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13279a = C3515e.m37848c(byteBuffer);
        this.f13280b = C3515e.m37848c(byteBuffer);
        this.f13281c = C3515e.m37851a(byteBuffer);
        this.f13282d = C3515e.m37851a(byteBuffer);
        C3515e.m37851a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37836b(byteBuffer, this.f13279a);
        C3516f.m37836b(byteBuffer, this.f13280b);
        C3516f.m37835b(byteBuffer, this.f13281c);
        C3516f.m37835b(byteBuffer, this.f13282d);
        C3516f.m37835b(byteBuffer, 0L);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return 20L;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13278i, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "HintMediaHeaderBox{maxPduSize=" + this.f13279a + ", avgPduSize=" + this.f13280b + ", maxBitrate=" + this.f13281c + ", avgBitrate=" + this.f13282d + '}';
    }
}
