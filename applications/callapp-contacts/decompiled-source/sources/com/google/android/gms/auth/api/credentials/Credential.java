package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credential.class */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new d();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    private final String mId;
    private final String mName;
    private final Uri zzo;
    private final List<IdToken> zzp;
    private final String zzq;
    private final String zzr;
    private final String zzs;
    private final String zzt;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a0, code lost:
        if (com.mopub.common.Constants.HTTPS.equalsIgnoreCase(r0.getScheme()) != false) goto L_0x00a3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Credential(java.lang.String r5, java.lang.String r6, android.net.Uri r7, java.util.List<com.google.android.gms.auth.api.credentials.IdToken> r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.credentials.Credential.<init>(java.lang.String, java.lang.String, android.net.Uri, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.mId, credential.mId) && TextUtils.equals(this.mName, credential.mName) && m.a(this.zzo, credential.zzo) && TextUtils.equals(this.zzq, credential.zzq) && TextUtils.equals(this.zzr, credential.zzr);
    }

    public String getAccountType() {
        return this.zzr;
    }

    public String getFamilyName() {
        return this.zzt;
    }

    public String getGivenName() {
        return this.zzs;
    }

    public String getId() {
        return this.mId;
    }

    public List<IdToken> getIdTokens() {
        return this.zzp;
    }

    public String getName() {
        return this.mName;
    }

    public String getPassword() {
        return this.zzq;
    }

    public Uri getProfilePictureUri() {
        return this.zzo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mId, this.mName, this.zzo, this.zzq, this.zzr});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getId(), false);
        a.a(parcel, 2, getName(), false);
        a.a(parcel, 3, getProfilePictureUri(), i, false);
        a.a(parcel, 4, (List) getIdTokens(), false);
        a.a(parcel, 5, getPassword(), false);
        a.a(parcel, 6, getAccountType(), false);
        a.a(parcel, 9, getGivenName(), false);
        a.a(parcel, 10, getFamilyName(), false);
        a.b(parcel, a2);
    }
}
