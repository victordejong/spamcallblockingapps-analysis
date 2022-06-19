package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c.class */
public final class DefaultTrackSelector$c implements Comparable<DefaultTrackSelector$c> {

    /* renamed from: a */
    public final boolean f1168a;

    /* renamed from: b */
    public final DefaultTrackSelector.Parameters f1169b;

    /* renamed from: c */
    public final boolean f1170c;

    /* renamed from: d */
    public final int f1171d;

    /* renamed from: f */
    public final int f1172f;

    /* renamed from: g */
    public final int f1173g;

    /* renamed from: h */
    public final boolean f1174h;

    /* renamed from: j */
    public final int f1175j;

    /* renamed from: k */
    public final int f1176k;

    /* renamed from: l */
    public final int f1177l;

    /* JADX WARN: Removed duplicated region for block: B:19:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00be A[EDGE_INSN: B:25:0x00be->B:23:0x00be ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DefaultTrackSelector$c(androidx.media2.exoplayer.external.Format r5, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r6, int r7) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$c.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int):void");
    }

    /* renamed from: a */
    public int compareTo(DefaultTrackSelector$c defaultTrackSelector$c) {
        int k;
        int l;
        boolean z = this.f1170c;
        int i = 1;
        if (z != defaultTrackSelector$c.f1170c) {
            return z ? 1 : -1;
        }
        int i2 = this.f1171d;
        int i3 = defaultTrackSelector$c.f1171d;
        if (i2 != i3) {
            return DefaultTrackSelector.k(i2, i3);
        }
        boolean z2 = this.f1168a;
        if (z2 != defaultTrackSelector$c.f1168a) {
            return z2 ? 1 : -1;
        } else if (this.f1169b.w && (l = DefaultTrackSelector.l(this.f1177l, defaultTrackSelector$c.f1177l)) != 0) {
            int i4 = 1;
            if (l > 0) {
                i4 = -1;
            }
            return i4;
        } else {
            boolean z3 = this.f1174h;
            if (z3 != defaultTrackSelector$c.f1174h) {
                return z3 ? 1 : -1;
            }
            int i5 = this.f1172f;
            int i6 = defaultTrackSelector$c.f1172f;
            if (i5 != i6) {
                return -DefaultTrackSelector.k(i5, i6);
            }
            int i7 = this.f1173g;
            int i8 = defaultTrackSelector$c.f1173g;
            if (i7 != i8) {
                return DefaultTrackSelector.k(i7, i8);
            }
            if (!this.f1168a || !this.f1170c) {
                i = -1;
            }
            int i9 = this.f1175j;
            int i10 = defaultTrackSelector$c.f1175j;
            if (i9 == i10) {
                i9 = this.f1176k;
                i10 = defaultTrackSelector$c.f1176k;
                if (i9 == i10) {
                    k = DefaultTrackSelector.k(this.f1177l, defaultTrackSelector$c.f1177l);
                    return i * k;
                }
            }
            k = DefaultTrackSelector.k(i9, i10);
            return i * k;
        }
    }
}
