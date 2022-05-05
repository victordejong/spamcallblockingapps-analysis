package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p255h.p256a.p257a.C7142a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/model/CountrySpecification.class */
public class CountrySpecification extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new C7142a();

    /* renamed from: a */
    public String f6713a;

    public CountrySpecification(String str) {
        this.f6713a = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6713a, false);
        C7031b.m21229a(parcel, a);
    }
}
