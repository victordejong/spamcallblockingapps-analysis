package com.googlecode.mp4parser.p414a.p418c;

import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p414a.AbstractC16243f;
import com.googlecode.mp4parser.p425c.C16282b;
import com.googlecode.mp4parser.p425c.C16291j;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.p105a.C3457b;
import com.p102b.p103a.p104a.p105a.C3459d;
import com.p102b.p103a.p104a.p105a.C3460e;
import com.p102b.p103a.p104a.p105a.C3461f;
import com.p102b.p103a.p104a.p105a.C3462g;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.a.c.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/c/b.class */
public final class C16235b extends AbstractList<AbstractC16243f> {

    /* renamed from: a */
    AbstractC3487e f57279a;

    /* renamed from: b */
    C3514d[] f57280b;

    /* renamed from: c */
    C3473ag f57281c;

    /* renamed from: d */
    C3459d f57282d;

    /* renamed from: e */
    private SoftReference<AbstractC16243f>[] f57283e;

    /* renamed from: f */
    private List<C3460e> f57284f;

    /* renamed from: h */
    private int[] f57286h;

    /* renamed from: g */
    private Map<C3462g, SoftReference<ByteBuffer>> f57285g = new HashMap();

    /* renamed from: i */
    private int f57287i = -1;

    public C16235b(long j, AbstractC3487e abstractC3487e, C3514d... c3514dArr) {
        this.f57281c = null;
        this.f57282d = null;
        this.f57279a = abstractC3487e;
        this.f57280b = c3514dArr;
        for (C3473ag c3473ag : C16291j.m7502a(abstractC3487e, "moov[0]/trak")) {
            if (c3473ag.m37908a().m37905a() == j) {
                this.f57281c = c3473ag;
            }
        }
        if (this.f57281c != null) {
            for (C3459d c3459d : C16291j.m7502a(abstractC3487e, "moov[0]/mvex[0]/trex")) {
                if (c3459d.m37933a() == this.f57281c.m37908a().m37905a()) {
                    this.f57282d = c3459d;
                }
            }
            this.f57283e = new SoftReference[size()];
            m7588a();
            return;
        }
        throw new RuntimeException("This MP4 does not contain track ".concat(String.valueOf(j)));
    }

