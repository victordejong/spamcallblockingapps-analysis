package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdkWithMembers
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyResponse.class */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new zzb();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5495a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f5496b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final PendingIntent f5497c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f5498d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final Bundle f5499e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final byte[] f5500f;

    @SafeParcelable.Constructor
    public ProxyResponse(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) PendingIntent pendingIntent, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) Bundle bundle, @SafeParcelable.Param(id = 5) byte[] bArr) {
        this.f5495a = i;
        this.f5496b = i2;
        this.f5498d = i3;
        this.f5499e = bundle;
        this.f5500f = bArr;
        this.f5497c = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5496b;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.f5497c, i, false);
        int i3 = this.f5498d;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38860c(parcel, 4, this.f5499e, false);
        SafeParcelWriter.m38859d(parcel, 5, this.f5500f, false);
        int i4 = this.f5495a;
        parcel.writeInt(263144);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
