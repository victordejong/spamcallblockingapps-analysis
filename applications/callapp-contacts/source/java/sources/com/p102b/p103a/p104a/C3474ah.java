package com.p102b.p103a.p104a;

import com.explorestack.protobuf.openrtb.LossReason;
import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16283c;
import com.googlecode.mp4parser.p425c.C16289h;
import com.mopub.mobileads.VastIconXmlManager;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.Date;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p594a.C20985a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.ah */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ah.class */
public class C3474ah extends AbstractC16280c {

    /* renamed from: A */
    private static final AbstractC20997a.AbstractC20998a f13154A = null;

    /* renamed from: B */
    private static final AbstractC20997a.AbstractC20998a f13155B = null;

    /* renamed from: C */
    private static final AbstractC20997a.AbstractC20998a f13156C = null;

    /* renamed from: D */
    private static final AbstractC20997a.AbstractC20998a f13157D = null;

    /* renamed from: E */
    private static final AbstractC20997a.AbstractC20998a f13158E = null;

    /* renamed from: F */
    private static final AbstractC20997a.AbstractC20998a f13159F = null;

    /* renamed from: G */
    private static final AbstractC20997a.AbstractC20998a f13160G = null;

    /* renamed from: H */
    private static final AbstractC20997a.AbstractC20998a f13161H = null;

    /* renamed from: I */
    private static final AbstractC20997a.AbstractC20998a f13162I = null;

    /* renamed from: J */
    private static final AbstractC20997a.AbstractC20998a f13163J = null;

    /* renamed from: K */
    private static final AbstractC20997a.AbstractC20998a f13164K = null;

    /* renamed from: L */
    private static final AbstractC20997a.AbstractC20998a f13165L = null;

    /* renamed from: M */
    private static final AbstractC20997a.AbstractC20998a f13166M = null;

    /* renamed from: N */
    private static final AbstractC20997a.AbstractC20998a f13167N = null;

    /* renamed from: O */
    private static final AbstractC20997a.AbstractC20998a f13168O = null;

    /* renamed from: j */
    public static final AbstractC20997a.AbstractC20998a f13169j = null;

    /* renamed from: k */
    public static final AbstractC20997a.AbstractC20998a f13170k = null;

    /* renamed from: l */
    public static final AbstractC20997a.AbstractC20998a f13171l = null;

    /* renamed from: m */
    public static final AbstractC20997a.AbstractC20998a f13172m = null;

    /* renamed from: n */
    public static final AbstractC20997a.AbstractC20998a f13173n = null;

    /* renamed from: o */
    public static final AbstractC20997a.AbstractC20998a f13174o = null;

    /* renamed from: p */
    public static final AbstractC20997a.AbstractC20998a f13175p = null;

    /* renamed from: q */
    public static final AbstractC20997a.AbstractC20998a f13176q = null;

    /* renamed from: r */
    public static final AbstractC20997a.AbstractC20998a f13177r = null;

    /* renamed from: s */
    public static final AbstractC20997a.AbstractC20998a f13178s = null;

    /* renamed from: t */
    public static final AbstractC20997a.AbstractC20998a f13179t = null;

    /* renamed from: u */
    public static final AbstractC20997a.AbstractC20998a f13180u = null;

    /* renamed from: v */
    private static AbstractC16287f f13181v = AbstractC16287f.m7514a(C3474ah.class);

    /* renamed from: x */
    private static final AbstractC20997a.AbstractC20998a f13182x = null;

    /* renamed from: y */
    private static final AbstractC20997a.AbstractC20998a f13183y = null;

    /* renamed from: z */
    private static final AbstractC20997a.AbstractC20998a f13184z = null;

    /* renamed from: c */
    public long f13187c;

    /* renamed from: d */
    public int f13188d;

    /* renamed from: e */
    public int f13189e;

    /* renamed from: f */
    public float f13190f;

    /* renamed from: h */
    public double f13192h;

    /* renamed from: i */
    public double f13193i;

    /* renamed from: w */
    private long f13194w;

    /* renamed from: a */
    public Date f13185a = new Date(0);

    /* renamed from: b */
    public Date f13186b = new Date(0);

    /* renamed from: g */
    public C16289h f13191g = C16289h.f57536j;

    static {
        m37899f();
    }

    public C3474ah() {
        super("tkhd");
    }

