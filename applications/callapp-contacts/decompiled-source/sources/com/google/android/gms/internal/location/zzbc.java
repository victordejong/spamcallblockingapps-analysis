package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.location.s;
import com.google.android.gms.location.t;
import com.google.android.gms.location.v;
import com.google.android.gms.location.w;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbc.class */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new s();
    final int zza;
    final zzba zzb;
    final w zzc;
    final PendingIntent zzd;
    final t zze;
    final f zzf;

    public zzbc(int i, zzba zzbaVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        this.zza = i;
        this.zzb = zzbaVar;
        f fVar = null;
        this.zzc = iBinder == null ? null : v.a(iBinder);
        this.zzd = pendingIntent;
        this.zze = iBinder2 == null ? null : s.a(iBinder2);
        if (iBinder3 != null) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            fVar = queryLocalInterface instanceof f ? (f) queryLocalInterface : new d(iBinder3);
        }
        this.zzf = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.location.w, android.os.IBinder] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.location.zzbc zza(com.google.android.gms.location.w r9, com.google.android.gms.internal.location.f r10) {
        /*
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0008
            r0 = 0
            r11 = r0
        L_0x0008:
            com.google.android.gms.internal.location.zzbc r0 = new com.google.android.gms.internal.location.zzbc
            r1 = r0
            r2 = 2
            r3 = 0
            r4 = r9
            r5 = 0
            r6 = 0
            r7 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.location.zzbc.zza(com.google.android.gms.location.w, com.google.android.gms.internal.location.f):com.google.android.gms.internal.location.zzbc");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzbc zzb(zzba zzbaVar, PendingIntent pendingIntent, f fVar) {
        return new zzbc(1, zzbaVar, null, pendingIntent, null, fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.location.t, android.os.IBinder] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.location.zzbc zzc(com.google.android.gms.location.t r9, com.google.android.gms.internal.location.f r10) {
        /*
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0008
            r0 = 0
            r11 = r0
        L_0x0008:
            com.google.android.gms.internal.location.zzbc r0 = new com.google.android.gms.internal.location.zzbc
            r1 = r0
            r2 = 2
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = r9
            r7 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.location.zzbc.zzc(com.google.android.gms.location.t, com.google.android.gms.internal.location.f):com.google.android.gms.internal.location.zzbc");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb, i, false);
        w wVar = this.zzc;
        IBinder iBinder = null;
        a.a(parcel, 3, wVar == null ? null : wVar.asBinder());
        a.a(parcel, 4, this.zzd, i, false);
        t tVar = this.zze;
        a.a(parcel, 5, tVar == null ? null : tVar.asBinder());
        f fVar = this.zzf;
        if (fVar != null) {
            iBinder = fVar.asBinder();
        }
        a.a(parcel, 6, iBinder);
        a.b(parcel, a2);
    }
}
