package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsResponse.class */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new C5948e();

    /* renamed from: d */
    private final int f18844d;

    /* renamed from: e */
    private final List<AccountChangeEvent> f18845e;

    public AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.f18844d = i;
        this.f18845e = (List) C6155o.m17018j(list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18844d);
        C6170a.m16926v(parcel, 2, this.f18845e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
