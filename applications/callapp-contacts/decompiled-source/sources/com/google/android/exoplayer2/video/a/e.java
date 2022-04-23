package com.google.android.exoplayer2.video.a;

import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.video.a.d;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/e.class */
public final class e {
    private e() {
    }

    private static int a(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    public static d a(byte[] bArr, int i) {
        ArrayList<d.a> arrayList;
        int j;
        u uVar = new u(bArr);
        try {
            uVar.e(4);
            j = uVar.j();
            uVar.d(0);
        } catch (ArrayIndexOutOfBoundsException e) {
        }
        if (j == 1886547818) {
            uVar.e(8);
            int i2 = uVar.f22336b;
            int i3 = uVar.f22337c;
            while (i2 < i3) {
                int j2 = uVar.j() + i2;
                if (j2 <= i2 || j2 > i3) {
                    break;
                }
                int j3 = uVar.j();
                if (j3 == 2037673328 || j3 == 1836279920) {
                    uVar.c(j2);
                    arrayList = a(uVar);
                    break;
                }
                uVar.d(j2);
                i2 = j2;
            }
            arrayList = null;
        } else {
            arrayList = a(uVar);
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new d(arrayList.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new d(arrayList.get(0), arrayList.get(1), i);
    }

    /* JADX WARN: Finally extract failed */
    private static ArrayList<d.a> a(u uVar) {
        if (uVar.c() != 0) {
            return null;
        }
        uVar.e(7);
        int j = uVar.j();
        if (j == 1684433976) {
            u uVar2 = new u();
            Inflater inflater = new Inflater(true);
            try {
                if (!af.a(uVar, uVar2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                uVar = uVar2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (j != 1918990112) {
            return null;
        }
        return b(uVar);
    }

    private static ArrayList<d.a> b(u uVar) {
        ArrayList<d.a> arrayList = new ArrayList<>();
        int i = uVar.f22336b;
        int i2 = uVar.f22337c;
        while (i < i2) {
            int j = uVar.j() + i;
            if (j <= i || j > i2) {
                return null;
            }
            if (uVar.j() == 1835365224) {
                d.a c2 = c(uVar);
                if (c2 == null) {
                    return null;
                }
                arrayList.add(c2);
            }
            uVar.d(j);
            i = j;
        }
        return arrayList;
    }

    private static d.a c(u uVar) {
        int j = uVar.j();
        if (j > 10000) {
            return null;
        }
        float[] fArr = new float[j];
        for (int i = 0; i < j; i++) {
            fArr[i] = Float.intBitsToFloat(uVar.j());
        }
        int j2 = uVar.j();
        if (j2 > 32000) {
            return null;
        }
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(j * 2.0d) / log);
        t tVar = new t(uVar.f22335a);
        tVar.a(uVar.f22336b * 8);
        float[] fArr2 = new float[j2 * 5];
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < j2; i3++) {
            int i4 = 0;
            while (i4 < 5) {
                int a2 = iArr[i4] + a(tVar.c(ceil));
                if (a2 >= j || a2 < 0) {
                    return null;
                }
                fArr2[i2] = fArr[a2];
                iArr[i4] = a2;
                i4++;
                i2++;
            }
        }
        tVar.a((tVar.b() + 7) & (-8));
        int c2 = tVar.c(32);
        d.b[] bVarArr = new d.b[c2];
        for (int i5 = 0; i5 < c2; i5++) {
            int c3 = tVar.c(8);
            int c4 = tVar.c(8);
            int c5 = tVar.c(32);
            if (c5 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(j2 * 2.0d) / log);
            float[] fArr3 = new float[c5 * 3];
            float[] fArr4 = new float[c5 * 2];
            int i6 = 0;
            for (int i7 = 0; i7 < c5; i7++) {
                i6 += a(tVar.c(ceil2));
                if (i6 < 0 || i6 >= j2) {
                    return null;
                }
                int i8 = i7 * 3;
                int i9 = i6 * 5;
                fArr3[i8] = fArr2[i9];
                fArr3[i8 + 1] = fArr2[i9 + 1];
                fArr3[i8 + 2] = fArr2[i9 + 2];
                int i10 = i7 * 2;
                fArr4[i10] = fArr2[i9 + 3];
                fArr4[i10 + 1] = fArr2[i9 + 4];
            }
            bVarArr[i5] = new d.b(c3, fArr3, fArr4, c4);
        }
        return new d.a(bVarArr);
    }
}
