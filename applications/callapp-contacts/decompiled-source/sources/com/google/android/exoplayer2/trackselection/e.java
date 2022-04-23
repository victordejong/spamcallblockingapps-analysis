package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/e.class */
public abstract class e extends h {

    /* renamed from: a  reason: collision with root package name */
    public a f21936a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21937a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f21938b;

        /* renamed from: c  reason: collision with root package name */
        public final TrackGroupArray[] f21939c;

        /* renamed from: d  reason: collision with root package name */
        private final String[] f21940d;
        private final int[] e;
        private final int[][][] f;
        private final TrackGroupArray g;

        a(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f21940d = strArr;
            this.f21938b = iArr;
            this.f21939c = trackGroupArrayArr;
            this.f = iArr3;
            this.e = iArr2;
            this.g = trackGroupArray;
            this.f21937a = iArr.length;
        }

        public final int a(int i, int i2) {
            int i3 = this.f21939c[i].get(i2).length;
            int[] iArr = new int[i3];
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i3; i6++) {
                i5 = i5;
                if (a(i, i2, i6) == 4) {
                    iArr[i5] = i6;
                    i5++;
                }
            }
            int[] copyOf = Arrays.copyOf(iArr, i5);
            int i7 = 16;
            String str = null;
            boolean z = false;
            int i8 = 0;
            while (i4 < copyOf.length) {
                String str2 = this.f21939c[i].get(i2).getFormat(copyOf[i4]).sampleMimeType;
                if (i8 == 0) {
                    str = str2;
                } else {
                    z |= !af.a((Object) str, (Object) str2);
                }
                i7 = Math.min(i7, this.f[i][i2][i4] & 24);
                i4++;
                i8++;
            }
            return z ? Math.min(i7, this.e[i]) : i7;
        }

        public final int a(int i, int i2, int i3) {
            return this.f[i][i2][i3] & 7;
        }
    }

    protected abstract Pair<RendererConfiguration[], c[]> a(a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.trackselection.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.trackselection.i a(com.google.android.exoplayer2.ag[] r13, com.google.android.exoplayer2.source.TrackGroupArray r14, com.google.android.exoplayer2.source.r.a r15, com.google.android.exoplayer2.al r16) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.e.a(com.google.android.exoplayer2.ag[], com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.source.r$a, com.google.android.exoplayer2.al):com.google.android.exoplayer2.trackselection.i");
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public final void a(Object obj) {
        this.f21936a = (a) obj;
    }
}
