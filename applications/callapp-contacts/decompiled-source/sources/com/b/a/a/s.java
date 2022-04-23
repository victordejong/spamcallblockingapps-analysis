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
/* loaded from: classes-dex2jar.jar:com/b/a/a/s.class */
public class s extends c {
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
    private static final a.AbstractC0755a P = null;
    private static final a.AbstractC0755a Q = null;
    private static final a.AbstractC0755a R = null;
    public static final a.AbstractC0755a g = null;
    public static final a.AbstractC0755a h = null;
    public static final a.AbstractC0755a i = null;
    public static final a.AbstractC0755a j = null;
    public static final a.AbstractC0755a k = null;
    public static final a.AbstractC0755a l = null;
    public static final a.AbstractC0755a m = null;
    private static f n = f.a(s.class);
    private static final a.AbstractC0755a w = null;
    private static final a.AbstractC0755a x = null;
    private static final a.AbstractC0755a y = null;
    private static final a.AbstractC0755a z = null;

    /* renamed from: a  reason: collision with root package name */
    public Date f7141a;

    /* renamed from: b  reason: collision with root package name */
    public Date f7142b;

    /* renamed from: c  reason: collision with root package name */
    public long f7143c;

    /* renamed from: d  reason: collision with root package name */
    public long f7144d;
    public long f;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private double o = 1.0d;
    private float p = 1.0f;
    public h e = h.j;

    static {
        b();
    }

    public s() {
        super("mvhd");
    }

