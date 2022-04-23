package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/TokenData.class */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new i();
    private final List<String> zzaa;
    private final String zzab;
    private final int zzv;
    private final String zzw;
    private final Long zzx;
    private final boolean zzy;
    private final boolean zzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list, String str2) {
        this.zzv = i;
        this.zzw = o.a(str);
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
        return TextUtils.equals(this.zzw, tokenData.zzw) && m.a(this.zzx, tokenData.zzx) && this.zzy == tokenData.zzy && this.zzz == tokenData.zzz && m.a(this.zzaa, tokenData.zzaa) && m.a(this.zzab, tokenData.zzab);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzw, this.zzx, Boolean.valueOf(this.zzy), Boolean.valueOf(this.zzz), this.zzaa, this.zzab});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzv);
        a.a(parcel, 2, this.zzw, false);
        a.a(parcel, 3, this.zzx);
        a.a(parcel, 4, this.zzy);
        a.a(parcel, 5, this.zzz);
        a.a(parcel, 6, this.zzaa);
        a.a(parcel, 7, this.zzab, false);
        a.b(parcel, a2);
    }

    public final String zzb() {
        return this.zzw;
    }
}
