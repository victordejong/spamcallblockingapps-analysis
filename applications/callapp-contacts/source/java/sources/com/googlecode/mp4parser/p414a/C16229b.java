package com.googlecode.mp4parser.p414a;

import com.googlecode.mp4parser.C16246b;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p414a.p419d.AbstractC16239b;
import com.googlecode.mp4parser.p425c.C16291j;
import com.mp4parser.iso14496.p473a.C17043a;
import com.mp4parser.iso14496.p473a.C17044b;
import com.mp4parser.p471a.p472a.C17027a;
import com.mp4parser.p471a.p472a.C17042b;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3478c;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.C3501r;
import com.p102b.p103a.p104a.C3511z;
import com.p102b.p103a.p104a.p105a.C3456a;
import com.p102b.p103a.p104a.p105a.C3457b;
import com.p102b.p103a.p104a.p105a.C3460e;
import com.p102b.p103a.p104a.p105a.C3462g;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.a.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/b.class */
public class C16229b extends C16242e implements AbstractC16239b {

    /* renamed from: d */
    static final /* synthetic */ boolean f57255d = true;

    /* renamed from: h */
    private List<C17027a> f57256h;

    /* renamed from: i */
    private UUID f57257i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.googlecode.mp4parser.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/b$a.class */
    public final class C16230a {

        /* renamed from: d */
        static final /* synthetic */ boolean f57258d = true;

        /* renamed from: a */
        C17044b f57259a;

        /* renamed from: b */
        C17043a f57260b;

        /* renamed from: e */
        private AbstractC3487e f57262e;

        public C16230a(AbstractC3487e abstractC3487e) {
            C16229b.this = r4;
            this.f57262e = abstractC3487e;
        }

