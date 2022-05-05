package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.location.zzbh;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8822e0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/GeofencingRequest.class */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new C8822e0();

    /* renamed from: a */
    public final List<zzbh> f6927a;

    /* renamed from: b */
    public final int f6928b;

    /* renamed from: c */
    public final String f6929c;

    public GeofencingRequest(List<zzbh> list, int i, String str) {
        this.f6927a = list;
        this.f6928b = i;
        this.f6929c = str;
    }

    /* renamed from: c */
    public int m31813c() {
        return this.f6928b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GeofencingRequest[");
        sb.append("geofences=");
        sb.append(this.f6927a);
        int i = this.f6928b;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(", initialTrigger=");
        sb2.append(i);
        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(sb2.toString());
        String valueOf = String.valueOf(this.f6929c);
        sb.append(valueOf.length() != 0 ? "tag=".concat(valueOf) : new String("tag="));
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 1, this.f6927a, false);
        C7031b.m21225a(parcel, 2, m31813c());
        C7031b.m21215a(parcel, 3, this.f6929c, false);
        C7031b.m21229a(parcel, a);
    }
}
