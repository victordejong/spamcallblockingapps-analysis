package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.common.internal.ag */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ag.class */
public final class C2604ag extends AbstractC2663a {
    public static final Parcelable.Creator<C2604ag> CREATOR = new C2605ah();

    /* renamed from: a */
    Bundle f7289a;

    /* renamed from: b */
    C2587d[] f7290b;

    /* renamed from: c */
    private int f7291c;

    public C2604ag() {
    }

    public C2604ag(Bundle bundle, C2587d[] c2587dArr, int i) {
        this.f7289a = bundle;
        this.f7290b = c2587dArr;
        this.f7291c = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13939a(parcel, 1, this.f7289a, false);
        C2664b.m13928a(parcel, 2, (Parcelable[]) this.f7290b, i, false);
        C2664b.m13941a(parcel, 3, this.f7291c);
        C2664b.m13943a(parcel, m13944a);
    }
}
