package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ConnectionTelemetryConfiguration.class */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new zzk();
    private final RootTelemetryConfiguration zza;
    private final boolean zzb;
    private final boolean zzc;
    private final int[] zzd;
    private final int zze;
    private final int[] zzf;

    public ConnectionTelemetryConfiguration(RootTelemetryConfiguration rootTelemetryConfiguration, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.zza = rootTelemetryConfiguration;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = iArr;
        this.zze = i;
        this.zzf = iArr2;
    }

    public int getMaxMethodInvocationsLogged() {
        return this.zze;
    }

    public int[] getMethodInvocationMethodKeyAllowlist() {
        return this.zzd;
    }

    public int[] getMethodInvocationMethodKeyDisallowlist() {
        return this.zzf;
    }

    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    public RootTelemetryConfiguration getRootTelemetryConfiguration() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getRootTelemetryConfiguration(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 2, getMethodInvocationTelemetryEnabled());
        SafeParcelWriter.writeBoolean(parcel, 3, getMethodTimingTelemetryEnabled());
        SafeParcelWriter.writeIntArray(parcel, 4, getMethodInvocationMethodKeyAllowlist(), false);
        SafeParcelWriter.writeInt(parcel, 5, getMaxMethodInvocationsLogged());
        SafeParcelWriter.writeIntArray(parcel, 6, getMethodInvocationMethodKeyDisallowlist(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
