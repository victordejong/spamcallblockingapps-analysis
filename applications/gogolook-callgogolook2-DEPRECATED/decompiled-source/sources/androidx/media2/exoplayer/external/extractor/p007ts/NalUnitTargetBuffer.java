package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.NalUnitTargetBuffer */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer.class */
public final class NalUnitTargetBuffer {
    public boolean isCompleted;
    public boolean isFilling;
    public byte[] nalData;
    public int nalLength;
    public final int targetType;

    public NalUnitTargetBuffer(int i, int i2) {
        this.targetType = i;
        this.nalData = new byte[i2 + 3];
        this.nalData[2] = (byte) 1;
    }

    public void appendToNalUnit(byte[] bArr, int i, int i2) {
        if (this.isFilling) {
            int i3 = i2 - i;
            byte[] bArr2 = this.nalData;
            int length = bArr2.length;
            int i4 = this.nalLength;
            if (length < i4 + i3) {
                this.nalData = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.nalData, this.nalLength, i3);
            this.nalLength += i3;
        }
    }

    public boolean endNalUnit(int i) {
        if (!this.isFilling) {
            return false;
        }
        this.nalLength -= i;
        this.isFilling = false;
        this.isCompleted = true;
        return true;
    }

    public boolean isCompleted() {
        return this.isCompleted;
    }

    public void reset() {
        this.isFilling = false;
        this.isCompleted = false;
    }

    public void startNalUnit(int i) {
        boolean z = true;
        Assertions.checkState(!this.isFilling);
        if (i != this.targetType) {
            z = false;
        }
        this.isFilling = z;
        if (this.isFilling) {
            this.nalLength = 3;
            this.isCompleted = false;
        }
    }
}
