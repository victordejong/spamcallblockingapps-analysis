package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C5512g;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.video.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/h.class */
public final class C5558h {

    /* renamed from: a */
    public final List<byte[]> f18049a;

    /* renamed from: b */
    public final int f18050b;

    /* renamed from: c */
    public final int f18051c;

    /* renamed from: d */
    public final int f18052d;

    /* renamed from: e */
    public final float f18053e;

    private C5558h(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f18049a = list;
        this.f18050b = i;
        this.f18051c = i2;
        this.f18052d = i3;
        this.f18053e = f;
    }

    /* renamed from: a */
    private static byte[] m18558a(C5536v c5536v) {
        int m18687F = c5536v.m18687F();
        int m18676c = c5536v.m18676c();
        c5536v.m18679N(m18687F);
        return C5512g.m18887c(c5536v.f17941a, m18676c, m18687F);
    }

    /* renamed from: b */
    public static C5558h m18557b(C5536v c5536v) {
        float f;
        int i;
        int i2;
        try {
            c5536v.m18679N(4);
            int m18653z = (c5536v.m18653z() & 3) + 1;
            if (m18653z == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m18653z2 = c5536v.m18653z() & 31;
            for (int i3 = 0; i3 < m18653z2; i3++) {
                arrayList.add(m18558a(c5536v));
            }
            int m18653z3 = c5536v.m18653z();
            for (int i4 = 0; i4 < m18653z3; i4++) {
                arrayList.add(m18558a(c5536v));
            }
            if (m18653z2 > 0) {
                C5531s.C5533b m18714i = C5531s.m18714i((byte[]) arrayList.get(0), m18653z, ((byte[]) arrayList.get(0)).length);
                i2 = m18714i.f17928e;
                i = m18714i.f17929f;
                f = m18714i.f17930g;
            } else {
                i2 = -1;
                i = -1;
                f = 1.0f;
            }
            return new C5558h(arrayList, m18653z, i2, i, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }
}
