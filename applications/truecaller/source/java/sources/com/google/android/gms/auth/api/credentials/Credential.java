package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.tenor.android.core.network.constant.Protocols;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credential.class */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<Credential> CREATOR = new zba();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5400a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5401b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final Uri f5402c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final List<IdToken> f5403d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f5404e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f5405f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f5406g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final String f5407h;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credential$Builder.class */
    public static class Builder {
    }

    @SafeParcelable.Constructor
    public Credential(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) Uri uri, @SafeParcelable.Param(id = 4) List<IdToken> list, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 9) String str5, @SafeParcelable.Param(id = 10) String str6) {
        Boolean bool;
        Boolean bool2 = Boolean.FALSE;
        Preconditions.m38897k(str, "credential identifier cannot be null");
        String trim = str.trim();
        Preconditions.m38900h(trim, "credential identifier cannot be empty");
        if (str3 == null || !TextUtils.isEmpty(str3)) {
            if (str4 != null) {
                if (TextUtils.isEmpty(str4)) {
                    bool = bool2;
                } else {
                    Uri parse = Uri.parse(str4);
                    bool = bool2;
                    if (parse.isAbsolute()) {
                        bool = bool2;
                        if (parse.isHierarchical()) {
                            bool = bool2;
                            if (!TextUtils.isEmpty(parse.getScheme())) {
                                if (TextUtils.isEmpty(parse.getAuthority())) {
                                    bool = bool2;
                                } else {
                                    bool = Boolean.valueOf(!Protocols.HTTP.equalsIgnoreCase(parse.getScheme()) ? "https".equalsIgnoreCase(parse.getScheme()) : true);
                                }
                            }
                        }
                    }
                }
                if (!bool.booleanValue()) {
                    throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
                }
            }
            if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
            }
            String str7 = str2;
            if (str2 != null) {
                str7 = str2;
                if (TextUtils.isEmpty(str2.trim())) {
                    str7 = null;
                }
            }
            this.f5401b = str7;
            this.f5402c = uri;
            this.f5403d = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f5400a = trim;
            this.f5404e = str3;
            this.f5405f = str4;
            this.f5406g = str5;
            this.f5407h = str6;
            return;
        }
        throw new IllegalArgumentException("Password must not be empty if set");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f5400a, credential.f5400a) && TextUtils.equals(this.f5401b, credential.f5401b) && Objects.m38910a(this.f5402c, credential.f5402c) && TextUtils.equals(this.f5404e, credential.f5404e) && TextUtils.equals(this.f5405f, credential.f5405f);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5400a, this.f5401b, this.f5402c, this.f5404e, this.f5405f});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5400a, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5401b, false);
        SafeParcelWriter.m38847p(parcel, 3, this.f5402c, i, false);
        SafeParcelWriter.m38842u(parcel, 4, this.f5403d, false);
        SafeParcelWriter.m38846q(parcel, 5, this.f5404e, false);
        SafeParcelWriter.m38846q(parcel, 6, this.f5405f, false);
        SafeParcelWriter.m38846q(parcel, 9, this.f5406g, false);
        SafeParcelWriter.m38846q(parcel, 10, this.f5407h, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
