package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p255h.p256a.C7144b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/UserAddressRequest.class */
public final class UserAddressRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new C7144b();

    /* renamed from: a */
    public List<CountrySpecification> f6712a;

    public UserAddressRequest() {
    }

    public UserAddressRequest(List<CountrySpecification> list) {
        this.f6712a = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 2, this.f6712a, false);
        C7031b.m21229a(parcel, a);
    }
}
