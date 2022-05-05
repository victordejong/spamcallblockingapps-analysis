package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p274o.C8529w;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbd.class */
public final class zzbd extends AbstractSafeParcelable {

    /* renamed from: a */
    public LocationRequest f6861a;

    /* renamed from: b */
    public List<ClientIdentity> f6862b;
    @Nullable

    /* renamed from: c */
    public String f6863c;

    /* renamed from: d */
    public boolean f6864d;

    /* renamed from: e */
    public boolean f6865e;

    /* renamed from: f */
    public boolean f6866f;
    @Nullable

    /* renamed from: g */
    public String f6867g;

    /* renamed from: h */
    public static final List<ClientIdentity> f6860h = Collections.emptyList();
    public static final Parcelable.Creator<zzbd> CREATOR = new C8529w();

    public zzbd(LocationRequest locationRequest, List<ClientIdentity> list, @Nullable String str, boolean z, boolean z2, boolean z3, String str2) {
        this.f6861a = locationRequest;
        this.f6862b = list;
        this.f6863c = str;
        this.f6864d = z;
        this.f6865e = z2;
        this.f6866f = z3;
        this.f6867g = str2;
    }

    @Deprecated
    /* renamed from: a */
    public static zzbd m31836a(LocationRequest locationRequest) {
        return new zzbd(locationRequest, f6860h, null, false, false, false, null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbd)) {
            return false;
        }
        zzbd zzbdVar = (zzbd) obj;
        return C7018s.m21297a(this.f6861a, zzbdVar.f6861a) && C7018s.m21297a(this.f6862b, zzbdVar.f6862b) && C7018s.m21297a(this.f6863c, zzbdVar.f6863c) && this.f6864d == zzbdVar.f6864d && this.f6865e == zzbdVar.f6865e && this.f6866f == zzbdVar.f6866f && C7018s.m21297a(this.f6867g, zzbdVar.f6867g);
    }

    public final int hashCode() {
        return this.f6861a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6861a);
        if (this.f6863c != null) {
            sb.append(" tag=");
            sb.append(this.f6863c);
        }
        if (this.f6867g != null) {
            sb.append(" moduleId=");
            sb.append(this.f6867g);
        }
        sb.append(" hideAppOps=");
        sb.append(this.f6864d);
        sb.append(" clients=");
        sb.append(this.f6862b);
        sb.append(" forceCoarseLocation=");
        sb.append(this.f6865e);
        if (this.f6866f) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) this.f6861a, i, false);
        C7031b.m21201c(parcel, 5, this.f6862b, false);
        C7031b.m21215a(parcel, 6, this.f6863c, false);
        C7031b.m21212a(parcel, 7, this.f6864d);
        C7031b.m21212a(parcel, 8, this.f6865e);
        C7031b.m21212a(parcel, 9, this.f6866f);
        C7031b.m21215a(parcel, 10, this.f6867g, false);
        C7031b.m21229a(parcel, a);
    }
}
