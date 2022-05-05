package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8486b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new C8486b();

    /* renamed from: a */
    public final String f6828a;

    /* renamed from: b */
    public final String f6829b;

    /* renamed from: c */
    public final String f6830c;

    public zzj(String str, String str2, String str3) {
        this.f6828a = str;
        this.f6829b = str2;
        this.f6830c = str3;
    }

    public final String toString() {
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", this.f6828a, this.f6829b, this.f6830c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6828a, false);
        C7031b.m21215a(parcel, 2, this.f6829b, false);
        C7031b.m21215a(parcel, 3, this.f6830c, false);
        C7031b.m21229a(parcel, a);
    }
}
