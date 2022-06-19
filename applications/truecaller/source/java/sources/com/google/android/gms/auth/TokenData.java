package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/TokenData.class */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzk();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5335a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5336b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final Long f5337c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f5338d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final boolean f5339e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final List<String> f5340f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f5341g;

    @SafeParcelable.Constructor
    public TokenData(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) Long l, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 7) String str2) {
        this.f5335a = i;
        Preconditions.m38901g(str);
        this.f5336b = str;
        this.f5337c = l;
        this.f5338d = z;
        this.f5339e = z2;
        this.f5340f = list;
        this.f5341g = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f5336b, tokenData.f5336b) && Objects.m38910a(this.f5337c, tokenData.f5337c) && this.f5338d == tokenData.f5338d && this.f5339e == tokenData.f5339e && Objects.m38910a(this.f5340f, tokenData.f5340f) && Objects.m38910a(this.f5341g, tokenData.f5341g);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5336b, this.f5337c, Boolean.valueOf(this.f5338d), Boolean.valueOf(this.f5339e), this.f5340f, this.f5341g});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5335a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f5336b, false);
        SafeParcelWriter.m38849n(parcel, 3, this.f5337c, false);
        boolean z = this.f5338d;
        parcel.writeInt(262148);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f5339e;
        parcel.writeInt(262149);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38844s(parcel, 6, this.f5340f, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f5341g, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