    private static void b() {
        b bVar = new b("MovieHeaderBox.java", s.class);
        w = bVar.a("method-execution", bVar.a("1", "getCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 66);
        x = bVar.a("method-execution", bVar.a("1", "getModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 70);
        i = bVar.a("method-execution", bVar.a("1", "setModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "modificationTime", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE);
        j = bVar.a("method-execution", bVar.a("1", "setTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "timescale", "", "void"), 220);
        k = bVar.a("method-execution", bVar.a("1", "setDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "long", VastIconXmlManager.DURATION, "", "void"), 224);
        E = bVar.a("method-execution", bVar.a("1", "setRate", "com.coremedia.iso.boxes.MovieHeaderBox", "double", "rate", "", "void"), 231);
        F = bVar.a("method-execution", bVar.a("1", "setVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "float", "volume", "", "void"), 235);
        l = bVar.a("method-execution", bVar.a("1", "setMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 239);
        m = bVar.a("method-execution", bVar.a("1", "setNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "nextTrackId", "", "void"), 243);
        G = bVar.a("method-execution", bVar.a("1", "getPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 247);
        H = bVar.a("method-execution", bVar.a("1", "setPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewTime", "", "void"), 251);
        I = bVar.a("method-execution", bVar.a("1", "getPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 255);
        y = bVar.a("method-execution", bVar.a("1", "getTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 74);
        J = bVar.a("method-execution", bVar.a("1", "setPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewDuration", "", "void"), 259);
        K = bVar.a("method-execution", bVar.a("1", "getPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 263);
        L = bVar.a("method-execution", bVar.a("1", "setPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "posterTime", "", "void"), 267);
        M = bVar.a("method-execution", bVar.a("1", "getSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 271);
        N = bVar.a("method-execution", bVar.a("1", "setSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionTime", "", "void"), 275);
        O = bVar.a("method-execution", bVar.a("1", "getSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 279);
        P = bVar.a("method-execution", bVar.a("1", "setSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionDuration", "", "void"), 283);
        Q = bVar.a("method-execution", bVar.a("1", "getCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 287);
        R = bVar.a("method-execution", bVar.a("1", "setCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "currentTime", "", "void"), 291);
        z = bVar.a("method-execution", bVar.a("1", "getDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 78);
        A = bVar.a("method-execution", bVar.a("1", "getRate", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "double"), 82);
        B = bVar.a("method-execution", bVar.a("1", "getVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "float"), 86);
        g = bVar.a("method-execution", bVar.a("1", "getMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 90);
        C = bVar.a("method-execution", bVar.a("1", "getNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 94);
        D = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.lang.String"), 148);
        h = bVar.a("method-execution", bVar.a("1", "setCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "creationTime", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if (h() == 1) {
            this.f7141a = com.googlecode.mp4parser.c.c.a(e.d(byteBuffer));
            this.f7142b = com.googlecode.mp4parser.c.c.a(e.d(byteBuffer));
            this.f7143c = e.a(byteBuffer);
            this.f7144d = byteBuffer.getLong();
        } else {
            this.f7141a = com.googlecode.mp4parser.c.c.a(e.a(byteBuffer));
            this.f7142b = com.googlecode.mp4parser.c.c.a(e.a(byteBuffer));
            this.f7143c = e.a(byteBuffer);
            this.f7144d = byteBuffer.getInt();
        }
        if (this.f7144d < -1) {
            n.b("mvhd duration is not in expected range");
        }
        this.o = e.e(byteBuffer);
        this.p = e.g(byteBuffer);
        e.c(byteBuffer);
        e.a(byteBuffer);
        e.a(byteBuffer);
        this.e = h.a(byteBuffer);
        this.q = byteBuffer.getInt();
        this.r = byteBuffer.getInt();
        this.s = byteBuffer.getInt();
        this.t = byteBuffer.getInt();
        this.u = byteBuffer.getInt();
        this.v = byteBuffer.getInt();
        this.f = e.a(byteBuffer);
    }

    public final long a() {
        a a2 = b.a(y, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.f7143c;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        if (h() == 1) {
            com.b.a.f.a(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7141a));
            com.b.a.f.a(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7142b));
            com.b.a.f.b(byteBuffer, this.f7143c);
            byteBuffer.putLong(this.f7144d);
        } else {
            com.b.a.f.b(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7141a));
            com.b.a.f.b(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7142b));
            com.b.a.f.b(byteBuffer, this.f7143c);
            byteBuffer.putInt((int) this.f7144d);
        }
        com.b.a.f.a(byteBuffer, this.o);
        com.b.a.f.c(byteBuffer, this.p);
        com.b.a.f.b(byteBuffer, 0);
        com.b.a.f.b(byteBuffer, 0L);
        com.b.a.f.b(byteBuffer, 0L);
        this.e.b(byteBuffer);
        byteBuffer.putInt(this.q);
        byteBuffer.putInt(this.r);
        byteBuffer.putInt(this.s);
        byteBuffer.putInt(this.t);
        byteBuffer.putInt(this.u);
        byteBuffer.putInt(this.v);
        com.b.a.f.b(byteBuffer, this.f);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (h() == 1 ? 32L : 20L) + 80;
    }

    public String toString() {
        a a2 = b.a(D, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        StringBuilder sb = new StringBuilder();
        sb.append("MovieHeaderBox[");
        sb.append("creationTime=");
        a a3 = b.a(w, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a3);
        sb.append(this.f7141a);
        sb.append(";");
        sb.append("modificationTime=");
        a a4 = b.a(x, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a4);
        sb.append(this.f7142b);
        sb.append(";");
        sb.append("timescale=");
        sb.append(a());
        sb.append(";");
        sb.append("duration=");
        a a5 = b.a(z, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a5);
        sb.append(this.f7144d);
        sb.append(";");
        sb.append("rate=");
        a a6 = b.a(A, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a6);
        sb.append(this.o);
        sb.append(";");
        sb.append("volume=");
        a a7 = b.a(B, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a7);
        sb.append(this.p);
        sb.append(";");
        sb.append("matrix=");
        sb.append(this.e);
        sb.append(";");
        sb.append("nextTrackId=");
        a a8 = b.a(C, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a8);
        sb.append(this.f);
        sb.append("]");
        return sb.toString();
    }
}
