package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.ae */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ae.class */
public class C3470ae extends AbstractC16280c {

    /* renamed from: b */
    public static final AbstractC20997a.AbstractC20998a f13141b = null;

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13142c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13143d = null;

    /* renamed from: a */
    public long[] f13144a;

    static {
        m37911a();
    }

    public C3470ae() {
        super("stss");
    }

    /* renamed from: a */
    private static void m37911a() {
        C20987b c20987b = new C20987b("SyncSampleBox.java", C3470ae.class);
        f13141b = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "[J"), 46);
        f13143d = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "java.lang.String"), 77);
        f13142c = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "[J", "sampleNumber", "", "void"), 81);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13144a = new long[m7517a];
        for (int i = 0; i < m7517a; i++) {
            this.f13144a[i] = C3515e.m37851a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13144a.length);
        for (long j : this.f13144a) {
            C3516f.m37835b(byteBuffer, j);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13144a.length * 4) + 8;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13143d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "SyncSampleBox[entryCount=" + this.f13144a.length + "]";
    }
}