        /* renamed from: a */
        public final C16230a m7595a() {
            List mo7494a = this.f57262e.mo7494a(C17044b.class);
            List mo7494a2 = this.f57262e.mo7494a(C17043a.class);
            if (f57258d || mo7494a.size() == mo7494a2.size()) {
                this.f57259a = null;
                this.f57260b = null;
                for (int i = 0; i < mo7494a.size(); i++) {
                    if (!(this.f57259a == null && ((C17044b) mo7494a.get(i)).m5969a() == null) && !"cenc".equals(((C17044b) mo7494a.get(i)).m5969a())) {
                        C17044b c17044b = this.f57259a;
                        if (c17044b == null || c17044b.m5969a() != null || !"cenc".equals(((C17044b) mo7494a.get(i)).m5969a())) {
                            throw new RuntimeException("Are there two cenc labeled saiz?");
                        }
                        this.f57259a = (C17044b) mo7494a.get(i);
                    } else {
                        this.f57259a = (C17044b) mo7494a.get(i);
                    }
                    if (!(this.f57260b == null && ((C17043a) mo7494a2.get(i)).m5973a() == null) && !"cenc".equals(((C17043a) mo7494a2.get(i)).m5973a())) {
                        C17043a c17043a = this.f57260b;
                        if (c17043a == null || c17043a.m5973a() != null || !"cenc".equals(((C17043a) mo7494a2.get(i)).m5973a())) {
                            throw new RuntimeException("Are there two cenc labeled saio?");
                        }
                        this.f57260b = (C17043a) mo7494a2.get(i);
                    } else {
                        this.f57260b = (C17043a) mo7494a2.get(i);
                    }
                }
                return this;
            }
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [int] */
    /* JADX WARN: Type inference failed for: r0v184, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r1v68 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r2v21, types: [long] */
    /* JADX WARN: Type inference failed for: r2v4, types: [long] */
    public C16229b(String str, C3473ag c3473ag, C3514d... c3514dArr) throws IOException {
        super(str, c3473ag, c3514dArr);
        ?? r10;
        short s;
        ?? r16;
        C3457b c3457b;
        int i;
        C3511z c3511z = (C3511z) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]");
        if (f57255d || (c3511z != null && (c3511z.m37859a().equals("cenc") || c3511z.m37859a().equals("cbc1")))) {
            this.f57256h = new ArrayList();
            long m37905a = c3473ag.m37908a().m37905a();
            if (c3473ag.getParent().mo7494a(C3456a.class).size() <= 0) {
                C17042b c17042b = (C17042b) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                this.f57257i = c17042b.m7555b();
                AbstractC3478c abstractC3478c = (AbstractC3478c) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]/stco[0]");
                long[] m37861a = c3473ag.m37907c().m37868d().m37861a((abstractC3478c == null ? (AbstractC3478c) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]/co64[0]") : abstractC3478c).mo37896a().length);
                C16230a m7595a = new C16230a((AbstractC3487e) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]")).m7595a();
                C17043a c17043a = m7595a.f57260b;
                C17044b c17044b = m7595a.f57259a;
                AbstractC3487e parent = ((C3501r) c3473ag.getParent()).getParent();
                if (c17043a.m5971b().length == 1) {
                    long j = c17043a.m5971b()[0];
                    if (c17044b.m5967b() > 0) {
                        s = (c17044b.m5966c() * c17044b.m5967b()) + 0;
                    } else {
                        s = 0;
                        for (int i2 = 0; i2 < c17044b.m5966c(); i2++) {
                            AbstractC20997a m163a = C20987b.m163a(C17044b.f60528h, c17044b, c17044b);
                            C16297h.m7484a();
                            C16297h.m7483a(m163a);
                            short[] sArr = new short[c17044b.f60539b.length];
                            System.arraycopy(c17044b.f60539b, 0, sArr, 0, c17044b.f60539b.length);
                            s += sArr[i2];
                        }
                    }
                    ByteBuffer mo7497a = parent.mo7497a(j, s);
                    for (int i3 = 0; i3 < c17044b.m5966c(); i3++) {
                        this.f57256h.add(m7596a(c17042b.m7556a(), mo7497a, c17044b.m5968a(i3)));
                    }
                    return;
                } else if (c17043a.m5971b().length != m37861a.length) {
                    throw new RuntimeException("Number of saio offsets must be either 1 or number of chunks");
                } else {
                    int i4 = 0;
                    for (int i5 = 0; i5 < m37861a.length; i5++) {
                        long j2 = c17043a.m5971b()[i5];
                        if (c17044b.m5967b() > 0) {
                            r10 = (c17044b.m5966c() * m37861a[i5]) + 0;
                        } else {
                            r10 = 0;
                            for (int i6 = 0; i6 < m37861a[i5]; i6++) {
                                r10 += c17044b.m5968a(i4 + i6);
                            }
                        }
                        ByteBuffer mo7497a2 = parent.mo7497a(j2, r10);
                        for (int i7 = 0; i7 < m37861a[i5]; i7++) {
                            this.f57256h.add(m7596a(c17042b.m7556a(), mo7497a2, c17044b.m5968a(i4 + i7)));
                        }
                        i4 = (int) (i4 + m37861a[i5]);
                    }
                    return;
                }
            }
            for (C3457b c3457b2 : ((AbstractC3476b) c3473ag.getParent()).getParent().mo7494a(C3457b.class)) {
                for (C3460e c3460e : c3457b2.mo7494a(C3460e.class)) {
                    if (c3460e.m37931a().m37929b() == m37905a) {
                        C17042b c17042b2 = (C17042b) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                        this.f57257i = c17042b2.m7555b();
                        if (c3460e.m37931a().m37930a()) {
                            c3457b = ((AbstractC3476b) c3473ag.getParent()).getParent();
                            r16 = c3460e.m37931a().m37928c();
                        } else {
                            c3457b = c3457b2;
                            r16 = false;
                        }
                        C16230a m7595a2 = new C16230a(c3460e).m7595a();
                        C17043a c17043a2 = m7595a2.f57260b;
                        C17044b c17044b2 = m7595a2.f57259a;
                        boolean z = f57255d;
                        if (!z && c17043a2 == null) {
                            throw new AssertionError();
                        }
                        long[] m5971b = c17043a2.m5971b();
                        if (!z && m5971b.length != c3460e.mo7494a(C3462g.class).size()) {
                            throw new AssertionError();
                        }
                        if (!z && c17044b2 == null) {
                            throw new AssertionError();
                        }
                        List a = c3460e.mo7494a(C3462g.class);
                        int i8 = 0;
                        int i9 = 0;
                        C3457b c3457b3 = c3457b2;
                        while (i8 < m5971b.length) {
                            int size = ((C3462g) a.get(i8)).m37924a().size();
                            long j3 = m5971b[i8];
                            int i10 = i9;
                            ?? r28 = 0;
                            while (true) {
                                i = i9 + size;
                                if (i10 >= i) {
                                    break;
                                }
                                r28 += c17044b2.m5968a(i10);
                                i10++;
                            }
                            ByteBuffer mo7497a3 = c3457b.mo7497a((r16 == true ? 1L : 0L) + j3, r28);
                            while (i9 < i) {
                                this.f57256h.add(m7596a(c17042b2.m7556a(), mo7497a3, c17044b2.m5968a(i9)));
                                i9++;
                            }
                            i8++;
                            i9 = i;
                        }
                        c3457b2 = c3457b3;
                    }
                }
            }
            return;
        }
        throw new AssertionError("Track must be CENC (cenc or cbc1) encrypted");
    }

    /* renamed from: a */
    private static C17027a m7596a(int i, ByteBuffer byteBuffer, long j) {
        C17027a c17027a = new C17027a();
        if (j > 0) {
            c17027a.f60477a = new byte[i];
            byteBuffer.get(c17027a.f60477a);
            if (j > i) {
                c17027a.f60478b = new C17027a.AbstractC17037j[C3515e.m37848c(byteBuffer)];
                for (int i2 = 0; i2 < c17027a.f60478b.length; i2++) {
                    c17027a.f60478b[i2] = c17027a.m5976a(C3515e.m37848c(byteBuffer), C3515e.m37851a(byteBuffer));
                }
            }
        }
        return c17027a;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: f */
    public final String mo7569f() {
        return "enc(" + super.mo7569f() + ")";
    }

    @Override // com.googlecode.mp4parser.p414a.p419d.AbstractC16239b
    /* renamed from: i */
    public final List<C17027a> mo7578i() {
        return this.f57256h;
    }

    public String toString() {
        return "CencMp4TrackImpl{handler='" + mo7562n() + "'}";
    }
}
