package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/CompositeSequenceableLoader.class */
public class CompositeSequenceableLoader implements SequenceableLoader {
    public final SequenceableLoader[] loaders;

    public CompositeSequenceableLoader(SequenceableLoader[] sequenceableLoaderArr) {
        this.loaders = sequenceableLoaderArr;
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        SequenceableLoader[] sequenceableLoaderArr;
        boolean z = false;
        while (true) {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            boolean z2 = false;
            for (SequenceableLoader sequenceableLoader : this.loaders) {
                long nextLoadPositionUs2 = sequenceableLoader.getNextLoadPositionUs();
                boolean z3 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j;
                if (nextLoadPositionUs2 != nextLoadPositionUs) {
                    z2 = z2;
                    if (!z3) {
                    }
                }
                z2 |= sequenceableLoader.continueLoading(j);
            }
            boolean z4 = z | z2;
            z = z4;
            if (!z2) {
                z = z4;
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getBufferedPositionUs() {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.source.SequenceableLoader[] r0 = r0.loaders
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.getBufferedPositionUs()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r13 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0050
            r0 = -9223372036854775808
            r13 = r0
        L_0x0050:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.CompositeSequenceableLoader.getBufferedPositionUs():long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getNextLoadPositionUs() {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.source.SequenceableLoader[] r0 = r0.loaders
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.getNextLoadPositionUs()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r13 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0050
            r0 = -9223372036854775808
            r13 = r0
        L_0x0050:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.CompositeSequenceableLoader.getNextLoadPositionUs():long");
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    public final void reevaluateBuffer(long j) {
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            sequenceableLoader.reevaluateBuffer(j);
        }
    }
}
