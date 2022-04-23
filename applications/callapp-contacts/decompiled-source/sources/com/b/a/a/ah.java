package com.b.a.a;

import com.b.a.e;
import com.explorestack.protobuf.openrtb.LossReason;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.c.f;
import com.googlecode.mp4parser.c.h;
import com.mopub.mobileads.VastIconXmlManager;
import java.nio.ByteBuffer;
import java.util.Date;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/ah.class */
public class ah extends c {
    private static final a.AbstractC0755a A = null;
    private static final a.AbstractC0755a B = null;
    private static final a.AbstractC0755a C = null;
    private static final a.AbstractC0755a D = null;
    private static final a.AbstractC0755a E = null;
    private static final a.AbstractC0755a F = null;
    private static final a.AbstractC0755a G = null;
    private static final a.AbstractC0755a H = null;
    private static final a.AbstractC0755a I = null;
    private static final a.AbstractC0755a J = null;
    private static final a.AbstractC0755a K = null;
    private static final a.AbstractC0755a L = null;
    private static final a.AbstractC0755a M = null;
    private static final a.AbstractC0755a N = null;
    private static final a.AbstractC0755a O = null;
    public static final a.AbstractC0755a j = null;
    public static final a.AbstractC0755a k = null;
    public static final a.AbstractC0755a l = null;
    public static final a.AbstractC0755a m = null;
    public static final a.AbstractC0755a n = null;
    public static final a.AbstractC0755a o = null;
    public static final a.AbstractC0755a p = null;
    public static final a.AbstractC0755a q = null;
    public static final a.AbstractC0755a r = null;
    public static final a.AbstractC0755a s = null;
    public static final a.AbstractC0755a t = null;
    public static final a.AbstractC0755a u = null;
    private static f v = f.a(ah.class);
    private static final a.AbstractC0755a x = null;
    private static final a.AbstractC0755a y = null;
    private static final a.AbstractC0755a z = null;

    /* renamed from: c  reason: collision with root package name */
    public long f7087c;

    /* renamed from: d  reason: collision with root package name */
    public int f7088d;
    public int e;
    public float f;
    public double h;
    public double i;
    private long w;

    /* renamed from: a  reason: collision with root package name */
    public Date f7085a = new Date(0);

    /* renamed from: b  reason: collision with root package name */
    public Date f7086b = new Date(0);
    public h g = h.j;

    static {
        f();
    }

    public ah() {
        super("tkhd");
    }

