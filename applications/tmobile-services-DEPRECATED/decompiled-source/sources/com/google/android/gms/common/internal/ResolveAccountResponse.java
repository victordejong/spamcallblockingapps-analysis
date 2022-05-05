package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountResponse.class */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new zan();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7519f;
    @SafeParcelable.Field

    /* renamed from: g */
    private IBinder f7520g;
    @SafeParcelable.Field

    /* renamed from: h */
    private ConnectionResult f7521h;
    @SafeParcelable.Field

    /* renamed from: i */
    private boolean f7522i;
    @SafeParcelable.Field

    /* renamed from: j */
    private boolean f7523j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ResolveAccountResponse(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) ConnectionResult connectionResult, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2) {
        this.f7519f = i;
        this.f7520g = iBinder;
        this.f7521h = connectionResult;
        this.f7522i = z;
        this.f7523j = z2;
    }

    /* renamed from: B */
    public IAccountAccessor m14515B() {
        return IAccountAccessor.Stub.m14541b(this.f7520g);
    }

    /* renamed from: I */
    public ConnectionResult m14514I() {
        return this.f7521h;
    }

    /* renamed from: W */
    public boolean m14513W() {
        return this.f7522i;
    }

    /* renamed from: Y */
    public boolean m14512Y() {
        return this.f7523j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f7521h.equals(resolveAccountResponse.f7521h) && m14515B().equals(resolveAccountResponse.m14515B());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7519f);
        SafeParcelWriter.m14454j(parcel, 2, this.f7520g, false);
        SafeParcelWriter.m14448p(parcel, 3, m14514I(), i, false);
        SafeParcelWriter.m14461c(parcel, 4, m14513W());
        SafeParcelWriter.m14461c(parcel, 5, m14512Y());
        SafeParcelWriter.m14462b(parcel, a);
    }
}
