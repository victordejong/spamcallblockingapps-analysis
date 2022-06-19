package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest.class */
public class SavePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new C5893f();

    /* renamed from: d */
    private final SignInPassword f18937d;

    /* renamed from: e */
    private final String f18938e;

    public SavePasswordRequest(SignInPassword signInPassword, String str) {
        this.f18937d = (SignInPassword) C6155o.m17018j(signInPassword);
        this.f18938e = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return C6147m.m17044a(this.f18937d, savePasswordRequest.f18937d) && C6147m.m17044a(this.f18938e, savePasswordRequest.f18938e);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f18937d, this.f18938e);
    }

    /* renamed from: k0 */
    public SignInPassword m17675k0() {
        return this.f18937d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, m17675k0(), i, false);
        C6170a.m16930r(parcel, 2, this.f18938e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