    /* renamed from: a */
    private static int m7586a(C3460e c3460e) {
        List<AbstractC3476b> b = c3460e.mo7491b();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= b.size()) {
                return i3;
            }
            AbstractC3476b abstractC3476b = b.get(i);
            int i4 = i3;
            if (abstractC3476b instanceof C3462g) {
                i4 = i3 + C16282b.m7517a(((C3462g) abstractC3476b).m37923b());
            }
            i++;
            i2 = i4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* renamed from: a */
    public AbstractC16243f get(int i) {
        char c;
        long j;
        long j2;
        int i2;
        AbstractC16243f abstractC16243f;
        SoftReference<AbstractC16243f>[] softReferenceArr = this.f57283e;
        if (softReferenceArr[i] == null || (abstractC16243f = softReferenceArr[i].get()) == null) {
            int i3 = i + 1;
            int length = this.f57286h.length;
            while (true) {
                length--;
                if (i3 - this.f57286h[length] >= 0) {
                    break;
                }
            }
            C3460e c3460e = this.f57284f.get(length);
            int i4 = this.f57286h[length];
            C3457b c3457b = (C3457b) c3460e.getParent();
            int i5 = 0;
            for (AbstractC3476b abstractC3476b : c3460e.mo7491b()) {
                if (abstractC3476b instanceof C3462g) {
                    C3462g c3462g = (C3462g) abstractC3476b;
                    int size = c3462g.m37924a().size();
                    int i6 = (i3 - i4) - i5;
                    if (size > i6) {
                        List<C3462g.C3463a> m37924a = c3462g.m37924a();
                        C3461f m37931a = c3460e.m37931a();
                        boolean m37921d = c3462g.m37921d();
                        AbstractC20997a m163a = C20987b.m163a(C3461f.f13072c, m37931a, m37931a);
                        C16297h.m7484a();
                        C16297h.m7483a(m163a);
                        boolean z = (m37931a.m7518i() & 16) != 0;
                        char c2 = 0;
                        if (m37921d) {
                            c = 0;
                        } else if (z) {
                            c = m37931a.m37926e();
                        } else {
                            C3459d c3459d = this.f57282d;
                            if (c3459d == null) {
                                throw new RuntimeException("File doesn't contain trex box but track fragments aren't fully self contained. Cannot determine sample size.");
                            }
                            AbstractC20997a m163a2 = C20987b.m163a(C3459d.f13052e, c3459d, c3459d);
                            C16297h.m7484a();
                            C16297h.m7483a(m163a2);
                            c = c3459d.f13063b;
                        }
                        SoftReference<ByteBuffer> softReference = this.f57285g.get(c3462g);
                        ByteBuffer byteBuffer = softReference != null ? softReference.get() : null;
                        if (byteBuffer == null) {
                            AbstractC3487e abstractC3487e = c3457b;
                            if (m37931a.m37930a()) {
                                c2 = 0 + m37931a.m37928c();
                                abstractC3487e = c3457b.getParent();
                            }
                            char c3 = c2;
                            if (c3462g.m37922c()) {
                                AbstractC20997a m163a3 = C20987b.m163a(C3462g.f13098d, c3462g, c3462g);
                                C16297h.m7484a();
                                C16297h.m7483a(m163a3);
                                c3 = c2 + c3462g.f13117a;
                            }
                            Iterator<C3462g.C3463a> it2 = m37924a.iterator();
                            int i7 = 0;
                            while (true) {
                                i2 = i7;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                i7 = m37921d ? (int) (i2 + it2.next().f13121b) : (int) (i2 + c);
                            }
                            try {
                                byteBuffer = abstractC3487e.mo7497a(c3, i2);
                                this.f57285g.put(c3462g, new SoftReference<>(byteBuffer));
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                        }
                        int i8 = 0;
                        for (int i9 = 0; i9 < i6; i9++) {
                            if (m37921d) {
                                j2 = i8;
                                j = m37924a.get(i9).f13121b;
                            } else {
                                j2 = i8;
                                j = c;
                            }
                            i8 = (int) (j2 + j);
                        }
                        if (m37921d) {
                            c = m37924a.get(i6).f13121b;
                        }
                        final char c4 = c;
                        final ByteBuffer byteBuffer2 = byteBuffer;
                        final int i10 = i8;
                        AbstractC16243f abstractC16243f2 = new AbstractC16243f() { // from class: com.googlecode.mp4parser.a.c.b.1
                            @Override // com.googlecode.mp4parser.p414a.AbstractC16243f
                            /* renamed from: a */
                            public final long mo7576a() {
                                return c4;
                            }

                            @Override // com.googlecode.mp4parser.p414a.AbstractC16243f
                            /* renamed from: a */
                            public final void mo7575a(WritableByteChannel writableByteChannel) throws IOException {
                                writableByteChannel.write((ByteBuffer) ((ByteBuffer) byteBuffer2.position(i10)).slice().limit(C16282b.m7517a(c4)));
                            }
                        };
                        this.f57283e[i] = new SoftReference<>(abstractC16243f2);
                        return abstractC16243f2;
                    }
                    i5 += c3462g.m37924a().size();
                }
            }
            throw new RuntimeException("Couldn't find sample in the traf I was looking");
        }
        return abstractC16243f;
    }

    /* renamed from: a */
    private List<C3460e> m7588a() {
        List<C3460e> list = this.f57284f;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (C3457b c3457b : this.f57279a.mo7494a(C3457b.class)) {
            for (C3460e c3460e : c3457b.mo7494a(C3460e.class)) {
                if (c3460e.m37931a().m37929b() == this.f57281c.m37908a().m37905a()) {
                    arrayList.add(c3460e);
                }
            }
        }
        C3514d[] c3514dArr = this.f57280b;
        if (c3514dArr != null) {
            for (C3514d c3514d : c3514dArr) {
                for (C3457b c3457b2 : c3514d.mo7494a(C3457b.class)) {
                    for (C3460e c3460e2 : c3457b2.mo7494a(C3460e.class)) {
                        if (c3460e2.m37931a().m37929b() == this.f57281c.m37908a().m37905a()) {
                            arrayList.add(c3460e2);
                        }
                    }
                }
            }
        }
        this.f57284f = arrayList;
        this.f57286h = new int[arrayList.size()];
        int i = 1;
        for (int i2 = 0; i2 < this.f57284f.size(); i2++) {
            this.f57286h[i2] = i;
            i += m7586a(this.f57284f.get(i2));
        }
        return arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i = this.f57287i;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (C3457b c3457b : this.f57279a.mo7494a(C3457b.class)) {
            for (C3460e c3460e : c3457b.mo7494a(C3460e.class)) {
                if (c3460e.m37931a().m37929b() == this.f57281c.m37908a().m37905a()) {
                    for (C3462g c3462g : c3460e.mo7494a(C3462g.class)) {
                        i2 = (int) (i2 + c3462g.m37923b());
                    }
                }
            }
        }
        for (C3514d c3514d : this.f57280b) {
            for (C3457b c3457b2 : c3514d.mo7494a(C3457b.class)) {
                for (C3460e c3460e2 : c3457b2.mo7494a(C3460e.class)) {
                    if (c3460e2.m37931a().m37929b() == this.f57281c.m37908a().m37905a()) {
                        for (C3462g c3462g2 : c3460e2.mo7494a(C3462g.class)) {
                            i2 = (int) (i2 + c3462g2.m37923b());
                        }
                    }
                }
            }
        }
        this.f57287i = i2;
        return i2;
    }
}
