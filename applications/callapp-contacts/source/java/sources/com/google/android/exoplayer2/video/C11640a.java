package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11604d;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.video.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a.class */
public final class C11640a {

    /* renamed from: a */
    public final List<byte[]> f38774a;

    /* renamed from: b */
    public final int f38775b;

    /* renamed from: c */
    public final int f38776c;

    /* renamed from: d */
    public final int f38777d;

    /* renamed from: e */
    public final float f38778e;

    /* renamed from: f */
    public final String f38779f;

    private C11640a(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.f38774a = list;
        this.f38775b = i;
        this.f38776c = i2;
        this.f38777d = i3;
        this.f38778e = f;
        this.f38779f = str;
    }

    /* renamed from: a */
    public static C11640a m19754a(C11628u c11628u) throws ParserException {
        float f;
        int i;
        String str;
        try {
            c11628u.m19799e(4);
            int m19804c = (c11628u.m19804c() & 3) + 1;
            if (m19804c == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m19804c2 = c11628u.m19804c() & 31;
            for (int i2 = 0; i2 < m19804c2; i2++) {
                arrayList.add(m19753b(c11628u));
            }
            int m19804c3 = c11628u.m19804c();
            for (int i3 = 0; i3 < m19804c3; i3++) {
                arrayList.add(m19753b(c11628u));
            }
            int i4 = -1;
            if (m19804c2 > 0) {
                C11624s.C11626b m19833a = C11624s.m19833a((byte[]) arrayList.get(0), m19804c, ((byte[]) arrayList.get(0)).length);
                i4 = m19833a.f38720e;
                i = m19833a.f38721f;
                f = m19833a.f38722g;
                str = C11604d.m19907a(m19833a.f38716a, m19833a.f38717b, m19833a.f38718c);
            } else {
                str = null;
                i = -1;
                f = 1.0f;
            }
            return new C11640a(arrayList, m19804c, i4, i, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m19753b(C11628u c11628u) {
        int m19802d = c11628u.m19802d();
        int i = c11628u.f38734b;
        c11628u.m19799e(m19802d);
        return C11604d.m19902a(c11628u.f38733a, i, m19802d);
    }
}
