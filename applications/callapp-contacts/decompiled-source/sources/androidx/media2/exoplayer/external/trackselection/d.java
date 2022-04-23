package androidx.media2.exoplayer.external.trackselection;

import android.util.Pair;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/d.class */
public abstract class d extends g {

    /* renamed from: a  reason: collision with root package name */
    public a f3974a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/d$a.class */
    public static final class a {
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        public final int f3975a;

        /* renamed from: b  reason: collision with root package name */
        final int f3976b;

        /* renamed from: c  reason: collision with root package name */
        final int[] f3977c;

        /* renamed from: d  reason: collision with root package name */
        public final TrackGroupArray[] f3978d;
        private final int[] e;
        private final int[][][] f;
        private final TrackGroupArray g;

        a(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f3977c = iArr;
            this.f3978d = trackGroupArrayArr;
            this.f = iArr3;
            this.e = iArr2;
            this.g = trackGroupArray;
            int length = iArr.length;
            this.f3976b = length;
            this.f3975a = length;
        }
    }

    protected abstract Pair<RendererConfiguration[], e[]> a(a aVar, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.trackselection.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.trackselection.h a(androidx.media2.exoplayer.external.ah[] r12, androidx.media2.exoplayer.external.source.TrackGroupArray r13) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.d.a(androidx.media2.exoplayer.external.ah[], androidx.media2.exoplayer.external.source.TrackGroupArray):androidx.media2.exoplayer.external.trackselection.h");
    }

    @Override // androidx.media2.exoplayer.external.trackselection.g
    public final void a(Object obj) {
        this.f3974a = (a) obj;
    }
}