    private static void f() {
        b bVar = new b("TrackHeaderBox.java", ah.class);
        x = bVar.a("method-execution", bVar.a("1", "getCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 62);
        y = bVar.a("method-execution", bVar.a("1", "getModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 66);
        G = bVar.a("method-execution", bVar.a("1", "getContent", "com.coremedia.iso.boxes.TrackHeaderBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 145);
        H = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.lang.String"), 173);
        k = bVar.a("method-execution", bVar.a("1", "setCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "creationTime", "", "void"), 199);
        l = bVar.a("method-execution", bVar.a("1", "setModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "modificationTime", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE);
        m = bVar.a("method-execution", bVar.a("1", "setTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "trackId", "", "void"), 214);
        I = bVar.a("method-execution", bVar.a("1", "setDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "long", VastIconXmlManager.DURATION, "", "void"), 218);
        n = bVar.a("method-execution", bVar.a("1", "setLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "layer", "", "void"), 225);
        o = bVar.a("method-execution", bVar.a("1", "setAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "alternateGroup", "", "void"), 229);
        p = bVar.a("method-execution", bVar.a("1", "setVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "float", "volume", "", "void"), 233);
        q = bVar.a("method-execution", bVar.a("1", "setMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 237);
        z = bVar.a("method-execution", bVar.a("1", "getTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 70);
        r = bVar.a("method-execution", bVar.a("1", "setWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "width", "", "void"), 241);
        s = bVar.a("method-execution", bVar.a("1", "setHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "height", "", "void"), 245);
        J = bVar.a("method-execution", bVar.a("1", "isEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 250);
        K = bVar.a("method-execution", bVar.a("1", "isInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 254);
        L = bVar.a("method-execution", bVar.a("1", "isInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 258);
        M = bVar.a("method-execution", bVar.a("1", "isInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 262);
        t = bVar.a("method-execution", bVar.a("1", "setEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "enabled", "", "void"), 266);
        u = bVar.a("method-execution", bVar.a("1", "setInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inMovie", "", "void"), 274);
        N = bVar.a("method-execution", bVar.a("1", "setInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPreview", "", "void"), 282);
        O = bVar.a("method-execution", bVar.a("1", "setInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPoster", "", "void"), 290);
        A = bVar.a("method-execution", bVar.a("1", "getDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 74);
        B = bVar.a("method-execution", bVar.a("1", "getLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 78);
        C = bVar.a("method-execution", bVar.a("1", "getAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 82);
        D = bVar.a("method-execution", bVar.a("1", "getVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "float"), 86);
        j = bVar.a("method-execution", bVar.a("1", "getMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 90);
        E = bVar.a("method-execution", bVar.a("1", "getWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 94);
        F = bVar.a("method-execution", bVar.a("1", "getHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 98);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if (h() == 1) {
            this.f7085a = com.googlecode.mp4parser.c.c.a(e.d(byteBuffer));
            this.f7086b = com.googlecode.mp4parser.c.c.a(e.d(byteBuffer));
            this.f7087c = e.a(byteBuffer);
            e.a(byteBuffer);
            this.w = byteBuffer.getLong();
        } else {
            this.f7085a = com.googlecode.mp4parser.c.c.a(e.a(byteBuffer));
            this.f7086b = com.googlecode.mp4parser.c.c.a(e.a(byteBuffer));
            this.f7087c = e.a(byteBuffer);
            e.a(byteBuffer);
            this.w = byteBuffer.getInt();
        }
        if (this.w < -1) {
            v.b("tkhd duration is not in expected range");
        }
        e.a(byteBuffer);
        e.a(byteBuffer);
        this.f7088d = e.c(byteBuffer);
        this.e = e.c(byteBuffer);
        this.f = e.g(byteBuffer);
        e.c(byteBuffer);
        this.g = h.a(byteBuffer);
        this.h = e.e(byteBuffer);
        this.i = e.e(byteBuffer);
    }

    public final long a() {
        a a2 = b.a(z, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.f7087c;
    }

    public final void a(long j2) {
        a a2 = b.a(I, this, this, org.mp4parser.aspectj.a.a.a.a(j2));
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        this.w = j2;
        if (j2 >= 4294967296L) {
            c(1);
        }
    }

    public final int b() {
        a a2 = b.a(B, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.f7088d;
    }

    public final float c() {
        a a2 = b.a(D, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.f;
    }

    public final double d() {
        a a2 = b.a(E, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.h;
    }

    public final double e() {
        a a2 = b.a(F, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.i;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        a a2 = b.a(G, this, this, byteBuffer);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        b(byteBuffer);
        if (h() == 1) {
            com.b.a.f.a(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7085a));
            com.b.a.f.a(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7086b));
            com.b.a.f.b(byteBuffer, this.f7087c);
            com.b.a.f.b(byteBuffer, 0L);
            byteBuffer.putLong(this.w);
        } else {
            com.b.a.f.b(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7085a));
            com.b.a.f.b(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7086b));
            com.b.a.f.b(byteBuffer, this.f7087c);
            com.b.a.f.b(byteBuffer, 0L);
            byteBuffer.putInt((int) this.w);
        }
        com.b.a.f.b(byteBuffer, 0L);
        com.b.a.f.b(byteBuffer, 0L);
        com.b.a.f.b(byteBuffer, this.f7088d);
        com.b.a.f.b(byteBuffer, this.e);
        com.b.a.f.c(byteBuffer, this.f);
        com.b.a.f.b(byteBuffer, 0);
        this.g.b(byteBuffer);
        com.b.a.f.a(byteBuffer, this.h);
        com.b.a.f.a(byteBuffer, this.i);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (h() == 1 ? 36L : 24L) + 60;
    }

    public String toString() {
        a a2 = b.a(H, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        StringBuilder sb = new StringBuilder();
        sb.append("TrackHeaderBox[");
        sb.append("creationTime=");
        a a3 = b.a(x, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a3);
        sb.append(this.f7085a);
        sb.append(";");
        sb.append("modificationTime=");
        a a4 = b.a(y, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a4);
        sb.append(this.f7086b);
        sb.append(";");
        sb.append("trackId=");
        sb.append(a());
        sb.append(";");
        sb.append("duration=");
        a a5 = b.a(A, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a5);
        sb.append(this.w);
        sb.append(";");
        sb.append("layer=");
        sb.append(b());
        sb.append(";");
        sb.append("alternateGroup=");
        a a6 = b.a(C, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a6);
        sb.append(this.e);
        sb.append(";");
        sb.append("volume=");
        sb.append(c());
        sb.append(";");
        sb.append("matrix=");
        sb.append(this.g);
        sb.append(";");
        sb.append("width=");
        sb.append(d());
        sb.append(";");
        sb.append("height=");
        sb.append(e());
        sb.append("]");
        return sb.toString();
    }
}
