package androidx.media2.exoplayer.external.video;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.C2000c;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.video.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/a.class */
public final class C2038a {

    /* renamed from: a */
    public final List<byte[]> f8220a;

    /* renamed from: b */
    public final int f8221b;

    /* renamed from: c */
    public final int f8222c;

    /* renamed from: d */
    public final int f8223d;

    /* renamed from: e */
    public final float f8224e;

    private C2038a(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f8220a = list;
        this.f8221b = i;
        this.f8222c = i2;
        this.f8223d = i3;
        this.f8224e = f;
    }

    /* renamed from: a */
    public static C2038a m41432a(C2018p c2018p) throws ParserException {
        float f;
        int i;
        int i2;
        try {
            c2018p.m41531d(4);
            int m41534c = (c2018p.m41534c() & 3) + 1;
            if (m41534c == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m41534c2 = c2018p.m41534c() & 31;
            for (int i3 = 0; i3 < m41534c2; i3++) {
                arrayList.add(m41431b(c2018p));
            }
            int m41534c3 = c2018p.m41534c();
            for (int i4 = 0; i4 < m41534c3; i4++) {
                arrayList.add(m41431b(c2018p));
            }
            if (m41534c2 > 0) {
                C2014n.C2016b m41561a = C2014n.m41561a((byte[]) arrayList.get(0), m41534c, ((byte[]) arrayList.get(0)).length);
                int i5 = m41561a.f8118e;
                int i6 = m41561a.f8119f;
                f = m41561a.f8120g;
                i = i5;
                i2 = i6;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new C2038a(arrayList, m41534c, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m41431b(C2018p c2018p) {
        int m41532d = c2018p.m41532d();
        int i = c2018p.f8132b;
        c2018p.m41531d(m41532d);
        return C2000c.m41602a(c2018p.f8131a, i, m41532d);
    }
}
