package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8919n;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/PatternItem.class */
public class PatternItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PatternItem> CREATOR = new C8919n();

    /* renamed from: a */
    public final int f7081a;
    @Nullable

    /* renamed from: b */
    public final Float f7082b;

    public PatternItem(int i, @Nullable Float f) {
        boolean z = i != 1 ? f != null && f.floatValue() >= 0.0f : true;
        String valueOf = String.valueOf(f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
        sb.append("Invalid PatternItem: type=");
        sb.append(i);
        sb.append(" length=");
        sb.append(valueOf);
        C7021t.m21285a(z, sb.toString());
        this.f7081a = i;
        this.f7082b = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.f7081a == patternItem.f7081a && C7018s.m21297a(this.f7082b, patternItem.f7082b);
    }

    public int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f7081a), this.f7082b);
    }

    public String toString() {
        int i = this.f7081a;
        String valueOf = String.valueOf(this.f7082b);
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
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 2, this.f7081a);
        C7031b.m21218a(parcel, 3, this.f7082b, false);
        C7031b.m21229a(parcel, a);
    }
}
