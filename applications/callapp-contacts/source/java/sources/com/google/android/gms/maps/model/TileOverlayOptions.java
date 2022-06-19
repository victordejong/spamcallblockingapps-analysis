package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.p359e.AbstractBinderC13285d;
import com.google.android.gms.internal.p359e.AbstractC13284c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/TileOverlayOptions.class */
public final class TileOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new zzu();
    private float zzcs;
    private boolean zzct;
    private float zzda;
    private AbstractC13284c zzei;
    private TileProvider zzej;
    private boolean zzek;

    public TileOverlayOptions() {
        this.zzct = true;
        this.zzek = true;
        this.zzda = BitmapDescriptorFactory.HUE_RED;
    }

    public TileOverlayOptions(IBinder iBinder, boolean z, float f, boolean z2, float f2) {
        this.zzct = true;
        this.zzek = true;
        this.zzda = BitmapDescriptorFactory.HUE_RED;
        AbstractC13284c zzk = AbstractBinderC13285d.zzk(iBinder);
        this.zzei = zzk;
        this.zzej = zzk == null ? null : new zzs(this);
        this.zzct = z;
        this.zzcs = f;
        this.zzek = z2;
        this.zzda = f2;
    }

    public final TileOverlayOptions fadeIn(boolean z) {
        this.zzek = z;
        return this;
    }

    public final boolean getFadeIn() {
        return this.zzek;
    }

    public final TileProvider getTileProvider() {
        return this.zzej;
    }

    public final float getTransparency() {
        return this.zzda;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final TileOverlayOptions tileProvider(TileProvider tileProvider) {
        this.zzej = tileProvider;
        this.zzei = tileProvider == null ? null : new zzt(this, tileProvider);
        return this;
    }

    public final TileOverlayOptions transparency(float f) {
        C12045o.m19153b(f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzda = f;
        return this;
    }

    public final TileOverlayOptions visible(boolean z) {
        this.zzct = z;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19109a(parcel, 2, this.zzei.asBinder());
        C12050a.m19101a(parcel, 3, isVisible());
        C12050a.m19113a(parcel, 4, getZIndex());
        C12050a.m19101a(parcel, 5, getFadeIn());
        C12050a.m19113a(parcel, 6, getTransparency());
        C12050a.m19095b(parcel, m19116a);
    }

    public final TileOverlayOptions zIndex(float f) {
        this.zzcs = f;
        return this;
    }
}
