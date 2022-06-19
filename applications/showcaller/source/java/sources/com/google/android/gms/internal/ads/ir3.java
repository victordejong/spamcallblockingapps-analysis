package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ir3.class */
public final class ir3 {

    /* renamed from: a */
    public final int f24410a;

    /* renamed from: b */
    public final int f24411b;

    /* renamed from: c */
    public final int f24412c;

    /* renamed from: d */
    public final int f24413d;

    /* renamed from: e */
    public final int f24414e;

    /* renamed from: f */
    public final int f24415f;

    /* renamed from: g */
    public final int f24416g;

    /* renamed from: h */
    public final int f24417h;

    /* renamed from: i */
    public final int f24418i;

    /* renamed from: j */
    public final long f24419j;

    /* renamed from: k */
    public final hr3 f24420k;

    /* renamed from: l */
    private final zzaiv f24421l;

    private ir3(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, hr3 hr3Var, zzaiv zzaivVar) {
        this.f24410a = i;
        this.f24411b = i2;
        this.f24412c = i3;
        this.f24413d = i4;
        this.f24414e = i5;
        this.f24415f = m14287h(i5);
        this.f24416g = i6;
        this.f24417h = i7;
        this.f24418i = m14286i(i7);
        this.f24419j = j;
        this.f24420k = hr3Var;
        this.f24421l = zzaivVar;
    }

    public ir3(byte[] bArr, int i) {
        C6657ka c6657ka = new C6657ka(bArr, bArr.length);
        c6657ka.m13951d(i * 8);
        this.f24410a = c6657ka.m13947h(16);
        this.f24411b = c6657ka.m13947h(16);
        this.f24412c = c6657ka.m13947h(24);
        this.f24413d = c6657ka.m13947h(24);
        int m13947h = c6657ka.m13947h(20);
        this.f24414e = m13947h;
        this.f24415f = m14287h(m13947h);
        this.f24416g = c6657ka.m13947h(3) + 1;
        int m13947h2 = c6657ka.m13947h(5) + 1;
        this.f24417h = m13947h2;
        this.f24418i = m14286i(m13947h2);
        this.f24419j = C7101wa.m9685l(c6657ka.m13947h(4), c6657ka.m13947h(32));
        this.f24420k = null;
        this.f24421l = null;
    }

    /* renamed from: h */
    private static int m14287h(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    /* renamed from: i */
    private static int m14286i(int i) {
        if (i != 8) {
            if (i == 12) {
                return 2;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 20) {
                return 5;
            }
            return i != 24 ? -1 : 6;
        }
        return 1;
    }

    /* renamed from: j */
    private static zzaiv m14285j(List<String> list, List<zzajc> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String[] m9702Z = C7101wa.m9702Z(str, "=");
                if (m9702Z.length != 2) {
                    String valueOf = String.valueOf(str);
                    Log.w("FlacStreamMetadata", valueOf.length() != 0 ? "Failed to parse Vorbis comment: ".concat(valueOf) : new String("Failed to parse Vorbis comment: "));
                } else {
                    arrayList.add(new zzaje(m9702Z[0], m9702Z[1]));
                }
            }
            arrayList.addAll(list2);
            if (!arrayList.isEmpty()) {
                return new zzaiv(arrayList);
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public final long m14294a() {
        long j = this.f24419j;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.f24414e;
    }

    /* renamed from: b */
    public final long m14293b(long j) {
        return C7101wa.m9694d0((j * this.f24414e) / 1000000, 0L, this.f24419j - 1);
    }

    /* renamed from: c */
    public final C7021u4 m14292c(byte[] bArr, zzaiv zzaivVar) {
        bArr[4] = (byte) (-128);
        int i = this.f24413d;
        int i2 = i;
        if (i <= 0) {
            i2 = -1;
        }
        zzaiv m14291d = m14291d(zzaivVar);
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("audio/flac");
        c6947s4.m11128o(i2);
        c6947s4.m11175B(this.f24416g);
        c6947s4.m11174C(this.f24414e);
        c6947s4.m11127p(Collections.singletonList(bArr));
        c6947s4.m11131l(m14291d);
        return c6947s4.m11168I();
    }

    /* renamed from: d */
    public final zzaiv m14291d(zzaiv zzaivVar) {
        zzaiv zzaivVar2 = this.f24421l;
        return zzaivVar2 == null ? zzaivVar : zzaivVar2.m8116c(zzaivVar);
    }

    /* renamed from: e */
    public final ir3 m14290e(hr3 hr3Var) {
        return new ir3(this.f24410a, this.f24411b, this.f24412c, this.f24413d, this.f24414e, this.f24416g, this.f24417h, this.f24419j, hr3Var, this.f24421l);
    }

    /* renamed from: f */
    public final ir3 m14289f(List<String> list) {
        return new ir3(this.f24410a, this.f24411b, this.f24412c, this.f24413d, this.f24414e, this.f24416g, this.f24417h, this.f24419j, this.f24420k, m14291d(m14285j(list, Collections.emptyList())));
    }

    /* renamed from: g */
    public final ir3 m14288g(List<zzajc> list) {
        return new ir3(this.f24410a, this.f24411b, this.f24412c, this.f24413d, this.f24414e, this.f24416g, this.f24417h, this.f24419j, this.f24420k, m14291d(m14285j(Collections.emptyList(), list)));
    }
}
