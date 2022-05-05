package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8493i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzv.class */
public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new C8493i();

    /* renamed from: a */
    public final boolean f6850a;

    public zzv(boolean z) {
        this.f6850a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzv) && this.f6850a == ((zzv) obj).f6850a;
    }

    public final int hashCode() {
        return this.f6850a ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, this.f6850a);
        C7031b.m21229a(parcel, a);
    }
}
