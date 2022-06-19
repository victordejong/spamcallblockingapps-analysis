package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.ai */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ai.class */
public class C3475ai extends AbstractC3455a {

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f13195c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13196d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f13197e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f13198f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f13199g = null;

    /* renamed from: a */
    private int f13200a = 0;

    /* renamed from: b */
    private int[] f13201b = new int[3];

    static {
        m37897b();
    }

    public C3475ai() {
        super("vmhd");
        m7520c(1);
    }

    /* renamed from: a */
    private int[] m37898a() {
        AbstractC20997a m163a = C20987b.m163a(f13196d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13201b;
    }

    /* renamed from: b */
    private static void m37897b() {
        C20987b c20987b = new C20987b("VideoMediaHeaderBox.java", C3475ai.class);
        f13195c = c20987b.m164a("method-execution", c20987b.m165a("1", "getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "int"), 39);
        f13196d = c20987b.m164a("method-execution", c20987b.m165a("1", "getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "[I"), 43);
        f13197e = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "java.lang.String"), 71);
        f13198f = c20987b.m164a("method-execution", c20987b.m165a("1", "setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", "", "void"), 75);
        f13199g = c20987b.m164a("method-execution", c20987b.m165a("1", "setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", "", "void"), 79);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13200a = C3515e.m37848c(byteBuffer);
        this.f13201b = new int[3];
        for (int i = 0; i < 3; i++) {
            this.f13201b[i] = C3515e.m37848c(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37836b(byteBuffer, this.f13200a);
        for (int i : this.f13201b) {
            C3516f.m37836b(byteBuffer, i);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return 12L;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13197e, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder("VideoMediaHeaderBox[graphicsmode=");
        AbstractC20997a m163a2 = C20987b.m163a(f13195c, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13200a);
        sb.append(";opcolor0=");
        sb.append(m37898a()[0]);
        sb.append(";opcolor1=");
        sb.append(m37898a()[1]);
        sb.append(";opcolor2=");
        sb.append(m37898a()[2]);
        sb.append("]");
        return sb.toString();
    }
}
