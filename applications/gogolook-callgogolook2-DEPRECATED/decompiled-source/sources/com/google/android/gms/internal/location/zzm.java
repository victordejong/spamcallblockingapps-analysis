package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.location.zzj;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p274o.C8510h0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzm.class */
public final class zzm extends AbstractSafeParcelable {

    /* renamed from: a */
    public zzj f6885a;

    /* renamed from: b */
    public List<ClientIdentity> f6886b;
    @Nullable

    /* renamed from: c */
    public String f6887c;

    /* renamed from: d */
    public static final List<ClientIdentity> f6883d = Collections.emptyList();

    /* renamed from: e */
    public static final zzj f6884e = new zzj();
    public static final Parcelable.Creator<zzm> CREATOR = new C8510h0();

    public zzm(zzj zzjVar, List<ClientIdentity> list, String str) {
        this.f6885a = zzjVar;
        this.f6886b = list;
        this.f6887c = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return C7018s.m21297a(this.f6885a, zzmVar.f6885a) && C7018s.m21297a(this.f6886b, zzmVar.f6886b) && C7018s.m21297a(this.f6887c, zzmVar.f6887c);
    }

    public final int hashCode() {
        return this.f6885a.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) this.f6885a, i, false);
        C7031b.m21201c(parcel, 2, this.f6886b, false);
        C7031b.m21215a(parcel, 3, this.f6887c, false);
        C7031b.m21229a(parcel, a);
    }
}
