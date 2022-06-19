package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16283c;
import com.mopub.mobileads.VastIconXmlManager;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.Date;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.p */
/* loaded from: classes-dex2jar.jar:com/b/a/a/p.class */
public class C3499p extends AbstractC16280c {

    /* renamed from: e */
    public static final AbstractC20997a.AbstractC20998a f13283e = null;

    /* renamed from: f */
    public static final AbstractC20997a.AbstractC20998a f13284f = null;

    /* renamed from: g */
    public static final AbstractC20997a.AbstractC20998a f13285g = null;

    /* renamed from: h */
    public static final AbstractC20997a.AbstractC20998a f13286h = null;

    /* renamed from: i */
    private static AbstractC16287f f13287i = AbstractC16287f.m7514a(C3499p.class);

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f13288k = null;

    /* renamed from: l */
    private static final AbstractC20997a.AbstractC20998a f13289l = null;

    /* renamed from: m */
    private static final AbstractC20997a.AbstractC20998a f13290m = null;

    /* renamed from: n */
    private static final AbstractC20997a.AbstractC20998a f13291n = null;

    /* renamed from: o */
    private static final AbstractC20997a.AbstractC20998a f13292o = null;

    /* renamed from: p */
    private static final AbstractC20997a.AbstractC20998a f13293p = null;

    /* renamed from: q */
    private static final AbstractC20997a.AbstractC20998a f13294q = null;

    /* renamed from: b */
    public long f13296b;

    /* renamed from: c */
    public long f13297c;

    /* renamed from: a */
    public Date f13295a = new Date();

    /* renamed from: j */
    private Date f13299j = new Date();

    /* renamed from: d */
    public String f13298d = "eng";

    static {
        m37879e();
    }

    public C3499p() {
        super("mdhd");
    }

    /* renamed from: e */
    private static void m37879e() {
        C20987b c20987b = new C20987b("MediaHeaderBox.java", C3499p.class);
        f13288k = c20987b.m164a("method-execution", c20987b.m165a("1", "getCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 48);
        f13289l = c20987b.m164a("method-execution", c20987b.m165a("1", "getModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 52);
        f13294q = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), JsonReaderKt.END_OBJ);
        f13290m = c20987b.m164a("method-execution", c20987b.m165a("1", "getTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 56);
        f13291n = c20987b.m164a("method-execution", c20987b.m165a("1", "getDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 60);
        f13292o = c20987b.m164a("method-execution", c20987b.m165a("1", "getLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 64);
        f13283e = c20987b.m164a("method-execution", c20987b.m165a("1", "setCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "creationTime", "", "void"), 81);
        f13293p = c20987b.m164a("method-execution", c20987b.m165a("1", "setModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "modificationTime", "", "void"), 85);
        f13284f = c20987b.m164a("method-execution", c20987b.m165a("1", "setTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "timescale", "", "void"), 89);
        f13285g = c20987b.m164a("method-execution", c20987b.m165a("1", "setDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "long", VastIconXmlManager.DURATION, "", "void"), 93);
        f13286h = c20987b.m164a("method-execution", c20987b.m165a("1", "setLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "java.lang.String", "language", "", "void"), 97);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if (m7519h() == 1) {
            this.f13295a = C16283c.m7516a(C3515e.m37847d(byteBuffer));
            this.f13299j = C16283c.m7516a(C3515e.m37847d(byteBuffer));
            this.f13296b = C3515e.m37851a(byteBuffer);
            this.f13297c = byteBuffer.getLong();
        } else {
            this.f13295a = C16283c.m7516a(C3515e.m37851a(byteBuffer));
            this.f13299j = C16283c.m7516a(C3515e.m37851a(byteBuffer));
            this.f13296b = C3515e.m37851a(byteBuffer);
            this.f13297c = C3515e.m37851a(byteBuffer);
        }
        if (this.f13297c < -1) {
            f13287i.mo7512b("mdhd duration is not in expected range");
        }
        int m37848c = C3515e.m37848c(byteBuffer);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 3; i++) {
            sb.append((char) (((m37848c >> ((2 - i) * 5)) & 31) + 96));
        }
        this.f13298d = sb.toString();
        C3515e.m37848c(byteBuffer);
    }

    /* renamed from: a */
    public final Date m37883a() {
        AbstractC20997a m163a = C20987b.m163a(f13288k, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13295a;
    }

    /* renamed from: b */
    public final Date m37882b() {
        AbstractC20997a m163a = C20987b.m163a(f13289l, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13299j;
    }

    /* renamed from: c */
    public final long m37881c() {
        AbstractC20997a m163a = C20987b.m163a(f13290m, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13296b;
    }

    /* renamed from: d */
    public final String m37880d() {
        AbstractC20997a m163a = C20987b.m163a(f13292o, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13298d;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        if (m7519h() == 1) {
            C3516f.m37839a(byteBuffer, C16283c.m7515a(this.f13295a));
            C3516f.m37839a(byteBuffer, C16283c.m7515a(this.f13299j));
            C3516f.m37835b(byteBuffer, this.f13296b);
            byteBuffer.putLong(this.f13297c);
        } else {
            C3516f.m37835b(byteBuffer, C16283c.m7515a(this.f13295a));
            C3516f.m37835b(byteBuffer, C16283c.m7515a(this.f13299j));
            C3516f.m37835b(byteBuffer, this.f13296b);
            byteBuffer.putInt((int) this.f13297c);
        }
        C3516f.m37838a(byteBuffer, this.f13298d);
        C3516f.m37836b(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (m7519h() == 1 ? ' ' : (char) 20) + 2 + 2;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13294q, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder();
        sb.append("MediaHeaderBox[");
        sb.append("creationTime=");
        sb.append(m37883a());
        sb.append(";");
        sb.append("modificationTime=");
        sb.append(m37882b());
        sb.append(";");
        sb.append("timescale=");
        sb.append(m37881c());
        sb.append(";");
        sb.append("duration=");
        AbstractC20997a m163a2 = C20987b.m163a(f13291n, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13297c);
        sb.append(";");
        sb.append("language=");
        sb.append(m37880d());
        sb.append("]");
        return sb.toString();
    }
}