    /* renamed from: f */
    private static void m37899f() {
        C20987b c20987b = new C20987b("TrackHeaderBox.java", C3474ah.class);
        f13182x = c20987b.m164a("method-execution", c20987b.m165a("1", "getCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 62);
        f13183y = c20987b.m164a("method-execution", c20987b.m165a("1", "getModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 66);
        f13160G = c20987b.m164a("method-execution", c20987b.m165a("1", "getContent", "com.coremedia.iso.boxes.TrackHeaderBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 145);
        f13161H = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.lang.String"), 173);
        f13170k = c20987b.m164a("method-execution", c20987b.m165a("1", "setCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "creationTime", "", "void"), 199);
        f13171l = c20987b.m164a("method-execution", c20987b.m165a("1", "setModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "modificationTime", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE);
        f13172m = c20987b.m164a("method-execution", c20987b.m165a("1", "setTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "trackId", "", "void"), 214);
        f13162I = c20987b.m164a("method-execution", c20987b.m165a("1", "setDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "long", VastIconXmlManager.DURATION, "", "void"), 218);
        f13173n = c20987b.m164a("method-execution", c20987b.m165a("1", "setLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "layer", "", "void"), 225);
        f13174o = c20987b.m164a("method-execution", c20987b.m165a("1", "setAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "alternateGroup", "", "void"), 229);
        f13175p = c20987b.m164a("method-execution", c20987b.m165a("1", "setVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "float", "volume", "", "void"), 233);
        f13176q = c20987b.m164a("method-execution", c20987b.m165a("1", "setMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 237);
        f13184z = c20987b.m164a("method-execution", c20987b.m165a("1", "getTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 70);
        f13177r = c20987b.m164a("method-execution", c20987b.m165a("1", "setWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "width", "", "void"), 241);
        f13178s = c20987b.m164a("method-execution", c20987b.m165a("1", "setHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "height", "", "void"), 245);
        f13163J = c20987b.m164a("method-execution", c20987b.m165a("1", "isEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 250);
        f13164K = c20987b.m164a("method-execution", c20987b.m165a("1", "isInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 254);
        f13165L = c20987b.m164a("method-execution", c20987b.m165a("1", "isInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 258);
        f13166M = c20987b.m164a("method-execution", c20987b.m165a("1", "isInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 262);
        f13179t = c20987b.m164a("method-execution", c20987b.m165a("1", "setEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "enabled", "", "void"), 266);
        f13180u = c20987b.m164a("method-execution", c20987b.m165a("1", "setInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inMovie", "", "void"), 274);
        f13167N = c20987b.m164a("method-execution", c20987b.m165a("1", "setInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPreview", "", "void"), 282);
        f13168O = c20987b.m164a("method-execution", c20987b.m165a("1", "setInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPoster", "", "void"), 290);
        f13154A = c20987b.m164a("method-execution", c20987b.m165a("1", "getDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 74);
        f13155B = c20987b.m164a("method-execution", c20987b.m165a("1", "getLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 78);
        f13156C = c20987b.m164a("method-execution", c20987b.m165a("1", "getAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 82);
        f13157D = c20987b.m164a("method-execution", c20987b.m165a("1", "getVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "float"), 86);
        f13169j = c20987b.m164a("method-execution", c20987b.m165a("1", "getMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 90);
        f13158E = c20987b.m164a("method-execution", c20987b.m165a("1", "getWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 94);
        f13159F = c20987b.m164a("method-execution", c20987b.m165a("1", "getHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 98);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if (m7519h() == 1) {
            this.f13185a = C16283c.m7516a(C3515e.m37847d(byteBuffer));
            this.f13186b = C16283c.m7516a(C3515e.m37847d(byteBuffer));
            this.f13187c = C3515e.m37851a(byteBuffer);
            C3515e.m37851a(byteBuffer);
            this.f13194w = byteBuffer.getLong();
        } else {
            this.f13185a = C16283c.m7516a(C3515e.m37851a(byteBuffer));
            this.f13186b = C16283c.m7516a(C3515e.m37851a(byteBuffer));
            this.f13187c = C3515e.m37851a(byteBuffer);
            C3515e.m37851a(byteBuffer);
            this.f13194w = byteBuffer.getInt();
        }
        if (this.f13194w < -1) {
            f13181v.mo7512b("tkhd duration is not in expected range");
        }
        C3515e.m37851a(byteBuffer);
        C3515e.m37851a(byteBuffer);
        this.f13188d = C3515e.m37848c(byteBuffer);
        this.f13189e = C3515e.m37848c(byteBuffer);
        this.f13190f = C3515e.m37844g(byteBuffer);
        C3515e.m37848c(byteBuffer);
        this.f13191g = C16289h.m7508a(byteBuffer);
        this.f13192h = C3515e.m37846e(byteBuffer);
        this.f13193i = C3515e.m37846e(byteBuffer);
    }

    /* renamed from: a */
    public final long m37905a() {
        AbstractC20997a m163a = C20987b.m163a(f13184z, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13187c;
    }

    /* renamed from: a */
    public final void m37904a(long j) {
        AbstractC20997a m162a = C20987b.m162a(f13162I, this, this, C20985a.m169a(j));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.f13194w = j;
        if (j >= 4294967296L) {
            m7520c(1);
        }
    }

    /* renamed from: b */
    public final int m37903b() {
        AbstractC20997a m163a = C20987b.m163a(f13155B, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13188d;
    }

    /* renamed from: c */
    public final float m37902c() {
        AbstractC20997a m163a = C20987b.m163a(f13157D, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13190f;
    }

    /* renamed from: d */
    public final double m37901d() {
        AbstractC20997a m163a = C20987b.m163a(f13158E, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13192h;
    }

    /* renamed from: e */
    public final double m37900e() {
        AbstractC20997a m163a = C20987b.m163a(f13159F, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13193i;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        AbstractC20997a m162a = C20987b.m162a(f13160G, this, this, byteBuffer);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        m7521b(byteBuffer);
        if (m7519h() == 1) {
            C3516f.m37839a(byteBuffer, C16283c.m7515a(this.f13185a));
            C3516f.m37839a(byteBuffer, C16283c.m7515a(this.f13186b));
            C3516f.m37835b(byteBuffer, this.f13187c);
            C3516f.m37835b(byteBuffer, 0L);
            byteBuffer.putLong(this.f13194w);
        } else {
            C3516f.m37835b(byteBuffer, C16283c.m7515a(this.f13185a));
            C3516f.m37835b(byteBuffer, C16283c.m7515a(this.f13186b));
            C3516f.m37835b(byteBuffer, this.f13187c);
            C3516f.m37835b(byteBuffer, 0L);
            byteBuffer.putInt((int) this.f13194w);
        }
        C3516f.m37835b(byteBuffer, 0L);
        C3516f.m37835b(byteBuffer, 0L);
        C3516f.m37836b(byteBuffer, this.f13188d);
        C3516f.m37836b(byteBuffer, this.f13189e);
        C3516f.m37833c(byteBuffer, this.f13190f);
        C3516f.m37836b(byteBuffer, 0);
        this.f13191g.m7507b(byteBuffer);
        C3516f.m37841a(byteBuffer, this.f13192h);
        C3516f.m37841a(byteBuffer, this.f13193i);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (m7519h() == 1 ? '$' : (char) 24) + '<';
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13161H, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder();
        sb.append("TrackHeaderBox[");
        sb.append("creationTime=");
        AbstractC20997a m163a2 = C20987b.m163a(f13182x, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13185a);
        sb.append(";");
        sb.append("modificationTime=");
        AbstractC20997a m163a3 = C20987b.m163a(f13183y, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a3);
        sb.append(this.f13186b);
        sb.append(";");
        sb.append("trackId=");
        sb.append(m37905a());
        sb.append(";");
        sb.append("duration=");
        AbstractC20997a m163a4 = C20987b.m163a(f13154A, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a4);
        sb.append(this.f13194w);
        sb.append(";");
        sb.append("layer=");
        sb.append(m37903b());
        sb.append(";");
        sb.append("alternateGroup=");
        AbstractC20997a m163a5 = C20987b.m163a(f13156C, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a5);
        sb.append(this.f13189e);
        sb.append(";");
        sb.append("volume=");
        sb.append(m37902c());
        sb.append(";");
        sb.append("matrix=");
        sb.append(this.f13191g);
        sb.append(";");
        sb.append("width=");
        sb.append(m37901d());
        sb.append(";");
        sb.append("height=");
        sb.append(m37900e());
        sb.append("]");
        return sb.toString();
    }
}
