package com.google.firebase.dynamiclinks.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.firebase.dynamiclinks.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/q.class */
public final class C4926q extends AbstractC2663a {
    public static final Parcelable.Creator<C4926q> CREATOR = new C4927r();

    /* renamed from: a */
    private final String f21047a;

    public C4926q(String str) {
        this.f21047a = str;
    }

    /* renamed from: a */
    public final String m2021a() {
        return this.f21047a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, m2021a(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
