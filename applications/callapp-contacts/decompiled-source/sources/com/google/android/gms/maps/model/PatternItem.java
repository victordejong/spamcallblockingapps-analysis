package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/PatternItem.class */
public class PatternItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzi();
    private static final String TAG = "PatternItem";
    private final int type;
    private final Float zzdv;

    public PatternItem(int i, Float f) {
        boolean z = i != 1 ? f != null && f.floatValue() >= BitmapDescriptorFactory.HUE_RED : true;
        String valueOf = String.valueOf(f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
        sb.append("Invalid PatternItem: type=");
        sb.append(i);
        sb.append(" length=");
        sb.append(valueOf);
        o.b(z, sb.toString());
        this.type = i;
        this.zzdv = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<PatternItem> zza(List<PatternItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (PatternItem patternItem : list) {
            if (patternItem == null) {
                patternItem = null;
            } else {
                int i = patternItem.type;
                if (i == 0) {
                    patternItem = new Dash(patternItem.zzdv.floatValue());
                } else if (i == 1) {
                    patternItem = new Dot();
                } else if (i != 2) {
                    String str = TAG;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Unknown PatternItem type: ");
                    sb.append(i);
                    Log.w(str, sb.toString());
                } else {
                    patternItem = new Gap(patternItem.zzdv.floatValue());
                }
            }
            arrayList.add(patternItem);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.type == patternItem.type && m.a(this.zzdv, patternItem.zzdv);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type), this.zzdv});
    }

    public String toString() {
        int i = this.type;
        String valueOf = String.valueOf(this.zzdv);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39);
        sb.append("[PatternItem: type=");
        sb.append(i);
        sb.append(" length=");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.type);
        a.a(parcel, 3, this.zzdv);
        a.b(parcel, a2);
    }
}
