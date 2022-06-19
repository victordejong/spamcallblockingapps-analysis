package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/TokenData.class */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new C11776i();
    private final List<String> zzaa;
    private final String zzab;
    private final int zzv;
    private final String zzw;
    private final Long zzx;
    private final boolean zzy;
    private final boolean zzz;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list, String str2) {
        this.zzv = i;
        this.zzw = C12045o.m19160a(str);
        this.zzx = l;
        this.zzy = z;
        this.zzz = z2;
        this.zzaa = list;
        this.zzab = str2;
    }

    public static TokenData zza(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.zzw, tokenData.zzw) && C12041m.m19168a(this.zzx, tokenData.zzx) && this.zzy == tokenData.zzy && this.zzz == tokenData.zzz && C12041m.m19168a(this.zzaa, tokenData.zzaa) && C12041m.m19168a(this.zzab, tokenData.zzab);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzw, this.zzx, Boolean.valueOf(this.zzy), Boolean.valueOf(this.zzz), this.zzaa, this.zzab});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzv);
        C12050a.m19104a(parcel, 2, this.zzw, false);
        C12050a.m19105a(parcel, 3, this.zzx);
        C12050a.m19101a(parcel, 4, this.zzy);
        C12050a.m19101a(parcel, 5, this.zzz);
        C12050a.m19103a(parcel, 6, this.zzaa);
        C12050a.m19104a(parcel, 7, this.zzab, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final String zzb() {
        return this.zzw;
    }
}
