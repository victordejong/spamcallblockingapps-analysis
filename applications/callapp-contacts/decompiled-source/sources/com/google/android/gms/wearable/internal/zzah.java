package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.n;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzah.class */
public final class zzah extends AbstractSafeParcelable implements c {
    public static final Parcelable.Creator<zzah> CREATOR = new h();
    private final String name;
    private final List<zzfo> zzca;
    private final Object lock = new Object();
    private Set<n> zzbt = null;

    public zzah(String str, List<zzfo> list) {
        this.name = str;
        this.zzca = list;
        o.a(str);
        o.a(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzah zzahVar = (zzah) obj;
        String str = this.name;
        if (str != null) {
            if (!str.equals(zzahVar.name)) {
                return false;
            }
        } else if (zzahVar.name != null) {
            return false;
        }
        List<zzfo> list = this.zzca;
        List<zzfo> list2 = zzahVar.zzca;
        return list != null ? list.equals(list2) : list2 == null;
    }

    @Override // com.google.android.gms.wearable.c
    public final String getName() {
        return this.name;
    }

    @Override // com.google.android.gms.wearable.c
    public final Set<n> getNodes() {
        Set<n> set;
        synchronized (this.lock) {
            if (this.zzbt == null) {
                this.zzbt = new HashSet(this.zzca);
            }
            set = this.zzbt;
        }
        return set;
    }

    public final int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<zzfo> list = this.zzca;
        if (list != null) {
            i = list.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public final String toString() {
        String str = this.name;
        String valueOf = String.valueOf(this.zzca);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 18 + String.valueOf(valueOf).length());
        sb.append("CapabilityInfo{");
        sb.append(str);
        sb.append(", ");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, getName(), false);
        a.a(parcel, 3, (List) this.zzca, false);
        a.b(parcel, a2);
    }
}
