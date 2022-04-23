package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaq.class */
public final class zzaq extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaq> CREATOR = new q();
    private final Bundle zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new p(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, zzf(), false);
        a.b(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object zza(String str) {
        return this.zza.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long zzb(String str) {
        return Long.valueOf(this.zza.getLong("value"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Double zzc(String str) {
        return Double.valueOf(this.zza.getDouble("value"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzd(String str) {
        return this.zza.getString(str);
    }

    public final int zze() {
        return this.zza.size();
    }

    public final Bundle zzf() {
        return new Bundle(this.zza);
    }
}
