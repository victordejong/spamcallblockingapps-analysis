package com.b.a.a;

import com.b.a.e;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.c.f;
import com.googlecode.mp4parser.h;
import com.mopub.mobileads.VastIconXmlManager;
import java.nio.ByteBuffer;
import java.util.Date;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/p.class */
public class p extends c {
    public static final a.AbstractC0755a e = null;
    public static final a.AbstractC0755a f = null;
    public static final a.AbstractC0755a g = null;
    public static final a.AbstractC0755a h = null;
    private static f i = f.a(p.class);
    private static final a.AbstractC0755a k = null;
    private static final a.AbstractC0755a l = null;
    private static final a.AbstractC0755a m = null;
    private static final a.AbstractC0755a n = null;
    private static final a.AbstractC0755a o = null;
    private static final a.AbstractC0755a p = null;
    private static final a.AbstractC0755a q = null;

    /* renamed from: b  reason: collision with root package name */
    public long f7138b;

    /* renamed from: c  reason: collision with root package name */
    public long f7139c;

    /* renamed from: a  reason: collision with root package name */
    public Date f7137a = new Date();
    private Date j = new Date();

    /* renamed from: d  reason: collision with root package name */
    public String f7140d = "eng";

    static {
        e();
    }

    public p() {
        super("mdhd");
    }

    private static void e() {
        b bVar = new b("MediaHeaderBox.java", p.class);
        k = bVar.a("method-execution", bVar.a("1", "getCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 48);
        l = bVar.a("method-execution", bVar.a("1", "getModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 52);
        q = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), JsonReaderKt.END_OBJ);
        m = bVar.a("method-execution", bVar.a("1", "getTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 56);
        n = bVar.a("method-execution", bVar.a("1", "getDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 60);
        o = bVar.a("method-execution", bVar.a("1", "getLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 64);
        e = bVar.a("method-execution", bVar.a("1", "setCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "creationTime", "", "void"), 81);
        p = bVar.a("method-execution", bVar.a("1", "setModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "modificationTime", "", "void"), 85);
        f = bVar.a("method-execution", bVar.a("1", "setTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "timescale", "", "void"), 89);
        g = bVar.a("method-execution", bVar.a("1", "setDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "long", VastIconXmlManager.DURATION, "", "void"), 93);
        h = bVar.a("method-execution", bVar.a("1", "setLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "java.lang.String", "language", "", "void"), 97);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if (h() == 1) {
            this.f7137a = com.googlecode.mp4parser.c.c.a(e.d(byteBuffer));
            this.j = com.googlecode.mp4parser.c.c.a(e.d(byteBuffer));
            this.f7138b = e.a(byteBuffer);
            this.f7139c = byteBuffer.getLong();
        } else {
            this.f7137a = com.googlecode.mp4parser.c.c.a(e.a(byteBuffer));
            this.j = com.googlecode.mp4parser.c.c.a(e.a(byteBuffer));
            this.f7138b = e.a(byteBuffer);
            this.f7139c = e.a(byteBuffer);
        }
        if (this.f7139c < -1) {
            i.b("mdhd duration is not in expected range");
        }
        int c2 = e.c(byteBuffer);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 3; i2++) {
            sb.append((char) (((c2 >> ((2 - i2) * 5)) & 31) + 96));
        }
        this.f7140d = sb.toString();
        e.c(byteBuffer);
    }

    public final Date a() {
        a a2 = b.a(k, this, this);
        h.a();
        h.a(a2);
        return this.f7137a;
    }

    public final Date b() {
        a a2 = b.a(l, this, this);
        h.a();
        h.a(a2);
        return this.j;
    }

    public final long c() {
        a a2 = b.a(m, this, this);
        h.a();
        h.a(a2);
        return this.f7138b;
    }

    public final String d() {
        a a2 = b.a(o, this, this);
        h.a();
        h.a(a2);
        return this.f7140d;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        if (h() == 1) {
            com.b.a.f.a(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7137a));
            com.b.a.f.a(byteBuffer, com.googlecode.mp4parser.c.c.a(this.j));
            com.b.a.f.b(byteBuffer, this.f7138b);
            byteBuffer.putLong(this.f7139c);
        } else {
            com.b.a.f.b(byteBuffer, com.googlecode.mp4parser.c.c.a(this.f7137a));
            com.b.a.f.b(byteBuffer, com.googlecode.mp4parser.c.c.a(this.j));
            com.b.a.f.b(byteBuffer, this.f7138b);
            byteBuffer.putInt((int) this.f7139c);
        }
        com.b.a.f.a(byteBuffer, this.f7140d);
        com.b.a.f.b(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (h() == 1 ? 32L : 20L) + 2 + 2;
    }

    public String toString() {
        a a2 = b.a(q, this, this);
        h.a();
        h.a(a2);
        StringBuilder sb = new StringBuilder();
        sb.append("MediaHeaderBox[");
        sb.append("creationTime=");
        sb.append(a());
        sb.append(";");
        sb.append("modificationTime=");
        sb.append(b());
        sb.append(";");
        sb.append("timescale=");
        sb.append(c());
        sb.append(";");
        sb.append("duration=");
        a a3 = b.a(n, this, this);
        h.a();
        h.a(a3);
        sb.append(this.f7139c);
        sb.append(";");
        sb.append("language=");
        sb.append(d());
        sb.append("]");
        return sb.toString();
    }
}
