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
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.s */
/* loaded from: classes-dex2jar.jar:com/b/a/a/s.class */
public class C3502s extends AbstractC16280c {

    /* renamed from: A */
    private static final AbstractC20997a.AbstractC20998a f13300A = null;

    /* renamed from: B */
    private static final AbstractC20997a.AbstractC20998a f13301B = null;

    /* renamed from: C */
    private static final AbstractC20997a.AbstractC20998a f13302C = null;

    /* renamed from: D */
    private static final AbstractC20997a.AbstractC20998a f13303D = null;

    /* renamed from: E */
    private static final AbstractC20997a.AbstractC20998a f13304E = null;

    /* renamed from: F */
    private static final AbstractC20997a.AbstractC20998a f13305F = null;

    /* renamed from: G */
    private static final AbstractC20997a.AbstractC20998a f13306G = null;

    /* renamed from: H */
    private static final AbstractC20997a.AbstractC20998a f13307H = null;

    /* renamed from: I */
    private static final AbstractC20997a.AbstractC20998a f13308I = null;

    /* renamed from: J */
    private static final AbstractC20997a.AbstractC20998a f13309J = null;

    /* renamed from: K */
    private static final AbstractC20997a.AbstractC20998a f13310K = null;

    /* renamed from: L */
    private static final AbstractC20997a.AbstractC20998a f13311L = null;

    /* renamed from: M */
    private static final AbstractC20997a.AbstractC20998a f13312M = null;

    /* renamed from: N */
    private static final AbstractC20997a.AbstractC20998a f13313N = null;

    /* renamed from: O */
    private static final AbstractC20997a.AbstractC20998a f13314O = null;

    /* renamed from: P */
    private static final AbstractC20997a.AbstractC20998a f13315P = null;

    /* renamed from: Q */
    private static final AbstractC20997a.AbstractC20998a f13316Q = null;

    /* renamed from: R */
    private static final AbstractC20997a.AbstractC20998a f13317R = null;

    /* renamed from: g */
    public static final AbstractC20997a.AbstractC20998a f13318g = null;

    /* renamed from: h */
    public static final AbstractC20997a.AbstractC20998a f13319h = null;

    /* renamed from: i */
    public static final AbstractC20997a.AbstractC20998a f13320i = null;

    /* renamed from: j */
    public static final AbstractC20997a.AbstractC20998a f13321j = null;

    /* renamed from: k */
    public static final AbstractC20997a.AbstractC20998a f13322k = null;

    /* renamed from: l */
    public static final AbstractC20997a.AbstractC20998a f13323l = null;

    /* renamed from: m */
    public static final AbstractC20997a.AbstractC20998a f13324m = null;

    /* renamed from: n */
    private static AbstractC16287f f13325n = AbstractC16287f.m7514a(C3502s.class);

    /* renamed from: w */
    private static final AbstractC20997a.AbstractC20998a f13326w = null;

    /* renamed from: x */
    private static final AbstractC20997a.AbstractC20998a f13327x = null;

    /* renamed from: y */
    private static final AbstractC20997a.AbstractC20998a f13328y = null;

    /* renamed from: z */
    private static final AbstractC20997a.AbstractC20998a f13329z = null;

    /* renamed from: a */
    public Date f13330a;

    /* renamed from: b */
    public Date f13331b;

    /* renamed from: c */
    public long f13332c;

    /* renamed from: d */
    public long f13333d;

    /* renamed from: f */
    public long f13335f;

    /* renamed from: q */
    private int f13338q;

    /* renamed from: r */
    private int f13339r;

    /* renamed from: s */
    private int f13340s;

    /* renamed from: t */
    private int f13341t;

    /* renamed from: u */
    private int f13342u;

    /* renamed from: v */
    private int f13343v;

    /* renamed from: o */
    private double f13336o = 1.0d;

    /* renamed from: p */
    private float f13337p = 1.0f;

    /* renamed from: e */
    public C16289h f13334e = C16289h.f57536j;

