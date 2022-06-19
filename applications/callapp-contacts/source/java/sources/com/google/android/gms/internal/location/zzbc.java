package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.location.AbstractBinderC13770s;
import com.google.android.gms.location.AbstractBinderC13773v;
import com.google.android.gms.location.AbstractC13771t;
import com.google.android.gms.location.AbstractC13774w;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbc.class */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new C13344s();
    final int zza;
    final zzba zzb;
    final AbstractC13774w zzc;
    final PendingIntent zzd;
    final AbstractC13771t zze;
    final AbstractC13331f zzf;

    public zzbc(int i, zzba zzbaVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        C13329d c13329d;
        this.zza = i;
        this.zzb = zzbaVar;
        this.zzc = iBinder == null ? null : AbstractBinderC13773v.m12261a(iBinder);
        this.zzd = pendingIntent;
        this.zze = iBinder2 == null ? null : AbstractBinderC13770s.m12265a(iBinder2);
        if (iBinder3 == null) {
            c13329d = null;
        } else {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            c13329d = queryLocalInterface instanceof AbstractC13331f ? (AbstractC13331f) queryLocalInterface : new C13329d(iBinder3);
        }
        this.zzf = c13329d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.location.w, android.os.IBinder] */
    public static zzbc zza(AbstractC13774w abstractC13774w, AbstractC13331f abstractC13331f) {
        AbstractC13331f abstractC13331f2 = abstractC13331f;
        if (abstractC13331f == null) {
            abstractC13331f2 = null;
        }
        return new zzbc(2, null, abstractC13774w, null, null, abstractC13331f2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzbc zzb(zzba zzbaVar, PendingIntent pendingIntent, AbstractC13331f abstractC13331f) {
        return new zzbc(1, zzbaVar, null, pendingIntent, null, abstractC13331f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.location.t, android.os.IBinder] */
    public static zzbc zzc(AbstractC13771t abstractC13771t, AbstractC13331f abstractC13331f) {
        AbstractC13331f abstractC13331f2 = abstractC13331f;
        if (abstractC13331f == null) {
            abstractC13331f2 = null;
        }
        return new zzbc(2, null, null, null, abstractC13771t, abstractC13331f2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zza);
        C12050a.m19107a(parcel, 2, this.zzb, i, false);
        AbstractC13774w abstractC13774w = this.zzc;
        C12050a.m19109a(parcel, 3, abstractC13774w == null ? null : abstractC13774w.asBinder());
        C12050a.m19107a(parcel, 4, this.zzd, i, false);
        AbstractC13771t abstractC13771t = this.zze;
        C12050a.m19109a(parcel, 5, abstractC13771t == null ? null : abstractC13771t.asBinder());
        AbstractC13331f abstractC13331f = this.zzf;
        C12050a.m19109a(parcel, 6, abstractC13331f == null ? null : abstractC13331f.asBinder());
        C12050a.m19095b(parcel, m19116a);
    }
}
