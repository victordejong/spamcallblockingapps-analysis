package com.p102b.p103a.p104a.p105a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.a.d */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/d.class */
public class C3459d extends AbstractC16280c {

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f13051d = null;

    /* renamed from: e */
    public static final AbstractC20997a.AbstractC20998a f13052e = null;

    /* renamed from: f */
    public static final AbstractC20997a.AbstractC20998a f13053f = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f13054i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f13055j = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f13056k = null;

    /* renamed from: l */
    private static final AbstractC20997a.AbstractC20998a f13057l = null;

    /* renamed from: m */
    private static final AbstractC20997a.AbstractC20998a f13058m = null;

    /* renamed from: n */
    private static final AbstractC20997a.AbstractC20998a f13059n = null;

    /* renamed from: o */
    private static final AbstractC20997a.AbstractC20998a f13060o = null;

    /* renamed from: p */
    private static final AbstractC20997a.AbstractC20998a f13061p = null;

    /* renamed from: a */
    public long f13062a;

    /* renamed from: b */
    public long f13063b;

    /* renamed from: c */
    public C3458c f13064c;

    /* renamed from: g */
    private long f13065g;

    /* renamed from: h */
    private long f13066h;

    static {
        m37932b();
    }

    public C3459d() {
        super("trex");
    }

    /* renamed from: b */
    private static void m37932b() {
        C20987b c20987b = new C20987b("TrackExtendsBox.java", C3459d.class);
        f13054i = c20987b.m164a("method-execution", c20987b.m165a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 72);
        f13055j = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 76);
        f13061p = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 112);
        f13051d = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 80);
        f13052e = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 84);
        f13053f = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 88);
        f13056k = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleFlagsStr", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "java.lang.String"), 92);
        f13057l = c20987b.m164a("method-execution", c20987b.m165a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "trackId", "", "void"), 96);
        f13058m = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDescriptionIndex", "", "void"), 100);
        f13059n = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDuration", "", "void"), 104);
        f13060o = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleSize", "", "void"), 108);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13065g = C3515e.m37851a(byteBuffer);
        this.f13066h = C3515e.m37851a(byteBuffer);
        this.f13062a = C3515e.m37851a(byteBuffer);
        this.f13063b = C3515e.m37851a(byteBuffer);
        this.f13064c = new C3458c(byteBuffer);
    }

    /* renamed from: a */
    public final long m37933a() {
        AbstractC20997a m163a = C20987b.m163a(f13054i, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13065g;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13065g);
        C3516f.m37835b(byteBuffer, this.f13066h);
        C3516f.m37835b(byteBuffer, this.f13062a);
        C3516f.m37835b(byteBuffer, this.f13063b);
        this.f13064c.m37934a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return 24L;
    }
}
