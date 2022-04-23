package p131c.p161d.p170b.p188c.p198d1;

import android.util.Pair;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.AbstractC2957o0;
import p131c.p161d.p170b.p188c.C2955n0;
import p131c.p161d.p170b.p188c.C2961p0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.d1.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d1/d.class */
public abstract class AbstractC2777d extends AbstractC2784h {

    /* renamed from: c.d.b.c.d1.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/d$a.class */
    public static final class C2778a {

        /* renamed from: a */
        public final int f10123a;

        /* renamed from: b */
        public final int[] f10124b;

        /* renamed from: c */
        public final TrackGroupArray[] f10125c;

        /* renamed from: d */
        public final int[] f10126d;

        /* renamed from: e */
        public final int[][][] f10127e;

        /* renamed from: f */
        public final TrackGroupArray f10128f;

        public C2778a(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f10124b = iArr;
            this.f10125c = trackGroupArrayArr;
            this.f10127e = iArr3;
            this.f10126d = iArr2;
            this.f10128f = trackGroupArray;
            this.f10123a = iArr.length;
        }

        /* renamed from: a */
        public int m29037a() {
            return this.f10123a;
        }

        /* renamed from: a */
        public int m29036a(int i) {
            return this.f10124b[i];
        }

        /* renamed from: a */
        public int m29035a(int i, int i2, int i3) {
            return C2955n0.m28394c(this.f10127e[i][i2][i3]);
        }

        /* renamed from: a */
        public int m29034a(int i, int i2, boolean z) {
            int i3 = this.f10125c[i].m18479a(i2).f22257a;
            int[] iArr = new int[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                int a = m29035a(i, i2, i5);
                if (a != 4) {
                    i4 = i4;
                    if (z) {
                        i4 = i4;
                        if (a != 3) {
                        }
                    }
                }
                iArr[i4] = i5;
                i4++;
            }
            return m29033a(i, i2, Arrays.copyOf(iArr, i4));
        }

        /* renamed from: a */
        public int m29033a(int i, int i2, int[] iArr) {
            int i3 = 0;
            String str = null;
            boolean z = false;
            int i4 = 0;
            int i5 = 16;
            while (i3 < iArr.length) {
                String str2 = this.f10125c[i].m18479a(i2).m18482a(iArr[i3]).f21952i;
                if (i4 == 0) {
                    str = str2;
                } else {
                    z |= !C2885h0.m28669a((Object) str, (Object) str2);
                }
                i5 = Math.min(i5, C2955n0.m28395b(this.f10127e[i][i2][i3]));
                i3++;
                i4++;
            }
            int i6 = i5;
            if (z) {
                i6 = Math.min(i5, this.f10126d[i]);
            }
            return i6;
        }

        /* renamed from: b */
        public TrackGroupArray m29032b(int i) {
            return this.f10125c[i];
        }
    }

    /* renamed from: a */
    public static int m29038a(AbstractC2957o0[] o0VarArr, TrackGroup trackGroup) throws ExoPlaybackException {
        int length = o0VarArr.length;
        int i = 0;
        for (int i2 = 0; i2 < o0VarArr.length; i2++) {
            AbstractC2957o0 o0Var = o0VarArr[i2];
            for (int i3 = 0; i3 < trackGroup.f22257a; i3++) {
                int c = C2955n0.m28394c(o0Var.mo18580a(trackGroup.m18482a(i3)));
                i = i;
                if (c > i) {
                    if (c == 4) {
                        return i2;
                    }
                    length = i2;
                    i = c;
                }
            }
        }
        return length;
    }

    /* renamed from: a */
    public static int[] m29040a(AbstractC2957o0 o0Var, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.f22257a];
        for (int i = 0; i < trackGroup.f22257a; i++) {
            iArr[i] = o0Var.mo18580a(trackGroup.m18482a(i));
        }
        return iArr;
    }

    /* renamed from: a */
    public static int[] m29039a(AbstractC2957o0[] o0VarArr) throws ExoPlaybackException {
        int length = o0VarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = o0VarArr[i].mo18557m();
        }
        return iArr;
    }

    /* renamed from: a */
    public abstract Pair<C2961p0[], AbstractC2780f[]> mo18474a(C2778a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2784h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p131c.p161d.p170b.p188c.p198d1.C2786i mo29015a(p131c.p161d.p170b.p188c.AbstractC2957o0[] r12, com.google.android.exoplayer2.source.TrackGroupArray r13, p131c.p161d.p170b.p188c.p190b1.AbstractC2737t.C2738a r14, p131c.p161d.p170b.p188c.AbstractC2965r0 r15) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p198d1.AbstractC2777d.mo29015a(c.d.b.c.o0[], com.google.android.exoplayer2.source.TrackGroupArray, c.d.b.c.b1.t$a, c.d.b.c.r0):c.d.b.c.d1.i");
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2784h
    /* renamed from: a */
    public final void mo29016a(Object obj) {
        C2778a aVar = (C2778a) obj;
    }
}
