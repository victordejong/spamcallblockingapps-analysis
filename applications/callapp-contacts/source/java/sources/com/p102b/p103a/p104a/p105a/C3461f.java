package com.p102b.p103a.p104a.p105a;

import com.explorestack.protobuf.openrtb.LossReason;
import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.mopub.mobileads.resource.DrawableConstants;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.a.f */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/f.class */
public class C3461f extends AbstractC16280c {

    /* renamed from: A */
    private static final AbstractC20997a.AbstractC20998a f13067A = null;

    /* renamed from: B */
    private static final AbstractC20997a.AbstractC20998a f13068B = null;

    /* renamed from: C */
    private static final AbstractC20997a.AbstractC20998a f13069C = null;

    /* renamed from: D */
    private static final AbstractC20997a.AbstractC20998a f13070D = null;

    /* renamed from: b */
    public static final AbstractC20997a.AbstractC20998a f13071b = null;

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13072c = null;

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f13073d = null;

    /* renamed from: e */
    public static final AbstractC20997a.AbstractC20998a f13074e = null;

    /* renamed from: m */
    private static final AbstractC20997a.AbstractC20998a f13075m = null;

    /* renamed from: n */
    private static final AbstractC20997a.AbstractC20998a f13076n = null;

    /* renamed from: o */
    private static final AbstractC20997a.AbstractC20998a f13077o = null;

    /* renamed from: p */
    private static final AbstractC20997a.AbstractC20998a f13078p = null;

    /* renamed from: q */
    private static final AbstractC20997a.AbstractC20998a f13079q = null;

    /* renamed from: r */
    private static final AbstractC20997a.AbstractC20998a f13080r = null;

    /* renamed from: s */
    private static final AbstractC20997a.AbstractC20998a f13081s = null;

    /* renamed from: t */
    private static final AbstractC20997a.AbstractC20998a f13082t = null;

    /* renamed from: u */
    private static final AbstractC20997a.AbstractC20998a f13083u = null;

    /* renamed from: v */
    private static final AbstractC20997a.AbstractC20998a f13084v = null;

    /* renamed from: w */
    private static final AbstractC20997a.AbstractC20998a f13085w = null;

    /* renamed from: x */
    private static final AbstractC20997a.AbstractC20998a f13086x = null;

    /* renamed from: y */
    private static final AbstractC20997a.AbstractC20998a f13087y = null;

    /* renamed from: z */
    private static final AbstractC20997a.AbstractC20998a f13088z = null;

    /* renamed from: a */
    public C3458c f13089a;

    /* renamed from: f */
    private long f13090f;

    /* renamed from: h */
    private long f13092h;

    /* renamed from: k */
    private boolean f13095k;

    /* renamed from: l */
    private boolean f13096l;

    /* renamed from: g */
    private long f13091g = -1;

    /* renamed from: i */
    private long f13093i = -1;

    /* renamed from: j */
    private long f13094j = -1;

    static {
        m37925f();
    }

    public C3461f() {
        super("tfhd");
    }

