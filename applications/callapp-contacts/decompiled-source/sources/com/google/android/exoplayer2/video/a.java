package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f22365a;

    /* renamed from: b  reason: collision with root package name */
    public final int f22366b;

    /* renamed from: c  reason: collision with root package name */
    public final int f22367c;

    /* renamed from: d  reason: collision with root package name */
    public final int f22368d;
    public final float e;
    public final String f;

    private a(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.f22365a = list;
        this.f22366b = i;
        this.f22367c = i2;
        this.f22368d = i3;
        this.e = f;
        this.f = str;
    }

    public static a a(u uVar) throws ParserException {
        float f;
        int i;
        String str;
        try {
            uVar.e(4);
            int c2 = (uVar.c() & 3) + 1;
            if (c2 != 3) {
                ArrayList arrayList = new ArrayList();
                int c3 = uVar.c() & 31;
                for (int i2 = 0; i2 < c3; i2++) {
                    arrayList.add(b(uVar));
                }
                int c4 = uVar.c();
                for (int i3 = 0; i3 < c4; i3++) {
                    arrayList.add(b(uVar));
                }
                int i4 = -1;
                if (c3 > 0) {
                    s.b a2 = s.a((byte[]) arrayList.get(0), c2, ((byte[]) arrayList.get(0)).length);
                    i4 = a2.e;
                    i = a2.f;
                    f = a2.g;
                    str = d.a(a2.f22327a, a2.f22328b, a2.f22329c);
                } else {
                    str = null;
                    i = -1;
                    f = 1.0f;
                }
                return new a(arrayList, c2, i4, i, f, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }

    private static byte[] b(u uVar) {
        int d2 = uVar.d();
        int i = uVar.f22336b;
        uVar.e(d2);
        return d.a(uVar.f22335a, i, d2);
    }
}
