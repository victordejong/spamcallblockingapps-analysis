package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigValue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfe.class */
public final class zzfe implements FirebaseRemoteConfigValue {
    private final String value;
    private final int zzmc;

    public zzfe(String str, int i) {
        this.value = str;
        this.zzmc = i;
    }

    @Override // com.google.firebase.remoteconfig.FirebaseRemoteConfigValue
    public final boolean asBoolean() {
        if (this.zzmc == 0) {
            return false;
        }
        String trim = asString().trim();
        if (zzew.zzlo.matcher(trim).matches()) {
            return true;
        }
        if (!zzew.zzlp.matcher(trim).matches()) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", trim, "boolean"));
        }
        return false;
    }

    @Override // com.google.firebase.remoteconfig.FirebaseRemoteConfigValue
    public final byte[] asByteArray() {
        return this.zzmc == 0 ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_BYTE_ARRAY : this.value.getBytes(zzew.zzln);
    }

    @Override // com.google.firebase.remoteconfig.FirebaseRemoteConfigValue
    public final double asDouble() {
        if (this.zzmc == 0) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        String trim = asString().trim();
        try {
            return Double.valueOf(trim).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", trim, "double"), e);
        }
    }

    @Override // com.google.firebase.remoteconfig.FirebaseRemoteConfigValue
    public final long asLong() {
        if (this.zzmc == 0) {
            return 0L;
        }
        String trim = asString().trim();
        try {
            return Long.valueOf(trim).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", trim, "long"), e);
        }
    }

    @Override // com.google.firebase.remoteconfig.FirebaseRemoteConfigValue
    public final String asString() {
        if (this.zzmc == 0) {
            return "";
        }
        String str = this.value;
        if (str == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
        return str;
    }

    @Override // com.google.firebase.remoteconfig.FirebaseRemoteConfigValue
    public final int getSource() {
        return this.zzmc;
    }
}