    /* renamed from: f */
    private static void m37925f() {
        C20987b c20987b = new C20987b("TrackFragmentHeaderBox.java", C3461f.class);
        f13075m = c20987b.m164a("method-execution", c20987b.m165a("1", "hasBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), WebSocketProtocol.PAYLOAD_SHORT);
        f13076n = c20987b.m164a("method-execution", c20987b.m165a("1", "hasSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 130);
        f13082t = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "sampleDescriptionIndex", "", "void"), 171);
        f13083u = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 180);
        f13084v = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleDuration", "", "void"), 184);
        f13085w = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 191);
        f13086x = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleSize", "", "void"), 195);
        f13074e = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE);
        f13087y = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE);
        f13088z = c20987b.m164a("method-execution", c20987b.m165a("1", "isDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 217);
        f13067A = c20987b.m164a("method-execution", c20987b.m165a("1", "setDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "boolean", "durationIsEmpty", "", "void"), 221);
        f13068B = c20987b.m164a("method-execution", c20987b.m165a("1", "isDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 230);
        f13071b = c20987b.m164a("method-execution", c20987b.m165a("1", "hasDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 134);
        f13069C = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "boolean", "defaultBaseIsMoof", "", "void"), 234);
        f13070D = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "java.lang.String"), 244);
        f13072c = c20987b.m164a("method-execution", c20987b.m165a("1", "hasDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 138);
        f13073d = c20987b.m164a("method-execution", c20987b.m165a("1", "hasDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 142);
        f13077o = c20987b.m164a("method-execution", c20987b.m165a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 146);
        f13078p = c20987b.m164a("method-execution", c20987b.m165a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "trackId", "", "void"), DrawableConstants.CtaButton.WIDTH_DIPS);
        f13079q = c20987b.m164a("method-execution", c20987b.m165a("1", "getBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 154);
        f13080r = c20987b.m164a("method-execution", c20987b.m165a("1", "setBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "baseDataOffset", "", "void"), 158);
        f13081s = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 167);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13090f = C3515e.m37851a(byteBuffer);
        if ((m7518i() & 1) == 1) {
            this.f13091g = C3515e.m37847d(byteBuffer);
        }
        if ((m7518i() & 2) == 2) {
            this.f13092h = C3515e.m37851a(byteBuffer);
        }
        if ((m7518i() & 8) == 8) {
            this.f13093i = C3515e.m37851a(byteBuffer);
        }
        if ((m7518i() & 16) == 16) {
            this.f13094j = C3515e.m37851a(byteBuffer);
        }
        if ((m7518i() & 32) == 32) {
            this.f13089a = new C3458c(byteBuffer);
        }
        if ((m7518i() & 65536) == 65536) {
            this.f13095k = true;
        }
        if ((m7518i() & 131072) == 131072) {
            this.f13096l = true;
        }
    }

    /* renamed from: a */
    public final boolean m37930a() {
        AbstractC20997a m163a = C20987b.m163a(f13075m, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (m7518i() & 1) != 0;
    }

    /* renamed from: b */
    public final long m37929b() {
        AbstractC20997a m163a = C20987b.m163a(f13077o, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13090f;
    }

    /* renamed from: c */
    public final long m37928c() {
        AbstractC20997a m163a = C20987b.m163a(f13079q, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13091g;
    }

    /* renamed from: d */
    public final long m37927d() {
        AbstractC20997a m163a = C20987b.m163a(f13083u, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13093i;
    }

    /* renamed from: e */
    public final long m37926e() {
        AbstractC20997a m163a = C20987b.m163a(f13085w, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13094j;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13090f);
        if ((m7518i() & 1) == 1) {
            C3516f.m37839a(byteBuffer, m37928c());
        }
        if ((m7518i() & 2) == 2) {
            AbstractC20997a m163a = C20987b.m163a(f13081s, this, this);
            C16297h.m7484a();
            C16297h.m7483a(m163a);
            C3516f.m37835b(byteBuffer, this.f13092h);
        }
        if ((m7518i() & 8) == 8) {
            C3516f.m37835b(byteBuffer, m37927d());
        }
        if ((m7518i() & 16) == 16) {
            C3516f.m37835b(byteBuffer, m37926e());
        }
        if ((m7518i() & 32) == 32) {
            this.f13089a.m37934a(byteBuffer);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        int i = m7518i();
        char c = (i & 1) == 1 ? (char) 16 : '\b';
        char c2 = c;
        if ((i & 2) == 2) {
            c2 = c + 4;
        }
        char c3 = c2;
        if ((i & 8) == 8) {
            c3 = c2 + 4;
        }
        char c4 = c3;
        if ((i & 16) == 16) {
            c4 = c3 + 4;
        }
        char c5 = c4;
        if ((i & 32) == 32) {
            c5 = c4 + 4;
        }
        return c5;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13070D, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "TrackFragmentHeaderBox{trackId=" + this.f13090f + ", baseDataOffset=" + this.f13091g + ", sampleDescriptionIndex=" + this.f13092h + ", defaultSampleDuration=" + this.f13093i + ", defaultSampleSize=" + this.f13094j + ", defaultSampleFlags=" + this.f13089a + ", durationIsEmpty=" + this.f13095k + ", defaultBaseIsMoof=" + this.f13096l + '}';
    }
}
