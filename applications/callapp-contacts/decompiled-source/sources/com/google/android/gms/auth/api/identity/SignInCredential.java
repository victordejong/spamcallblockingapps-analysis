package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInCredential.class */
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new h();
    private final String zzbf;
    private final String zzbg;
    private final String zzbh;
    private final String zzbi;
    private final Uri zzbj;
    private final String zzbk;
    private final String zzbl;

    public SignInCredential(String str, String str2, String str3, String str4, Uri uri, String str5, String str6) {
        this.zzbf = o.a(str);
        this.zzbg = str2;
        this.zzbh = str3;
        this.zzbi = str4;
        this.zzbj = uri;
        this.zzbk = str5;
        this.zzbl = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return m.a(this.zzbf, signInCredential.zzbf) && m.a(this.zzbg, signInCredential.zzbg) && m.a(this.zzbh, signInCredential.zzbh) && m.a(this.zzbi, signInCredential.zzbi) && m.a(this.zzbj, signInCredential.zzbj) && m.a(this.zzbk, signInCredential.zzbk) && m.a(this.zzbl, signInCredential.zzbl);
    }

    public final String getDisplayName() {
        return this.zzbg;
    }

    public final String getFamilyName() {
        return this.zzbi;
    }

    public final String getGivenName() {
        return this.zzbh;
    }

    public final String getGoogleIdToken() {
        return this.zzbl;
    }

    public final String getId() {
        return this.zzbf;
    }

    public final String getPassword() {
        return this.zzbk;
    }

    public final Uri getProfilePictureUri() {
        return this.zzbj;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbf, this.zzbg, this.zzbh, this.zzbi, this.zzbj, this.zzbk, this.zzbl});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getId(), false);
        a.a(parcel, 2, getDisplayName(), false);
        a.a(parcel, 3, getGivenName(), false);
        a.a(parcel, 4, getFamilyName(), false);
        a.a(parcel, 5, getProfilePictureUri(), i, false);
        a.a(parcel, 6, getPassword(), false);
        a.a(parcel, 7, getGoogleIdToken(), false);
        a.b(parcel, a2);
    }
}
