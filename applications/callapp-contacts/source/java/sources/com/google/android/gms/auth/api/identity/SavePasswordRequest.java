package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest.class */
public class SavePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new C11721f();
    private final String zzau;
    private final SignInPassword zzbe;

    /* renamed from: com.google.android.gms.auth.api.identity.SavePasswordRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest$a.class */
    public static final class C11715a {

        /* renamed from: a */
        SignInPassword f39032a;

        /* renamed from: b */
        String f39033b;
    }

    public SavePasswordRequest(SignInPassword signInPassword, String str) {
        this.zzbe = (SignInPassword) C12045o.m19162a(signInPassword);
        this.zzau = str;
    }

    public static C11715a builder() {
        return new C11715a();
    }

    public static C11715a zzc(SavePasswordRequest savePasswordRequest) {
        C12045o.m19162a(savePasswordRequest);
        C11715a builder = builder();
        builder.f39032a = savePasswordRequest.getSignInPassword();
        String str = savePasswordRequest.zzau;
        if (str != null) {
            builder.f39033b = str;
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return C12041m.m19168a(this.zzbe, savePasswordRequest.zzbe) && C12041m.m19168a(this.zzau, savePasswordRequest.zzau);
    }

    public SignInPassword getSignInPassword() {
        return this.zzbe;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbe, this.zzau});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, getSignInPassword(), i, false);
        C12050a.m19104a(parcel, 2, this.zzau, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
