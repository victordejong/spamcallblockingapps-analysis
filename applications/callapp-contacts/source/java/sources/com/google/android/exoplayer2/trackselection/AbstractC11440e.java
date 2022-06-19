package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import com.google.android.exoplayer2.AbstractC10853ag;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11620q;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.trackselection.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/e.class */
public abstract class AbstractC11440e extends AbstractC11444h {

    /* renamed from: a */
    public C11441a f37820a;

    /* renamed from: com.google.android.exoplayer2.trackselection.e$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/e$a.class */
    public static final class C11441a {

        /* renamed from: a */
        public final int f37821a;

        /* renamed from: b */
        public final int[] f37822b;

        /* renamed from: c */
        public final TrackGroupArray[] f37823c;

        /* renamed from: d */
        private final String[] f37824d;

        /* renamed from: e */
        private final int[] f37825e;

        /* renamed from: f */
        private final int[][][] f37826f;

        /* renamed from: g */
        private final TrackGroupArray f37827g;

        C11441a(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f37824d = strArr;
            this.f37822b = iArr;
            this.f37823c = trackGroupArrayArr;
            this.f37826f = iArr3;
            this.f37825e = iArr2;
            this.f37827g = trackGroupArray;
            this.f37821a = iArr.length;
        }

        /* renamed from: a */
        public final int m20563a(int i, int i2) {
            int i3;
            int i4 = this.f37823c[i].get(i2).length;
            int[] iArr = new int[i4];
            int i5 = 0;
            int i6 = 0;
            while (true) {
                i3 = i6;
                if (i5 >= i4) {
                    break;
                }
                int i7 = i3;
                if (m20562a(i, i2, i5) == 4) {
                    iArr[i3] = i5;
                    i7 = i3 + 1;
                }
                i5++;
                i6 = i7;
            }
            int[] copyOf = Arrays.copyOf(iArr, i3);
            int i8 = 16;
            String str = null;
            boolean z = false;
            int i9 = 0;
            int i10 = 0;
            while (i10 < copyOf.length) {
                String str2 = this.f37823c[i].get(i2).getFormat(copyOf[i10]).sampleMimeType;
                if (i9 == 0) {
                    str = str2;
                } else {
                    z |= !C11599af.m19973a((Object) str, (Object) str2);
                }
                i8 = Math.min(i8, this.f37826f[i][i2][i10] & 24);
                i10++;
                i9++;
            }
            return z ? Math.min(i8, this.f37825e[i]) : i8;
        }

        /* renamed from: a */
        public final int m20562a(int i, int i2, int i3) {
            return this.f37826f[i][i2][i3] & 7;
        }
    }

    /* renamed from: a */
    protected abstract Pair<RendererConfiguration[], AbstractC11436c[]> mo20564a(C11441a c11441a, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [int[][], int[][][]] */
    @Override // com.google.android.exoplayer2.trackselection.AbstractC11444h
    /* renamed from: a */
    public final C11446i mo20554a(AbstractC10853ag[] abstractC10853agArr, TrackGroupArray trackGroupArray, AbstractC11315r.C11316a c11316a, AbstractC10864al abstractC10864al) throws ExoPlaybackException {
        int[] iArr;
        boolean z;
        int i;
        int i2;
        int[] iArr2 = new int[abstractC10853agArr.length + 1];
        int length = abstractC10853agArr.length + 1;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        ?? r0 = new int[abstractC10853agArr.length + 1];
        for (int i3 = 0; i3 < length; i3++) {
            trackGroupArr[i3] = new TrackGroup[trackGroupArray.length];
            r0[i3] = new int[trackGroupArray.length];
        }
        int length2 = abstractC10853agArr.length;
        int[] iArr3 = new int[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            iArr3[i4] = abstractC10853agArr[i4].mo21311o();
        }
        for (int i5 = 0; i5 < trackGroupArray.length; i5++) {
            TrackGroup trackGroup = trackGroupArray.get(i5);
            boolean z2 = C11620q.m19845g(trackGroup.getFormat(0).sampleMimeType) == 5;
            int length3 = abstractC10853agArr.length;
            int i6 = 0;
            int i7 = 0;
            boolean z3 = true;
            while (true) {
                boolean z4 = z3;
                if (i6 >= abstractC10853agArr.length) {
                    break;
                }
                AbstractC10853ag abstractC10853ag = abstractC10853agArr[i6];
                int i8 = 0;
                for (int i9 = 0; i9 < trackGroup.length; i9++) {
                    i8 = Math.max(i8, abstractC10853ag.mo19748a(trackGroup.getFormat(i9)) & 7);
                }
                boolean z5 = iArr2[i6] == 0;
                if (i8 <= i7) {
                    i2 = length3;
                    i = i7;
                    z = z4;
                    if (i8 == i7) {
                        i2 = length3;
                        i = i7;
                        z = z4;
                        if (z2) {
                            i2 = length3;
                            i = i7;
                            z = z4;
                            if (!z4) {
                                i2 = length3;
                                i = i7;
                                z = z4;
                                if (!z5) {
                                }
                            }
                        }
                    }
                    i6++;
                    length3 = i2;
                    i7 = i;
                    z3 = z;
                }
                i2 = i6;
                z = z5;
                i = i8;
                i6++;
                length3 = i2;
                i7 = i;
                z3 = z;
            }
            if (length3 == abstractC10853agArr.length) {
                iArr = new int[trackGroup.length];
            } else {
                AbstractC10853ag abstractC10853ag2 = abstractC10853agArr[length3];
                iArr = new int[trackGroup.length];
                for (int i10 = 0; i10 < trackGroup.length; i10++) {
                    iArr[i10] = abstractC10853ag2.mo19748a(trackGroup.getFormat(i10));
                }
            }
            int i11 = iArr2[length3];
            trackGroupArr[length3][i11] = trackGroup;
            r0[length3][i11] = iArr;
            iArr2[length3] = iArr2[length3] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[abstractC10853agArr.length];
        String[] strArr = new String[abstractC10853agArr.length];
        int[] iArr4 = new int[abstractC10853agArr.length];
        for (int i12 = 0; i12 < abstractC10853agArr.length; i12++) {
            int i13 = iArr2[i12];
            trackGroupArrayArr[i12] = new TrackGroupArray((TrackGroup[]) C11599af.m19954a(trackGroupArr[i12], i13));
            r0[i12] = (int[][]) C11599af.m19954a(r0[i12], i13);
            strArr[i12] = abstractC10853agArr[i12].mo19682x();
            iArr4[i12] = abstractC10853agArr[i12].mo21812a();
        }
        C11441a c11441a = new C11441a(strArr, iArr4, trackGroupArrayArr, iArr3, r0, new TrackGroupArray((TrackGroup[]) C11599af.m19954a(trackGroupArr[abstractC10853agArr.length], iArr2[abstractC10853agArr.length])));
        Pair<RendererConfiguration[], AbstractC11436c[]> mo20564a = mo20564a(c11441a, r0, iArr3);
        return new C11446i((RendererConfiguration[]) mo20564a.first, (AbstractC11436c[]) mo20564a.second, c11441a);
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11444h
    /* renamed from: a */
    public final void mo20555a(Object obj) {
        this.f37820a = (C11441a) obj;
    }
}
