package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zag.class */
public final class zag extends AbstractSafeParcelable implements AbstractC6007i {
    public static final Parcelable.Creator<zag> CREATOR = new C7947g();

    /* renamed from: d */
    private final List<String> f35913d;

    /* renamed from: e */
    private final String f35914e;

    public zag(List<String> list, String str) {
        this.f35913d = list;
        this.f35914e = str;
    }

    @Override // com.google.android.gms.common.api.AbstractC6007i
    /* renamed from: e */
    public final Status mo5849e() {
        return this.f35914e != null ? Status.f19167d : Status.f19171h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16928t(parcel, 1, this.f35913d, false);
        C6170a.m16930r(parcel, 2, this.f35914e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
