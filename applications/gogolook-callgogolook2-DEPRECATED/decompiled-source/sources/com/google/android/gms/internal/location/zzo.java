package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8505f;
import p081h.p203i.p204a.p224e.p259j.p274o.C8509h;
import p081h.p203i.p204a.p224e.p259j.p274o.C8512i0;
import p081h.p203i.p204a.p224e.p280k.AbstractC8824f0;
import p081h.p203i.p204a.p224e.p280k.BinderC8826g0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzo.class */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new C8512i0();

    /* renamed from: a */
    public int f6888a;

    /* renamed from: b */
    public zzm f6889b;

    /* renamed from: c */
    public AbstractC8824f0 f6890c;

    /* renamed from: d */
    public AbstractC8505f f6891d;

    public zzo(int i, zzm zzmVar, IBinder iBinder, IBinder iBinder2) {
        AbstractC8505f fVar;
        this.f6888a = i;
        this.f6889b = zzmVar;
        this.f6890c = iBinder == null ? null : BinderC8826g0.m16889a(iBinder);
        if (iBinder2 == null) {
            fVar = null;
        } else if (iBinder2 == null) {
            fVar = null;
        } else {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            fVar = queryLocalInterface instanceof AbstractC8505f ? (AbstractC8505f) queryLocalInterface : new C8509h(iBinder2);
        }
        this.f6891d = fVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6888a);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6889b, i, false);
        AbstractC8824f0 f0Var = this.f6890c;
        IBinder iBinder = null;
        C7031b.m21222a(parcel, 3, f0Var == null ? null : f0Var.asBinder(), false);
        AbstractC8505f fVar = this.f6891d;
        if (fVar != null) {
            iBinder = fVar.asBinder();
        }
        C7031b.m21222a(parcel, 4, iBinder, false);
        C7031b.m21229a(parcel, a);
    }
}
