package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdkWithMembers
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyRequest.class */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5489a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5490b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f5491c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final long f5492d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final byte[] f5493e;
    @SafeParcelable.Field

    /* renamed from: f */
    public Bundle f5494f;

    @KeepForSdkWithMembers
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyRequest$Builder.class */
    public static class Builder {
    }

    @SafeParcelable.Constructor
    public ProxyRequest(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) Bundle bundle) {
        this.f5489a = i;
        this.f5490b = str;
        this.f5491c = i2;
        this.f5492d = j;
        this.f5493e = bArr;
        this.f5494f = bundle;
    }

    public String toString() {
        String str = this.f5490b;
        int i = this.f5491c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 42);
        sb.append("ProxyRequest[ url: ");
        sb.append(str);
        sb.append(", method: ");
        sb.append(i);
        sb.append(" ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5490b, false);
        int i2 = this.f5491c;
        parcel.writeInt(262146);
        parcel.writeInt(i2);
        long j = this.f5492d;
        parcel.writeInt(524291);
        parcel.writeLong(j);
        SafeParcelWriter.m38859d(parcel, 4, this.f5493e, false);
        SafeParcelWriter.m38860c(parcel, 5, this.f5494f, false);
        int i3 = this.f5489a;
        parcel.writeInt(263144);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
