package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.e.c;
import com.google.android.gms.internal.e.d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/TileOverlayOptions.class */
public final class TileOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new zzu();
    private float zzcs;
    private boolean zzct;
    private float zzda;
    private c zzei;
    private TileProvider zzej;
    private boolean zzek;

    public TileOverlayOptions() {
        this.zzct = true;
        this.zzek = true;
        this.zzda = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TileOverlayOptions(IBinder iBinder, boolean z, float f, boolean z2, float f2) {
        this.zzct = true;
        this.zzek = true;
        this.zzda = BitmapDescriptorFactory.HUE_RED;
        c zzk = d.zzk(iBinder);
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
        o.b(f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzda = f;
        return this;
    }

    public final TileOverlayOptions visible(boolean z) {
        this.zzct = z;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzei.asBinder());
        a.a(parcel, 3, isVisible());
        a.a(parcel, 4, getZIndex());
        a.a(parcel, 5, getFadeIn());
        a.a(parcel, 6, getTransparency());
        a.b(parcel, a2);
    }

    public final TileOverlayOptions zIndex(float f) {
        this.zzcs = f;
        return this;
    }
}
