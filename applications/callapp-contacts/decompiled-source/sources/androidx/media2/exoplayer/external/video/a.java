package androidx.media2.exoplayer.external.video;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.c;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f4209a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4210b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4211c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4212d;
    public final float e;

    private a(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f4209a = list;
        this.f4210b = i;
        this.f4211c = i2;
        this.f4212d = i3;
        this.e = f;
    }

    public static a a(p pVar) throws ParserException {
        float f;
        int i;
        int i2;
        try {
            pVar.d(4);
            int c2 = (pVar.c() & 3) + 1;
            if (c2 != 3) {
                ArrayList arrayList = new ArrayList();
                int c3 = pVar.c() & 31;
                for (int i3 = 0; i3 < c3; i3++) {
                    arrayList.add(b(pVar));
                }
                int c4 = pVar.c();
                for (int i4 = 0; i4 < c4; i4++) {
                    arrayList.add(b(pVar));
                }
                if (c3 > 0) {
                    n.b a2 = n.a((byte[]) arrayList.get(0), c2, ((byte[]) arrayList.get(0)).length);
                    i = a2.e;
                    i2 = a2.f;
                    f = a2.g;
                } else {
                    i = -1;
                    i2 = -1;
                    f = 1.0f;
                }
                return new a(arrayList, c2, i, i2, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }

    private static byte[] b(p pVar) {
        int d2 = pVar.d();
        int i = pVar.f4167b;
        pVar.d(d2);
        return c.a(pVar.f4166a, i, d2);
    }
}