    static {
        m37875b();
    }

    public C3502s() {
        super("mvhd");
    }

    /* renamed from: b */
    private static void m37875b() {
        C20987b c20987b = new C20987b("MovieHeaderBox.java", C3502s.class);
        f13326w = c20987b.m164a("method-execution", c20987b.m165a("1", "getCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 66);
        f13327x = c20987b.m164a("method-execution", c20987b.m165a("1", "getModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 70);
        f13320i = c20987b.m164a("method-execution", c20987b.m165a("1", "setModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "modificationTime", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE);
        f13321j = c20987b.m164a("method-execution", c20987b.m165a("1", "setTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "timescale", "", "void"), 220);
        f13322k = c20987b.m164a("method-execution", c20987b.m165a("1", "setDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "long", VastIconXmlManager.DURATION, "", "void"), 224);
        f13304E = c20987b.m164a("method-execution", c20987b.m165a("1", "setRate", "com.coremedia.iso.boxes.MovieHeaderBox", "double", "rate", "", "void"), 231);
        f13305F = c20987b.m164a("method-execution", c20987b.m165a("1", "setVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "float", "volume", "", "void"), 235);
        f13323l = c20987b.m164a("method-execution", c20987b.m165a("1", "setMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 239);
        f13324m = c20987b.m164a("method-execution", c20987b.m165a("1", "setNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "nextTrackId", "", "void"), 243);
        f13306G = c20987b.m164a("method-execution", c20987b.m165a("1", "getPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 247);
        f13307H = c20987b.m164a("method-execution", c20987b.m165a("1", "setPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewTime", "", "void"), 251);
        f13308I = c20987b.m164a("method-execution", c20987b.m165a("1", "getPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 255);
        f13328y = c20987b.m164a("method-execution", c20987b.m165a("1", "getTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 74);
        f13309J = c20987b.m164a("method-execution", c20987b.m165a("1", "setPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewDuration", "", "void"), 259);
        f13310K = c20987b.m164a("method-execution", c20987b.m165a("1", "getPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 263);
        f13311L = c20987b.m164a("method-execution", c20987b.m165a("1", "setPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "posterTime", "", "void"), 267);
        f13312M = c20987b.m164a("method-execution", c20987b.m165a("1", "getSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 271);
        f13313N = c20987b.m164a("method-execution", c20987b.m165a("1", "setSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionTime", "", "void"), 275);
        f13314O = c20987b.m164a("method-execution", c20987b.m165a("1", "getSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 279);
        f13315P = c20987b.m164a("method-execution", c20987b.m165a("1", "setSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionDuration", "", "void"), 283);
        f13316Q = c20987b.m164a("method-execution", c20987b.m165a("1", "getCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 287);
        f13317R = c20987b.m164a("method-execution", c20987b.m165a("1", "setCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "currentTime", "", "void"), 291);
        f13329z = c20987b.m164a("method-execution", c20987b.m165a("1", "getDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 78);
        f13300A = c20987b.m164a("method-execution", c20987b.m165a("1", "getRate", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "double"), 82);
        f13301B = c20987b.m164a("method-execution", c20987b.m165a("1", "getVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "float"), 86);
        f13318g = c20987b.m164a("method-execution", c20987b.m165a("1", "getMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 90);
        f13302C = c20987b.m164a("method-execution", c20987b.m165a("1", "getNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 94);
        f13303D = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.lang.String"), 148);
        f13319h = c20987b.m164a("method-execution", c20987b.m165a("1", "setCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "creationTime", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if (m7519h() == 1) {
            this.f13330a = C16283c.m7516a(C3515e.m37847d(byteBuffer));
            this.f13331b = C16283c.m7516a(C3515e.m37847d(byteBuffer));
            this.f13332c = C3515e.m37851a(byteBuffer);
            this.f13333d = byteBuffer.getLong();
        } else {
            this.f13330a = C16283c.m7516a(C3515e.m37851a(byteBuffer));
            this.f13331b = C16283c.m7516a(C3515e.m37851a(byteBuffer));
            this.f13332c = C3515e.m37851a(byteBuffer);
            this.f13333d = byteBuffer.getInt();
        }
        if (this.f13333d < -1) {
            f13325n.mo7512b("mvhd duration is not in expected range");
        }
        this.f13336o = C3515e.m37846e(byteBuffer);
        this.f13337p = C3515e.m37844g(byteBuffer);
        C3515e.m37848c(byteBuffer);
        C3515e.m37851a(byteBuffer);
        C3515e.m37851a(byteBuffer);
        this.f13334e = C16289h.m7508a(byteBuffer);
        this.f13338q = byteBuffer.getInt();
        this.f13339r = byteBuffer.getInt();
        this.f13340s = byteBuffer.getInt();
        this.f13341t = byteBuffer.getInt();
        this.f13342u = byteBuffer.getInt();
        this.f13343v = byteBuffer.getInt();
        this.f13335f = C3515e.m37851a(byteBuffer);
    }

    /* renamed from: a */
    public final long m37876a() {
        AbstractC20997a m163a = C20987b.m163a(f13328y, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13332c;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        if (m7519h() == 1) {
            C3516f.m37839a(byteBuffer, C16283c.m7515a(this.f13330a));
            C3516f.m37839a(byteBuffer, C16283c.m7515a(this.f13331b));
            C3516f.m37835b(byteBuffer, this.f13332c);
            byteBuffer.putLong(this.f13333d);
        } else {
            C3516f.m37835b(byteBuffer, C16283c.m7515a(this.f13330a));
            C3516f.m37835b(byteBuffer, C16283c.m7515a(this.f13331b));
            C3516f.m37835b(byteBuffer, this.f13332c);
            byteBuffer.putInt((int) this.f13333d);
        }
        C3516f.m37841a(byteBuffer, this.f13336o);
        C3516f.m37833c(byteBuffer, this.f13337p);
        C3516f.m37836b(byteBuffer, 0);
        C3516f.m37835b(byteBuffer, 0L);
        C3516f.m37835b(byteBuffer, 0L);
        this.f13334e.m7507b(byteBuffer);
        byteBuffer.putInt(this.f13338q);
        byteBuffer.putInt(this.f13339r);
        byteBuffer.putInt(this.f13340s);
        byteBuffer.putInt(this.f13341t);
        byteBuffer.putInt(this.f13342u);
        byteBuffer.putInt(this.f13343v);
        C3516f.m37835b(byteBuffer, this.f13335f);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (m7519h() == 1 ? ' ' : (char) 20) + 'P';
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13303D, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder();
        sb.append("MovieHeaderBox[");
        sb.append("creationTime=");
        AbstractC20997a m163a2 = C20987b.m163a(f13326w, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13330a);
        sb.append(";");
        sb.append("modificationTime=");
        AbstractC20997a m163a3 = C20987b.m163a(f13327x, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a3);
        sb.append(this.f13331b);
        sb.append(";");
        sb.append("timescale=");
        sb.append(m37876a());
        sb.append(";");
        sb.append("duration=");
        AbstractC20997a m163a4 = C20987b.m163a(f13329z, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a4);
        sb.append(this.f13333d);
        sb.append(";");
        sb.append("rate=");
        AbstractC20997a m163a5 = C20987b.m163a(f13300A, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a5);
        sb.append(this.f13336o);
        sb.append(";");
        sb.append("volume=");
        AbstractC20997a m163a6 = C20987b.m163a(f13301B, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a6);
        sb.append(this.f13337p);
        sb.append(";");
        sb.append("matrix=");
        sb.append(this.f13334e);
        sb.append(";");
        sb.append("nextTrackId=");
        AbstractC20997a m163a7 = C20987b.m163a(f13302C, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a7);
        sb.append(this.f13335f);
        sb.append("]");
        return sb.toString();
    }
}
