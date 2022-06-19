package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new C12060j();
    private final String zza;
    @Deprecated
    private final int zzb;
    private final long zzc;

    public Feature(String str, int i, long j) {
        this.zza = str;
        this.zzb = i;
        this.zzc = j;
    }

    public Feature(String str, long j) {
        this.zza = str;
        this.zzc = j;
        this.zzb = -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            return ((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && getVersion() == feature.getVersion();
        }
        return false;
    }

    public String getName() {
        return this.zza;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public long getVersion() {
        ?? r0 = this.zzc;
        char c = r0;
        if (r0 == -1) {
            c = this.zzb;
        }
        return c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{getName(), Long.valueOf(getVersion())});
    }

    public final String toString() {
        C12041m.C12042a m19169a = C12041m.m19169a(this);
        m19169a.m19166a("name", getName());
        m19169a.m19166a("version", Long.valueOf(getVersion()));
        return m19169a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, getName(), false);
        C12050a.m19112a(parcel, 2, this.zzb);
        C12050a.m19111a(parcel, 3, getVersion());
        C12050a.m19095b(parcel, m19116a);
    }
}
