package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/SeekParameters.class */
public final class SeekParameters {
    public static final SeekParameters DEFAULT;
    public static final SeekParameters EXACT;
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;
    public static final SeekParameters CLOSEST_SYNC = new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final SeekParameters PREVIOUS_SYNC = new SeekParameters(Long.MAX_VALUE, 0);
    public static final SeekParameters NEXT_SYNC = new SeekParameters(0, Long.MAX_VALUE);

    static {
        SeekParameters seekParameters = new SeekParameters(0L, 0L);
        EXACT = seekParameters;
        DEFAULT = seekParameters;
    }

    public SeekParameters(long j, long j2) {
        Assertions.checkArgument(j >= 0);
        Assertions.checkArgument(j2 >= 0);
        this.toleranceBeforeUs = j;
        this.toleranceAfterUs = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || SeekParameters.class != obj.getClass()) {
            return false;
        }
        SeekParameters seekParameters = (SeekParameters) obj;
        if (this.toleranceBeforeUs != seekParameters.toleranceBeforeUs || this.toleranceAfterUs != seekParameters.toleranceAfterUs) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }
}
