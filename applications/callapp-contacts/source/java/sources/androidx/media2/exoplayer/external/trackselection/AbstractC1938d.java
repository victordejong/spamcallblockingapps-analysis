package androidx.media2.exoplayer.external.trackselection;

import android.util.Pair;
import androidx.media2.exoplayer.external.AbstractC1376ah;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.trackselection.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/d.class */
public abstract class AbstractC1938d extends AbstractC1944g {

    /* renamed from: a */
    public C1939a f7808a;

    /* renamed from: androidx.media2.exoplayer.external.trackselection.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/d$a.class */
    public static final class C1939a {
        @Deprecated

        /* renamed from: a */
        public final int f7809a;

        /* renamed from: b */
        final int f7810b;

        /* renamed from: c */
        final int[] f7811c;

        /* renamed from: d */
        public final TrackGroupArray[] f7812d;

        /* renamed from: e */
        private final int[] f7813e;

        /* renamed from: f */
        private final int[][][] f7814f;

        /* renamed from: g */
        private final TrackGroupArray f7815g;

        C1939a(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f7811c = iArr;
            this.f7812d = trackGroupArrayArr;
            this.f7814f = iArr3;
            this.f7813e = iArr2;
            this.f7815g = trackGroupArray;
            int length = iArr.length;
            this.f7810b = length;
            this.f7809a = length;
        }
    }

    /* renamed from: a */
    protected abstract Pair<RendererConfiguration[], AbstractC1940e[]> mo41838a(C1939a c1939a, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1944g
    /* renamed from: a */
    public final C1946h mo41819a(AbstractC1376ah[] abstractC1376ahArr, TrackGroupArray trackGroupArray) throws ExoPlaybackException {
        int i;
        int[] iArr;
        int[] iArr2 = new int[abstractC1376ahArr.length + 1];
        int length = abstractC1376ahArr.length + 1;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        ?? r0 = new int[abstractC1376ahArr.length + 1];
        for (int i2 = 0; i2 < length; i2++) {
            trackGroupArr[i2] = new TrackGroup[trackGroupArray.length];
            r0[i2] = new int[trackGroupArray.length];
        }
        int length2 = abstractC1376ahArr.length;
        int[] iArr3 = new int[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            iArr3[i3] = abstractC1376ahArr[i3].mo42455o();
        }
        for (int i4 = 0; i4 < trackGroupArray.length; i4++) {
            TrackGroup trackGroup = trackGroupArray.get(i4);
            int length3 = abstractC1376ahArr.length;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                i = length3;
                if (i5 >= abstractC1376ahArr.length) {
                    break;
                }
                AbstractC1376ah abstractC1376ah = abstractC1376ahArr[i5];
                int i7 = 0;
                int i8 = length3;
                while (i7 < trackGroup.length) {
                    int mo41178a = abstractC1376ah.mo41178a(trackGroup.getFormat(i7)) & 7;
                    int i9 = i6;
                    if (mo41178a > i6) {
                        if (mo41178a == 4) {
                            i = i5;
                            break;
                        }
                        i8 = i5;
                        i9 = mo41178a;
                    }
                    i7++;
                    i6 = i9;
                }
                i5++;
                length3 = i8;
            }
            if (i == abstractC1376ahArr.length) {
                iArr = new int[trackGroup.length];
            } else {
                AbstractC1376ah abstractC1376ah2 = abstractC1376ahArr[i];
                iArr = new int[trackGroup.length];
                for (int i10 = 0; i10 < trackGroup.length; i10++) {
                    iArr[i10] = abstractC1376ah2.mo41178a(trackGroup.getFormat(i10));
                }
            }
            int i11 = iArr2[i];
            trackGroupArr[i][i11] = trackGroup;
            r0[i][i11] = iArr;
            iArr2[i] = iArr2[i] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[abstractC1376ahArr.length];
        int[] iArr4 = new int[abstractC1376ahArr.length];
        for (int i12 = 0; i12 < abstractC1376ahArr.length; i12++) {
            int i13 = iArr2[i12];
            trackGroupArrayArr[i12] = new TrackGroupArray((TrackGroup[]) C1996ac.m41642a(trackGroupArr[i12], i13));
            r0[i12] = (int[][]) C1996ac.m41642a(r0[i12], i13);
            iArr4[i12] = abstractC1376ahArr[i12].mo42938a();
        }
        C1939a c1939a = new C1939a(iArr4, trackGroupArrayArr, iArr3, r0, new TrackGroupArray((TrackGroup[]) C1996ac.m41642a(trackGroupArr[abstractC1376ahArr.length], iArr2[abstractC1376ahArr.length])));
        Pair<RendererConfiguration[], AbstractC1940e[]> mo41838a = mo41838a(c1939a, r0, iArr3);
        return new C1946h((RendererConfiguration[]) mo41838a.first, (AbstractC1940e[]) mo41838a.second, c1939a);
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1944g
    /* renamed from: a */
    public final void mo41820a(Object obj) {
        this.f7808a = (C1939a) obj;
    }
}
