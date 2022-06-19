package androidx.media2.exoplayer.external.trackselection;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d.class */
public final class DefaultTrackSelector$d implements Comparable<DefaultTrackSelector$d> {

    /* renamed from: a */
    public final boolean f1126a;

    /* renamed from: b */
    public final boolean f1127b;

    /* renamed from: c */
    public final boolean f1128c;

    /* renamed from: d */
    public final boolean f1129d;

    /* renamed from: e */
    public final int f1130e;

    /* renamed from: f */
    public final int f1131f;

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
        if (r0 > 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DefaultTrackSelector$d(androidx.media2.exoplayer.external.Format r5, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters r6, int r7, java.lang.String r8) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = 0
            r9 = r0
            r0 = r4
            r1 = r7
            r2 = 0
            boolean r1 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.h(r1, r2)
            r0.f1127b = r1
            r0 = r5
            int r0 = r0.f954c
            r1 = r6
            int r1 = r1.f1136d
            r2 = -1
            r1 = r1 ^ r2
            r0 = r0 & r1
            r7 = r0
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = 1
            r10 = r0
            goto L2b
        L28:
            r0 = 0
            r10 = r0
        L2b:
            r0 = r4
            r1 = r10
            r0.f1128c = r1
            r0 = r7
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L3c
            r0 = 1
            r7 = r0
            goto L3e
        L3c:
            r0 = 0
            r7 = r0
        L3e:
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.f1134b
            r2 = r6
            boolean r2 = r2.f1135c
            int r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.f(r0, r1, r2)
            r11 = r0
            r0 = r4
            r1 = r11
            r0.f1130e = r1
            r0 = r11
            if (r0 <= 0) goto L5b
            r0 = r7
            if (r0 == 0) goto L64
        L5b:
            r0 = r11
            if (r0 != 0) goto L6a
            r0 = r7
            if (r0 == 0) goto L6a
        L64:
            r0 = 1
            r12 = r0
            goto L6d
        L6a:
            r0 = 0
            r12 = r0
        L6d:
            r0 = r4
            r1 = r12
            r0.f1129d = r1
            r0 = r8
            java.lang.String r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.k(r0)
            if (r0 != 0) goto L81
            r0 = 1
            r12 = r0
            goto L84
        L81:
            r0 = 0
            r12 = r0
        L84:
            r0 = r5
            r1 = r8
            r2 = r12
            int r0 = androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.f(r0, r1, r2)
            r13 = r0
            r0 = r4
            r1 = r13
            r0.f1131f = r1
            r0 = r11
            if (r0 > 0) goto Laf
            r0 = r10
            if (r0 != 0) goto Laf
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto Lb2
            r0 = r9
            r10 = r0
            r0 = r13
            if (r0 <= 0) goto Lb2
        Laf:
            r0 = 1
            r10 = r0
        Lb2:
            r0 = r4
            r1 = r10
            r0.f1126a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$d.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int, java.lang.String):void");
    }

    /* renamed from: a */
    public int compareTo(DefaultTrackSelector$d defaultTrackSelector$d) {
        boolean z = this.f1127b;
        int i = 1;
        if (z != defaultTrackSelector$d.f1127b) {
            return z ? 1 : -1;
        }
        int i2 = this.f1130e;
        int i3 = defaultTrackSelector$d.f1130e;
        if (i2 != i3) {
            return DefaultTrackSelector.c(i2, i3);
        }
        boolean z2 = this.f1128c;
        if (z2 != defaultTrackSelector$d.f1128c) {
            if (!z2) {
                i = -1;
            }
            return i;
        }
        boolean z3 = this.f1129d;
        if (z3 == defaultTrackSelector$d.f1129d) {
            return DefaultTrackSelector.c(this.f1131f, defaultTrackSelector$d.f1131f);
        }
        return z3 ? 1 : -1;
    }
}
