package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements AbstractC11925m, ReflectedParcelable {
    final int zzb;
    private final int zzc;
    private final String zzd;
    private final PendingIntent zze;
    private final ConnectionResult zzf;
    public static final Status RESULT_SUCCESS = new Status(0);
    public static final Status RESULT_INTERRUPTED = new Status(14);
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);
    public static final Status RESULT_TIMEOUT = new Status(15);
    public static final Status RESULT_CANCELED = new Status(16);
    public static final Status zza = new Status(17);
    public static final Status RESULT_DEAD_CLIENT = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new C11936x();

    public Status(int i) {
        this(i, (String) null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this(i, i2, str, pendingIntent, null);
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = str;
        this.zze = pendingIntent;
        this.zzf = connectionResult;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public Status(ConnectionResult connectionResult, String str) {
        this(connectionResult, str, 17);
    }

    @Deprecated
    public Status(ConnectionResult connectionResult, String str, int i) {
        this(1, i, str, connectionResult.getResolution(), connectionResult);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.zzb == status.zzb && this.zzc == status.zzc && C12041m.m19168a(this.zzd, status.zzd) && C12041m.m19168a(this.zze, status.zze) && C12041m.m19168a(this.zzf, status.zzf);
    }

    public final ConnectionResult getConnectionResult() {
        return this.zzf;
    }

    public final PendingIntent getResolution() {
        return this.zze;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this;
    }

    public final int getStatusCode() {
        return this.zzc;
    }

    public final String getStatusMessage() {
        return this.zzd;
    }

    public final boolean hasResolution() {
        return this.zze != null;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd, this.zze, this.zzf});
    }

    public final boolean isCanceled() {
        return this.zzc == 16;
    }

    public final boolean isInterrupted() {
        return this.zzc == 14;
    }

    public final boolean isSuccess() {
        return this.zzc <= 0;
    }

    public final void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (!hasResolution()) {
            return;
        }
        PendingIntent pendingIntent = this.zze;
        C12045o.m19162a(pendingIntent);
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
    }

    public final String toString() {
        C12041m.C12042a m19169a = C12041m.m19169a(this);
        m19169a.m19166a("statusCode", zza());
        m19169a.m19166a("resolution", this.zze);
        return m19169a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, getStatusCode());
        C12050a.m19104a(parcel, 2, getStatusMessage(), false);
        C12050a.m19107a(parcel, 3, this.zze, i, false);
        C12050a.m19107a(parcel, 4, getConnectionResult(), i, false);
        C12050a.m19112a(parcel, 1000, this.zzb);
        C12050a.m19095b(parcel, m19116a);
    }

    public final String zza() {
        String str = this.zzd;
        return str != null ? str : C11822e.m19462a(this.zzc);
    }
}
