package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8928w;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Tile.class */
public final class Tile extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Tile> CREATOR = new C8928w();

    /* renamed from: a */
    public final int f7122a;

    /* renamed from: b */
    public final int f7123b;

    /* renamed from: c */
    public final byte[] f7124c;

    public Tile(int i, int i2, byte[] bArr) {
        this.f7122a = i;
        this.f7123b = i2;
        this.f7124c = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 2, this.f7122a);
        C7031b.m21225a(parcel, 3, this.f7123b);
        C7031b.m21211a(parcel, 4, this.f7124c, false);
        C7031b.m21229a(parcel, a);
    }
}
