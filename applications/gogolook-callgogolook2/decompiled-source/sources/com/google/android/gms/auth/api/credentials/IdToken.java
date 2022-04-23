package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p229e.C6730g;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/IdToken.class */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new C6730g();
    @NonNull

    /* renamed from: a */
    public final String f6415a;
    @NonNull

    /* renamed from: b */
    public final String f6416b;

    public IdToken(@NonNull String str, @NonNull String str2) {
        C7021t.m21285a(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        C7021t.m21285a(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f6415a = str;
        this.f6416b = str2;
    }

    @NonNull
    /* renamed from: H */
    public final String m32053H() {
        return this.f6416b;
    }

    @NonNull
    /* renamed from: c */
    public final String m32052c() {
        return this.f6415a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return C7018s.m21297a(this.f6415a, idToken.f6415a) && C7018s.m21297a(this.f6416b, idToken.f6416b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, m32052c(), false);
        C7031b.m21215a(parcel, 2, m32053H(), false);
        C7031b.m21229a(parcel, a);
    }
}
