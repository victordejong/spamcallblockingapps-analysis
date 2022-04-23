package com.b.a.a.a;

import com.b.a.e;
import com.explorestack.protobuf.openrtb.LossReason;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import com.mopub.mobileads.resource.DrawableConstants;
import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/f.class */
public class f extends c {
    private static final a.AbstractC0755a A = null;
    private static final a.AbstractC0755a B = null;
    private static final a.AbstractC0755a C = null;
    private static final a.AbstractC0755a D = null;

    /* renamed from: b  reason: collision with root package name */
    public static final a.AbstractC0755a f7045b = null;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7046c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f7047d = null;
    public static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a m = null;
    private static final a.AbstractC0755a n = null;
    private static final a.AbstractC0755a o = null;
    private static final a.AbstractC0755a p = null;
    private static final a.AbstractC0755a q = null;
    private static final a.AbstractC0755a r = null;
    private static final a.AbstractC0755a s = null;
    private static final a.AbstractC0755a t = null;
    private static final a.AbstractC0755a u = null;
    private static final a.AbstractC0755a v = null;
    private static final a.AbstractC0755a w = null;
    private static final a.AbstractC0755a x = null;
    private static final a.AbstractC0755a y = null;
    private static final a.AbstractC0755a z = null;

    /* renamed from: a  reason: collision with root package name */
    public c f7048a;
    private long f;
    private long h;
    private boolean k;
    private boolean l;
    private long g = -1;
    private long i = -1;
    private long j = -1;

    static {
        f();
    }

    public f() {
        super("tfhd");
    }

    private static void f() {
        b bVar = new b("TrackFragmentHeaderBox.java", f.class);
        m = bVar.a("method-execution", bVar.a("1", "hasBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), WebSocketProtocol.PAYLOAD_SHORT);
        n = bVar.a("method-execution", bVar.a("1", "hasSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 130);
        t = bVar.a("method-execution", bVar.a("1", "setSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "sampleDescriptionIndex", "", "void"), 171);
        u = bVar.a("method-execution", bVar.a("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 180);
        v = bVar.a("method-execution", bVar.a("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleDuration", "", "void"), 184);
        w = bVar.a("method-execution", bVar.a("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 191);
        x = bVar.a("method-execution", bVar.a("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleSize", "", "void"), 195);
        e = bVar.a("method-execution", bVar.a("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE);
        y = bVar.a("method-execution", bVar.a("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE);
        z = bVar.a("method-execution", bVar.a("1", "isDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 217);
        A = bVar.a("method-execution", bVar.a("1", "setDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "boolean", "durationIsEmpty", "", "void"), 221);
        B = bVar.a("method-execution", bVar.a("1", "isDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 230);
        f7045b = bVar.a("method-execution", bVar.a("1", "hasDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 134);
        C = bVar.a("method-execution", bVar.a("1", "setDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "boolean", "defaultBaseIsMoof", "", "void"), 234);
        D = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "java.lang.String"), 244);
        f7046c = bVar.a("method-execution", bVar.a("1", "hasDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 138);
        f7047d = bVar.a("method-execution", bVar.a("1", "hasDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "boolean"), 142);
        o = bVar.a("method-execution", bVar.a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 146);
        p = bVar.a("method-execution", bVar.a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "trackId", "", "void"), DrawableConstants.CtaButton.WIDTH_DIPS);
        q = bVar.a("method-execution", bVar.a("1", "getBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 154);
        r = bVar.a("method-execution", bVar.a("1", "setBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "baseDataOffset", "", "void"), 158);
        s = bVar.a("method-execution", bVar.a("1", "getSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 167);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f = e.a(byteBuffer);
        if ((i() & 1) == 1) {
            this.g = e.d(byteBuffer);
        }
        if ((i() & 2) == 2) {
            this.h = e.a(byteBuffer);
        }
        if ((i() & 8) == 8) {
            this.i = e.a(byteBuffer);
        }
        if ((i() & 16) == 16) {
            this.j = e.a(byteBuffer);
        }
        if ((i() & 32) == 32) {
            this.f7048a = new c(byteBuffer);
        }
        if ((i() & 65536) == 65536) {
            this.k = true;
        }
        if ((i() & 131072) == 131072) {
            this.l = true;
        }
    }

    public final boolean a() {
        a a2 = b.a(m, this, this);
        h.a();
        h.a(a2);
        return (i() & 1) != 0;
    }

    public final long b() {
        a a2 = b.a(o, this, this);
        h.a();
        h.a(a2);
        return this.f;
    }

    public final long c() {
        a a2 = b.a(q, this, this);
        h.a();
        h.a(a2);
        return this.g;
    }

    public final long d() {
        a a2 = b.a(u, this, this);
        h.a();
        h.a(a2);
        return this.i;
    }

    public final long e() {
        a a2 = b.a(w, this, this);
        h.a();
        h.a(a2);
        return this.j;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        com.b.a.f.b(byteBuffer, this.f);
        if ((i() & 1) == 1) {
            com.b.a.f.a(byteBuffer, c());
        }
        if ((i() & 2) == 2) {
            a a2 = b.a(s, this, this);
            h.a();
            h.a(a2);
            com.b.a.f.b(byteBuffer, this.h);
        }
        if ((i() & 8) == 8) {
            com.b.a.f.b(byteBuffer, d());
        }
        if ((i() & 16) == 16) {
            com.b.a.f.b(byteBuffer, e());
        }
        if ((i() & 32) == 32) {
            this.f7048a.a(byteBuffer);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // com.googlecode.mp4parser.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getContentSize() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.i()
            r6 = r0
            r0 = r6
            r1 = 1
            r0 = r0 & r1
            r1 = 1
            if (r0 != r1) goto L_0x0013
            r0 = 16
            r7 = r0
            goto L_0x0017
        L_0x0013:
            r0 = 8
            r7 = r0
        L_0x0017:
            r0 = r7
            r9 = r0
            r0 = r6
            r1 = 2
            r0 = r0 & r1
            r1 = 2
            if (r0 != r1) goto L_0x0028
            r0 = r7
            r1 = 4
            long r0 = r0 + r1
            r9 = r0
        L_0x0028:
            r0 = r9
            r7 = r0
            r0 = r6
            r1 = 8
            r0 = r0 & r1
            r1 = 8
            if (r0 != r1) goto L_0x003b
            r0 = r9
            r1 = 4
            long r0 = r0 + r1
            r7 = r0
        L_0x003b:
            r0 = r7
            r9 = r0
            r0 = r6
            r1 = 16
            r0 = r0 & r1
            r1 = 16
            if (r0 != r1) goto L_0x004e
            r0 = r7
            r1 = 4
            long r0 = r0 + r1
            r9 = r0
        L_0x004e:
            r0 = r9
            r7 = r0
            r0 = r6
            r1 = 32
            r0 = r0 & r1
            r1 = 32
            if (r0 != r1) goto L_0x0061
            r0 = r9
            r1 = 4
            long r0 = r0 + r1
            r7 = r0
        L_0x0061:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.f.getContentSize():long");
    }

    public String toString() {
        a a2 = b.a(D, this, this);
        h.a();
        h.a(a2);
        return "TrackFragmentHeaderBox{trackId=" + this.f + ", baseDataOffset=" + this.g + ", sampleDescriptionIndex=" + this.h + ", defaultSampleDuration=" + this.i + ", defaultSampleSize=" + this.j + ", defaultSampleFlags=" + this.f7048a + ", durationIsEmpty=" + this.k + ", defaultBaseIsMoof=" + this.l + '}';
    }
}
