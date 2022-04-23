package nl.dionsegijn.konfetti.models;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003JE\u0010!\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\"\u001a\u00020\u00032\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012¨\u0006("}, d2 = {"Lnl/dionsegijn/konfetti/models/ConfettiConfig;", "", "fadeOut", "", "timeToLive", "", "rotate", "accelerate", "delay", "speedDensityIndependent", "(ZJZZJZ)V", "getAccelerate", "()Z", "setAccelerate", "(Z)V", "getDelay", "()J", "setDelay", "(J)V", "getFadeOut", "setFadeOut", "getRotate", "setRotate", "getSpeedDensityIndependent", "setSpeedDensityIndependent", "getTimeToLive", "setTimeToLive", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "", "toString", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/ConfettiConfig.class */
public final class ConfettiConfig {
    private boolean accelerate;
    private long delay;
    private boolean fadeOut;
    private boolean rotate;
    private boolean speedDensityIndependent;
    private long timeToLive;

    public ConfettiConfig() {
        this(false, 0L, false, false, 0L, false, 63, null);
    }

    public ConfettiConfig(boolean z, long j, boolean z2, boolean z3, long j2, boolean z4) {
        this.fadeOut = z;
        this.timeToLive = j;
        this.rotate = z2;
        this.accelerate = z3;
        this.delay = j2;
        this.speedDensityIndependent = z4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ConfettiConfig(boolean r11, long r12, boolean r14, boolean r15, long r16, boolean r18, int r19, kotlin.jvm.internal.DefaultConstructorMarker r20) {
        /*
            r10 = this;
            r0 = r19
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000c
            r0 = 0
            r11 = r0
            goto L_0x000c
        L_0x000c:
            r0 = r19
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001a
            r0 = 2000(0x7d0, double:9.88E-321)
            r12 = r0
            goto L_0x001a
        L_0x001a:
            r0 = 1
            r21 = r0
            r0 = r19
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002a
            r0 = 1
            r14 = r0
            goto L_0x002a
        L_0x002a:
            r0 = r19
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0038
            r0 = 1
            r15 = r0
            goto L_0x0038
        L_0x0038:
            r0 = r19
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0046
            r0 = 0
            r16 = r0
            goto L_0x0046
        L_0x0046:
            r0 = r19
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0055
            r0 = r21
            r18 = r0
            goto L_0x0055
        L_0x0055:
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r14
            r4 = r15
            r5 = r16
            r6 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: nl.dionsegijn.konfetti.models.ConfettiConfig.<init>(boolean, long, boolean, boolean, long, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public static /* synthetic */ ConfettiConfig copy$default(ConfettiConfig confettiConfig, boolean z, long j, boolean z2, boolean z3, long j2, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = confettiConfig.fadeOut;
        }
        if ((i & 2) != 0) {
            j = confettiConfig.timeToLive;
        }
        if ((i & 4) != 0) {
            z2 = confettiConfig.rotate;
        }
        if ((i & 8) != 0) {
            z3 = confettiConfig.accelerate;
        }
        if ((i & 16) != 0) {
            j2 = confettiConfig.delay;
        }
        if ((i & 32) != 0) {
            z4 = confettiConfig.speedDensityIndependent;
        }
        return confettiConfig.copy(z, j, z2, z3, j2, z4);
    }

    public final boolean component1() {
        return this.fadeOut;
    }

    public final long component2() {
        return this.timeToLive;
    }

    public final boolean component3() {
        return this.rotate;
    }

    public final boolean component4() {
        return this.accelerate;
    }

    public final long component5() {
        return this.delay;
    }

    public final boolean component6() {
        return this.speedDensityIndependent;
    }

    public final ConfettiConfig copy(boolean z, long j, boolean z2, boolean z3, long j2, boolean z4) {
        return new ConfettiConfig(z, j, z2, z3, j2, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfettiConfig)) {
            return false;
        }
        ConfettiConfig confettiConfig = (ConfettiConfig) obj;
        return this.fadeOut == confettiConfig.fadeOut && this.timeToLive == confettiConfig.timeToLive && this.rotate == confettiConfig.rotate && this.accelerate == confettiConfig.accelerate && this.delay == confettiConfig.delay && this.speedDensityIndependent == confettiConfig.speedDensityIndependent;
    }

    public final boolean getAccelerate() {
        return this.accelerate;
    }

    public final long getDelay() {
        return this.delay;
    }

    public final boolean getFadeOut() {
        return this.fadeOut;
    }

    public final boolean getRotate() {
        return this.rotate;
    }

    public final boolean getSpeedDensityIndependent() {
        return this.speedDensityIndependent;
    }

    public final long getTimeToLive() {
        return this.timeToLive;
    }

    public final int hashCode() {
        boolean z = this.fadeOut;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        int hashCode = C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.timeToLive);
        boolean z3 = this.rotate;
        int i2 = z3 ? 1 : 0;
        if (z3) {
            i2 = 1;
        }
        boolean z4 = this.accelerate;
        int i3 = z4 ? 1 : 0;
        if (z4) {
            i3 = 1;
        }
        int hashCode2 = C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.delay);
        boolean z5 = this.speedDensityIndependent;
        if (!z5) {
            i = z5 ? 1 : 0;
        }
        int i4 = z2 ? 1 : 0;
        int i5 = z2 ? 1 : 0;
        return (((((((((i4 * 31) + hashCode) * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i;
    }

    public final void setAccelerate(boolean z) {
        this.accelerate = z;
    }

    public final void setDelay(long j) {
        this.delay = j;
    }

    public final void setFadeOut(boolean z) {
        this.fadeOut = z;
    }

    public final void setRotate(boolean z) {
        this.rotate = z;
    }

    public final void setSpeedDensityIndependent(boolean z) {
        this.speedDensityIndependent = z;
    }

    public final void setTimeToLive(long j) {
        this.timeToLive = j;
    }

    public final String toString() {
        return "ConfettiConfig(fadeOut=" + this.fadeOut + ", timeToLive=" + this.timeToLive + ", rotate=" + this.rotate + ", accelerate=" + this.accelerate + ", delay=" + this.delay + ", speedDensityIndependent=" + this.speedDensityIndependent + ")";
    }
}
