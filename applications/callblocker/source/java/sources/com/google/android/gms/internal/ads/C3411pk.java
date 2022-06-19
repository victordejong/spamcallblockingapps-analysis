package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.pk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pk.class */
public final class C3411pk extends AbstractC2663a {
    public static final Parcelable.Creator<C3411pk> CREATOR = new C3410pj();

    /* renamed from: a */
    public final boolean f17187a;

    /* renamed from: b */
    public final List<String> f17188b;

    public C3411pk() {
        this(false, Collections.emptyList());
    }

    public C3411pk(boolean z, List<String> list) {
        this.f17187a = z;
        this.f17188b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13930a(parcel, 2, this.f17187a);
        C2664b.m13923b(parcel, 3, this.f17188b, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
