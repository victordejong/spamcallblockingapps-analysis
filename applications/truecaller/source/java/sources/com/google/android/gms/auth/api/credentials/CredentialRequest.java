package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest.class */
public final class CredentialRequest extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new zbc();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f5414a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f5415b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String[] f5416c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final CredentialPickerConfig f5417d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final CredentialPickerConfig f5418e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f5419f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f5420g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final String f5421h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final boolean f5422i;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest$Builder.class */
    public static final class Builder {
    }

    @SafeParcelable.Constructor
    public CredentialRequest(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String[] strArr, @SafeParcelable.Param(id = 3) CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param(id = 4) CredentialPickerConfig credentialPickerConfig2, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) boolean z3) {
        this.f5414a = i;
        this.f5415b = z;
        Objects.requireNonNull(strArr, "null reference");
        this.f5416c = strArr;
        this.f5417d = credentialPickerConfig == null ? new CredentialPickerConfig.Builder().m39131a() : credentialPickerConfig;
        this.f5418e = credentialPickerConfig2 == null ? new CredentialPickerConfig.Builder().m39131a() : credentialPickerConfig2;
        if (i < 3) {
            this.f5419f = true;
            this.f5420g = null;
            this.f5421h = null;
        } else {
            this.f5419f = z2;
            this.f5420g = str;
            this.f5421h = str2;
        }
        this.f5422i = z3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.f5415b;
        parcel.writeInt(262145);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38845r(parcel, 2, this.f5416c, false);
        SafeParcelWriter.m38847p(parcel, 3, this.f5417d, i, false);
        SafeParcelWriter.m38847p(parcel, 4, this.f5418e, i, false);
        boolean z2 = this.f5419f;
        parcel.writeInt(262149);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 6, this.f5420g, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f5421h, false);
        boolean z3 = this.f5422i;
        parcel.writeInt(262152);
        parcel.writeInt(z3 ? 1 : 0);
        int i2 = this.f5414a;
        parcel.writeInt(263144);
        parcel.writeInt(i2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
