package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractBinderC8535c;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8534b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8929x;
import p081h.p203i.p204a.p224e.p282l.p284k.C8930y;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/TileOverlayOptions.class */
public final class TileOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new C8930y();

    /* renamed from: a */
    public AbstractC8534b f7125a;

    /* renamed from: b */
    public boolean f7126b;

    /* renamed from: c */
    public float f7127c;

    /* renamed from: d */
    public boolean f7128d;

    /* renamed from: e */
    public float f7129e;

    public TileOverlayOptions() {
        this.f7126b = true;
        this.f7128d = true;
        this.f7129e = 0.0f;
    }

    public TileOverlayOptions(IBinder iBinder, boolean z, float f, boolean z2, float f2) {
        this.f7126b = true;
        this.f7128d = true;
        this.f7129e = 0.0f;
        this.f7125a = AbstractBinderC8535c.m17860a(iBinder);
        if (this.f7125a != null) {
            new C8929x(this);
        }
        this.f7126b = z;
        this.f7127c = f;
        this.f7128d = z2;
        this.f7129e = f2;
    }

    /* renamed from: H */
    public final float m31681H() {
        return this.f7129e;
    }

    /* renamed from: I */
    public final float m31680I() {
        return this.f7127c;
    }

    /* renamed from: J */
    public final boolean m31679J() {
        return this.f7126b;
    }

    /* renamed from: c */
    public final boolean m31677c() {
        return this.f7128d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21222a(parcel, 2, this.f7125a.asBinder(), false);
        C7031b.m21212a(parcel, 3, m31679J());
        C7031b.m21226a(parcel, 4, m31680I());
        C7031b.m21212a(parcel, 5, m31677c());
        C7031b.m21226a(parcel, 6, m31681H());
        C7031b.m21229a(parcel, a);
    }
}
