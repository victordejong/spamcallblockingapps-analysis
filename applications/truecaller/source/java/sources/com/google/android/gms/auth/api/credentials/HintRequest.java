package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest.class */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<HintRequest> CREATOR = new zbe();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f5424a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final CredentialPickerConfig f5425b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f5426c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f5427d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String[] f5428e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f5429f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f5430g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final String f5431h;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public boolean f5432a;

        /* renamed from: b */
        public String[] f5433b;

        /* renamed from: c */
        public CredentialPickerConfig f5434c = new CredentialPickerConfig.Builder().m39131a();
    }

    @SafeParcelable.Constructor
    public HintRequest(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) String[] strArr, @SafeParcelable.Param(id = 5) boolean z3, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) String str2) {
        this.f5424a = i;
        Objects.requireNonNull(credentialPickerConfig, "null reference");
        this.f5425b = credentialPickerConfig;
        this.f5426c = z;
        this.f5427d = z2;
        Objects.requireNonNull(strArr, "null reference");
        this.f5428e = strArr;
        if (i < 2) {
            this.f5429f = true;
            this.f5430g = null;
            this.f5431h = null;
            return;
        }
        this.f5429f = z3;
        this.f5430g = str;
        this.f5431h = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5425b, i, false);
        boolean z = this.f5426c;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f5427d;
        parcel.writeInt(262147);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38845r(parcel, 4, this.f5428e, false);
        boolean z3 = this.f5429f;
        parcel.writeInt(262149);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 6, this.f5430g, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f5431h, false);
        int i2 = this.f5424a;
        parcel.writeInt(263144);
        parcel.writeInt(i2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
