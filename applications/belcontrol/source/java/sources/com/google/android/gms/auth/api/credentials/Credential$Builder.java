package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credential$Builder.class */
public class Credential$Builder {
    private final String mId;
    private String mName;
    private Uri zzo;
    private List<IdToken> zzp;
    private String zzq;
    private String zzr;
    private String zzs;
    private String zzt;

    public Credential$Builder(Credential credential) {
        this.mId = Credential.zzc(credential);
        this.mName = Credential.zzd(credential);
        this.zzo = Credential.zze(credential);
        this.zzp = Credential.zzf(credential);
        this.zzq = Credential.zzg(credential);
        this.zzr = Credential.zzh(credential);
        this.zzs = Credential.zzi(credential);
        this.zzt = Credential.zzj(credential);
    }

    public Credential$Builder(String str) {
        this.mId = str;
    }

    public Credential build() {
        return new Credential(this.mId, this.mName, this.zzo, this.zzp, this.zzq, this.zzr, this.zzs, this.zzt);
    }

    public Credential$Builder setAccountType(String str) {
        this.zzr = str;
        return this;
    }

    public Credential$Builder setName(String str) {
        this.mName = str;
        return this;
    }

    public Credential$Builder setPassword(String str) {
        this.zzq = str;
        return this;
    }

    public Credential$Builder setProfilePictureUri(Uri uri) {
        this.zzo = uri;
        return this;
    }
}
