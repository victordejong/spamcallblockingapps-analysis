package com.p102b.p103a.p104a.p105a;

import com.explorestack.iab.vast.VastError;
import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.a.g */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/g.class */
public class C3462g extends AbstractC16280c {

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13097c = null;

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f13098d = null;

    /* renamed from: e */
    public static final AbstractC20997a.AbstractC20998a f13099e = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f13100g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f13101h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f13102i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f13103j = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f13104k = null;

    /* renamed from: l */
    private static final AbstractC20997a.AbstractC20998a f13105l = null;

    /* renamed from: m */
    private static final AbstractC20997a.AbstractC20998a f13106m = null;

    /* renamed from: n */
    private static final AbstractC20997a.AbstractC20998a f13107n = null;

    /* renamed from: o */
    private static final AbstractC20997a.AbstractC20998a f13108o = null;

    /* renamed from: p */
    private static final AbstractC20997a.AbstractC20998a f13109p = null;

    /* renamed from: q */
    private static final AbstractC20997a.AbstractC20998a f13110q = null;

    /* renamed from: r */
    private static final AbstractC20997a.AbstractC20998a f13111r = null;

    /* renamed from: s */
    private static final AbstractC20997a.AbstractC20998a f13112s = null;

    /* renamed from: t */
    private static final AbstractC20997a.AbstractC20998a f13113t = null;

    /* renamed from: u */
    private static final AbstractC20997a.AbstractC20998a f13114u = null;

    /* renamed from: v */
    private static final AbstractC20997a.AbstractC20998a f13115v = null;

    /* renamed from: w */
    private static final AbstractC20997a.AbstractC20998a f13116w = null;

    /* renamed from: a */
    public int f13117a;

    /* renamed from: b */
    public C3458c f13118b;

    /* renamed from: f */
    private List<C3463a> f13119f = new ArrayList();

    /* renamed from: com.b.a.a.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/g$a.class */
    public static final class C3463a {

        /* renamed from: a */
        public long f13120a;

        /* renamed from: b */
        public long f13121b;

        /* renamed from: c */
        public C3458c f13122c;

        /* renamed from: d */
        public long f13123d;

        public C3463a() {
        }

        public C3463a(long j, long j2, C3458c c3458c, int i) {
            this.f13120a = j;
            this.f13121b = j2;
            this.f13122c = c3458c;
            this.f13123d = i;
        }

        public final String toString() {
            return "Entry{duration=" + this.f13120a + ", size=" + this.f13121b + ", dlags=" + this.f13122c + ", compTimeOffset=" + this.f13123d + '}';
        }
    }

    static {
        m37917j();
    }

    public C3462g() {
        super("trun");
    }

