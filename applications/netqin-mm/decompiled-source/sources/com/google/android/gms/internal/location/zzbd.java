package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbd.class */
public final class zzbd extends AbstractSafeParcelable {
    @SafeParcelable.Field

    /* renamed from: a */
    public LocationRequest f29367a;
    @SafeParcelable.Field

    /* renamed from: b */
    public List<ClientIdentity> f29368b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f29369c;
    @SafeParcelable.Field

    /* renamed from: d */
    public boolean f29370d;
    @SafeParcelable.Field

    /* renamed from: e */
    public boolean f29371e;
    @SafeParcelable.Field

    /* renamed from: f */
    public boolean f29372f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f29373g;

    /* renamed from: h */
    public static final List<ClientIdentity> f29366h = Collections.emptyList();
    public static final Parcelable.Creator<zzbd> CREATOR = new zzbe();

    @SafeParcelable.Constructor
    public zzbd(@SafeParcelable.Param(id = 1) LocationRequest locationRequest, @SafeParcelable.Param(id = 5) List<ClientIdentity> list, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) boolean z3, @SafeParcelable.Param(id = 10) String str2) {
        this.f29367a = locationRequest;
        this.f29368b = list;
        this.f29369c = str;
        this.f29370d = z;
        this.f29371e = z2;
        this.f29372f = z3;
        this.f29373g = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbd)) {
            return false;
        }
        zzbd zzbdVar = (zzbd) obj;
        return Objects.m17295a(this.f29367a, zzbdVar.f29367a) && Objects.m17295a(this.f29368b, zzbdVar.f29368b) && Objects.m17295a(this.f29369c, zzbdVar.f29369c) && this.f29370d == zzbdVar.f29370d && this.f29371e == zzbdVar.f29371e && this.f29372f == zzbdVar.f29372f && Objects.m17295a(this.f29373g, zzbdVar.f29373g);
    }

    public final int hashCode() {
        return this.f29367a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f29367a);
        if (this.f29369c != null) {
            sb.append(" tag=");
            sb.append(this.f29369c);
        }
        if (this.f29373g != null) {
            sb.append(" moduleId=");
            sb.append(this.f29373g);
        }
        sb.append(" hideAppOps=");
        sb.append(this.f29370d);
        sb.append(" clients=");
        sb.append(this.f29368b);
        sb.append(" forceCoarseLocation=");
        sb.append(this.f29371e);
        if (this.f29372f) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 1, (Parcelable) this.f29367a, i, false);
        SafeParcelWriter.m17207c(parcel, 5, this.f29368b, false);
        SafeParcelWriter.m17221a(parcel, 6, this.f29369c, false);
        SafeParcelWriter.m17218a(parcel, 7, this.f29370d);
        SafeParcelWriter.m17218a(parcel, 8, this.f29371e);
        SafeParcelWriter.m17218a(parcel, 9, this.f29372f);
        SafeParcelWriter.m17221a(parcel, 10, this.f29373g, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
