package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest.class */
public class SavePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new f();
    private final String zzau;
    private final SignInPassword zzbe;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        SignInPassword f22488a;

        /* renamed from: b  reason: collision with root package name */
        String f22489b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SavePasswordRequest(SignInPassword signInPassword, String str) {
        this.zzbe = (SignInPassword) o.a(signInPassword);
        this.zzau = str;
    }

    public static a builder() {
        return new a();
    }

    public static a zzc(SavePasswordRequest savePasswordRequest) {
        o.a(savePasswordRequest);
        a builder = builder();
        builder.f22488a = savePasswordRequest.getSignInPassword();
        String str = savePasswordRequest.zzau;
        if (str != null) {
            builder.f22489b = str;
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return m.a(this.zzbe, savePasswordRequest.zzbe) && m.a(this.zzau, savePasswordRequest.zzau);
    }

    public SignInPassword getSignInPassword() {
        return this.zzbe;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbe, this.zzau});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, getSignInPassword(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, this.zzau, false);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }
}
