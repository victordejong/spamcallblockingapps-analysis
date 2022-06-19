package com.google.android.gms.internal.firebase_perf;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzar.class */
public final class zzar {
    private final Bundle zzhd;

    public zzar() {
        this(new Bundle());
    }

    public zzar(Bundle bundle) {
        this.zzhd = (Bundle) bundle.clone();
    }

    public final boolean containsKey(String str) {
        return this.zzhd.containsKey(str);
    }

    public final boolean getBoolean(String str, boolean z) {
        return this.zzhd.getBoolean(str, z);
    }

    public final float getFloat(String str, float f) {
        return this.zzhd.getFloat(str, f);
    }

    public final int getInt(String str, int i) {
        return this.zzhd.getInt(str, i);
    }
}
