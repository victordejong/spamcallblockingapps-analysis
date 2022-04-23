package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/Configuration.class */
public class Configuration extends AbstractSafeParcelable implements Comparable<Configuration> {
    @KeepForSdk
    public static final Parcelable.Creator<Configuration> CREATOR = new zzc();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f30189a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final zzi[] f30190b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String[] f30191c;

    /* renamed from: d */
    public final Map<String, zzi> f30192d = new TreeMap();

    @SafeParcelable.Constructor
    public Configuration(@SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) zzi[] zziVarArr, @SafeParcelable.Param(id = 4) String[] strArr) {
        this.f30189a = i;
        this.f30190b = zziVarArr;
        for (zzi zziVar : zziVarArr) {
            this.f30192d.put(zziVar.f30204a, zziVar);
        }
        this.f30191c = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Configuration configuration) {
        return this.f30189a - configuration.f30189a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Configuration)) {
            return false;
        }
        Configuration configuration = (Configuration) obj;
        return this.f30189a == configuration.f30189a && zzn.m8659a(this.f30192d, configuration.f30192d) && Arrays.equals(this.f30191c, configuration.f30191c);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f30189a);
        sb.append(", ");
        sb.append("(");
        for (zzi zziVar : this.f30192d.values()) {
            sb.append(zziVar);
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        String[] strArr = this.f30191c;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 2, this.f30189a);
        SafeParcelWriter.m17215a(parcel, 3, (Parcelable[]) this.f30190b, i, false);
        SafeParcelWriter.m17214a(parcel, 4, this.f30191c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
