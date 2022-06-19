package com.google.android.gms.internal.ads;

import androidx.room.RoomDatabase;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgp.class */
public enum zzgp implements zzelg {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6),
    UNKNOWN(RoomDatabase.MAX_BIND_PARAMETER_CNT);
    
    private static final zzelf<zzgp> zzes = new zzelf<zzgp>() { // from class: com.google.android.gms.internal.ads.zzgs
    };
    private final int value;

    zzgp(int i) {
        this.value = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        return this.value;
    }
}