    /* renamed from: j */
    private static void m37917j() {
        C20987b c20987b = new C20987b("TrackRunBox.java", C3462g.class);
        f13100g = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.util.List"), 57);
        f13101h = c20987b.m164a("method-execution", c20987b.m165a("1", "setDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "int", "dataOffset", "", "void"), 120);
        f13109p = c20987b.m164a("method-execution", c20987b.m165a("1", "setDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 267);
        f13110q = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 275);
        f13111r = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 283);
        f13112s = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 292);
        f13113t = c20987b.m164a("method-execution", c20987b.m165a("1", "setSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), VastError.ERROR_CODE_GENERAL_WRAPPER);
        f13098d = c20987b.m164a("method-execution", c20987b.m165a("1", "getDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "int"), 309);
        f13099e = c20987b.m164a("method-execution", c20987b.m165a("1", "getFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 313);
        f13114u = c20987b.m164a("method-execution", c20987b.m165a("1", "setFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "firstSampleFlags", "", "void"), 317);
        f13115v = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.lang.String"), 327);
        f13116w = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "java.util.List", "entries", "", "void"), 342);
        f13102i = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleCompositionTimeOffsets", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "[J"), 129);
        f13103j = c20987b.m164a("method-execution", c20987b.m165a("1", "getSampleCount", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "long"), 238);
        f13104k = c20987b.m164a("method-execution", c20987b.m165a("1", "isDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 242);
        f13097c = c20987b.m164a("method-execution", c20987b.m165a("1", "isFirstSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 246);
        f13105l = c20987b.m164a("method-execution", c20987b.m165a("1", "isSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 251);
        f13106m = c20987b.m164a("method-execution", c20987b.m165a("1", "isSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 255);
        f13107n = c20987b.m164a("method-execution", c20987b.m165a("1", "isSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 259);
        f13108o = c20987b.m164a("method-execution", c20987b.m165a("1", "isSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 263);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        long m37851a = C3515e.m37851a(byteBuffer);
        if ((m7518i() & 1) == 1) {
            this.f13117a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        } else {
            this.f13117a = -1;
        }
        if ((m7518i() & 4) == 4) {
            this.f13118b = new C3458c(byteBuffer);
        }
        for (int i = 0; i < m37851a; i++) {
            C3463a c3463a = new C3463a();
            if ((m7518i() & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                c3463a.f13120a = C3515e.m37851a(byteBuffer);
            }
            if ((m7518i() & 512) == 512) {
                c3463a.f13121b = C3515e.m37851a(byteBuffer);
            }
            if ((m7518i() & 1024) == 1024) {
                c3463a.f13122c = new C3458c(byteBuffer);
            }
            if ((m7518i() & 2048) == 2048) {
                c3463a.f13123d = byteBuffer.getInt();
            }
            this.f13119f.add(c3463a);
        }
    }

    /* renamed from: a */
    public final List<C3463a> m37924a() {
        AbstractC20997a m163a = C20987b.m163a(f13100g, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13119f;
    }

    /* renamed from: b */
    public final long m37923b() {
        AbstractC20997a m163a = C20987b.m163a(f13103j, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13119f.size();
    }

    /* renamed from: c */
    public final boolean m37922c() {
        AbstractC20997a m163a = C20987b.m163a(f13104k, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (m7518i() & 1) == 1;
    }

    /* renamed from: d */
    public final boolean m37921d() {
        AbstractC20997a m163a = C20987b.m163a(f13105l, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (m7518i() & 512) == 512;
    }

    /* renamed from: e */
    public final boolean m37920e() {
        AbstractC20997a m163a = C20987b.m163a(f13106m, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (m7518i() & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
    }

    /* renamed from: f */
    public final boolean m37919f() {
        AbstractC20997a m163a = C20987b.m163a(f13107n, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (m7518i() & 1024) == 1024;
    }

    /* renamed from: g */
    public final boolean m37918g() {
        AbstractC20997a m163a = C20987b.m163a(f13108o, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (m7518i() & 2048) == 2048;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13119f.size());
        int i = m7518i();
        if ((i & 1) == 1) {
            C3516f.m37835b(byteBuffer, this.f13117a);
        }
        if ((i & 4) == 4) {
            this.f13118b.m37934a(byteBuffer);
        }
        for (C3463a c3463a : this.f13119f) {
            if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                C3516f.m37835b(byteBuffer, c3463a.f13120a);
            }
            if ((i & 512) == 512) {
                C3516f.m37835b(byteBuffer, c3463a.f13121b);
            }
            if ((i & 1024) == 1024) {
                c3463a.f13122c.m37934a(byteBuffer);
            }
            if ((i & 2048) == 2048) {
                if (m7519h() == 0) {
                    C3516f.m37835b(byteBuffer, c3463a.f13123d);
                } else {
                    byteBuffer.putInt((int) c3463a.f13123d);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        int i = m7518i();
        char c = (i & 1) == 1 ? '\f' : '\b';
        char c2 = c;
        if ((i & 4) == 4) {
            c2 = c + 4;
        }
        char c3 = 0;
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
            c3 = 4;
        }
        char c4 = c3;
        if ((i & 512) == 512) {
            c4 = c3 + 4;
        }
        char c5 = c4;
        if ((i & 1024) == 1024) {
            c5 = c4 + 4;
        }
        char c6 = c5;
        if ((i & 2048) == 2048) {
            c6 = c5 + 4;
        }
        return c2 + (c6 * this.f13119f.size());
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13115v, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "TrackRunBox{sampleCount=" + this.f13119f.size() + ", dataOffset=" + this.f13117a + ", dataOffsetPresent=" + m37922c() + ", sampleSizePresent=" + m37921d() + ", sampleDurationPresent=" + m37920e() + ", sampleFlagsPresentPresent=" + m37919f() + ", sampleCompositionTimeOffsetPresent=" + m37918g() + ", firstSampleFlags=" + this.f13118b + '}';
    }
}
