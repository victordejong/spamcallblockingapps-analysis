package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig.class */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zbb();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f5408a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f5409b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f5410c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f5411d;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public boolean f5412a = true;

        /* renamed from: b */
        public int f5413b = 1;

        @RecentlyNonNull
        /* renamed from: a */
        public CredentialPickerConfig m39131a() {
            return new CredentialPickerConfig(2, false, this.f5412a, false, this.f5413b);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig$Prompt.class */
    public @interface Prompt {
    }

    @SafeParcelable.Constructor
    public CredentialPickerConfig(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) boolean z2, @SafeParcelable.Param(id = 3) boolean z3, @SafeParcelable.Param(id = 4) int i2) {
        this.f5408a = i;
        this.f5409b = z;
        this.f5410c = z2;
        if (i < 2) {
            this.f5411d = true == z3 ? 3 : 1;
        } else {
            this.f5411d = i2;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.f5409b;
        parcel.writeInt(262145);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f5410c;
        parcel.writeInt(262146);
        parcel.writeInt(z2 ? 1 : 0);
        int i2 = this.f5411d == 3 ? 1 : 0;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        int i3 = this.f5411d;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        int i4 = this.f5408a;
        parcel.writeInt(263144);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
