package com.b.a.a.a;

import com.b.a.e;
import com.b.a.f;
import com.explorestack.iab.vast.VastError;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/g.class */
public class g extends c {

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7049c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f7050d = null;
    public static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;
    private static final a.AbstractC0755a k = null;
    private static final a.AbstractC0755a l = null;
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

    /* renamed from: a  reason: collision with root package name */
    public int f7051a;

    /* renamed from: b  reason: collision with root package name */
    public c f7052b;
    private List<a> f = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f7053a;

        /* renamed from: b  reason: collision with root package name */
        public long f7054b;

        /* renamed from: c  reason: collision with root package name */
        public c f7055c;

        /* renamed from: d  reason: collision with root package name */
        public long f7056d;

        public a() {
        }

        public a(long j, long j2, c cVar, int i) {
            this.f7053a = j;
            this.f7054b = j2;
            this.f7055c = cVar;
            this.f7056d = i;
        }

        public final String toString() {
            return "Entry{duration=" + this.f7053a + ", size=" + this.f7054b + ", dlags=" + this.f7055c + ", compTimeOffset=" + this.f7056d + '}';
        }
    }

    static {
        j();
    }

    public g() {
        super("trun");
    }

    private static void j() {
        b bVar = new b("TrackRunBox.java", g.class);
        g = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.util.List"), 57);
        h = bVar.a("method-execution", bVar.a("1", "setDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "int", "dataOffset", "", "void"), 120);
        p = bVar.a("method-execution", bVar.a("1", "setDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 267);
        q = bVar.a("method-execution", bVar.a("1", "setSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 275);
        r = bVar.a("method-execution", bVar.a("1", "setSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 283);
        s = bVar.a("method-execution", bVar.a("1", "setSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 292);
        t = bVar.a("method-execution", bVar.a("1", "setSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), VastError.ERROR_CODE_GENERAL_WRAPPER);
        f7050d = bVar.a("method-execution", bVar.a("1", "getDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "int"), 309);
        e = bVar.a("method-execution", bVar.a("1", "getFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 313);
        u = bVar.a("method-execution", bVar.a("1", "setFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "firstSampleFlags", "", "void"), 317);
        v = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.lang.String"), 327);
        w = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "java.util.List", "entries", "", "void"), 342);
        i = bVar.a("method-execution", bVar.a("1", "getSampleCompositionTimeOffsets", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "[J"), 129);
        j = bVar.a("method-execution", bVar.a("1", "getSampleCount", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "long"), 238);
        k = bVar.a("method-execution", bVar.a("1", "isDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 242);
        f7049c = bVar.a("method-execution", bVar.a("1", "isFirstSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 246);
        l = bVar.a("method-execution", bVar.a("1", "isSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 251);
        m = bVar.a("method-execution", bVar.a("1", "isSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 255);
        n = bVar.a("method-execution", bVar.a("1", "isSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 259);
        o = bVar.a("method-execution", bVar.a("1", "isSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 263);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        long a2 = e.a(byteBuffer);
        if ((i() & 1) == 1) {
            this.f7051a = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        } else {
            this.f7051a = -1;
        }
        if ((i() & 4) == 4) {
            this.f7052b = new c(byteBuffer);
        }
        for (int i2 = 0; i2 < a2; i2++) {
            a aVar = new a();
            if ((i() & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                aVar.f7053a = e.a(byteBuffer);
            }
            if ((i() & 512) == 512) {
                aVar.f7054b = e.a(byteBuffer);
            }
            if ((i() & 1024) == 1024) {
                aVar.f7055c = new c(byteBuffer);
            }
            if ((i() & 2048) == 2048) {
                aVar.f7056d = byteBuffer.getInt();
            }
            this.f.add(aVar);
        }
    }

    public final List<a> a() {
        org.mp4parser.aspectj.lang.a a2 = b.a(g, this, this);
        h.a();
        h.a(a2);
        return this.f;
    }

    public final long b() {
        org.mp4parser.aspectj.lang.a a2 = b.a(j, this, this);
        h.a();
        h.a(a2);
        return this.f.size();
    }

    public final boolean c() {
        org.mp4parser.aspectj.lang.a a2 = b.a(k, this, this);
        h.a();
        h.a(a2);
        return (i() & 1) == 1;
    }

    public final boolean d() {
        org.mp4parser.aspectj.lang.a a2 = b.a(l, this, this);
        h.a();
        h.a(a2);
        return (i() & 512) == 512;
    }

    public final boolean e() {
        org.mp4parser.aspectj.lang.a a2 = b.a(m, this, this);
        h.a();
        h.a(a2);
        return (i() & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
    }

    public final boolean f() {
        org.mp4parser.aspectj.lang.a a2 = b.a(n, this, this);
        h.a();
        h.a(a2);
        return (i() & 1024) == 1024;
    }

    public final boolean g() {
        org.mp4parser.aspectj.lang.a a2 = b.a(o, this, this);
        h.a();
        h.a(a2);
        return (i() & 2048) == 2048;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f.size());
        int i2 = i();
        if ((i2 & 1) == 1) {
            f.b(byteBuffer, this.f7051a);
        }
        if ((i2 & 4) == 4) {
            this.f7052b.a(byteBuffer);
        }
        for (a aVar : this.f) {
            if ((i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                f.b(byteBuffer, aVar.f7053a);
            }
            if ((i2 & 512) == 512) {
                f.b(byteBuffer, aVar.f7054b);
            }
            if ((i2 & 1024) == 1024) {
                aVar.f7055c.a(byteBuffer);
            }
            if ((i2 & 2048) == 2048) {
                if (h() == 0) {
                    f.b(byteBuffer, aVar.f7056d);
                } else {
                    byteBuffer.putInt((int) aVar.f7056d);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // com.googlecode.mp4parser.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getContentSize() {
        /*
            r7 = this;
            r0 = r7
            int r0 = r0.i()
            r8 = r0
            r0 = r8
            r1 = 1
            r0 = r0 & r1
            r1 = 1
            if (r0 != r1) goto L_0x0013
            r0 = 12
            r9 = r0
            goto L_0x0017
        L_0x0013:
            r0 = 8
            r9 = r0
        L_0x0017:
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = 4
            r0 = r0 & r1
            r1 = 4
            if (r0 != r1) goto L_0x0028
            r0 = r9
            r1 = 4
            long r0 = r0 + r1
            r11 = r0
        L_0x0028:
            r0 = 0
            r13 = r0
            r0 = r8
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            r1 = 256(0x100, float:3.59E-43)
            if (r0 != r1) goto L_0x003b
            r0 = 4
            r13 = r0
        L_0x003b:
            r0 = r13
            r9 = r0
            r0 = r8
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            r1 = 512(0x200, float:7.175E-43)
            if (r0 != r1) goto L_0x0050
            r0 = r13
            r1 = 4
            long r0 = r0 + r1
            r9 = r0
        L_0x0050:
            r0 = r9
            r13 = r0
            r0 = r8
            r1 = 1024(0x400, float:1.435E-42)
            r0 = r0 & r1
            r1 = 1024(0x400, float:1.435E-42)
            if (r0 != r1) goto L_0x0065
            r0 = r9
            r1 = 4
            long r0 = r0 + r1
            r13 = r0
        L_0x0065:
            r0 = r13
            r9 = r0
            r0 = r8
            r1 = 2048(0x800, float:2.87E-42)
            r0 = r0 & r1
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 != r1) goto L_0x007a
            r0 = r13
            r1 = 4
            long r0 = r0 + r1
            r9 = r0
        L_0x007a:
            r0 = r11
            r1 = r9
            r2 = r7
            java.util.List<com.b.a.a.a.g$a> r2 = r2.f
            int r2 = r2.size()
            long r2 = (long) r2
            long r1 = r1 * r2
            long r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.g.getContentSize():long");
    }

    public String toString() {
        org.mp4parser.aspectj.lang.a a2 = b.a(v, this, this);
        h.a();
        h.a(a2);
        return "TrackRunBox{sampleCount=" + this.f.size() + ", dataOffset=" + this.f7051a + ", dataOffsetPresent=" + c() + ", sampleSizePresent=" + d() + ", sampleDurationPresent=" + e() + ", sampleFlagsPresentPresent=" + f() + ", sampleCompositionTimeOffsetPresent=" + g() + ", firstSampleFlags=" + this.f7052b + '}';
    }
}
