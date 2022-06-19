package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig.class */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new C5884d();

    /* renamed from: d */
    private final int f18895d;

    /* renamed from: e */
    private final boolean f18896e;

    /* renamed from: f */
    private final boolean f18897f;
    @Deprecated

    /* renamed from: g */
    private final boolean f18898g;

    /* renamed from: h */
    private final int f18899h;

    /* renamed from: com.google.android.gms.auth.api.credentials.CredentialPickerConfig$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig$a.class */
    public static class C5880a {

        /* renamed from: a */
        private boolean f18900a = false;

        /* renamed from: b */
        private boolean f18901b = true;

        /* renamed from: c */
        private int f18902c = 1;

        /* renamed from: a */
        public CredentialPickerConfig m17707a() {
            return new CredentialPickerConfig(this);
        }
    }

    public CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.f18895d = i;
        this.f18896e = z;
        this.f18897f = z2;
        boolean z4 = true;
        if (i < 2) {
            this.f18898g = z3;
            this.f18899h = z3 ? 3 : 1;
            return;
        }
        this.f18898g = i2 != 3 ? false : z4;
        this.f18899h = i2;
    }

    private CredentialPickerConfig(C5880a c5880a) {
        this(2, c5880a.f18900a, c5880a.f18901b, false, c5880a.f18902c);
    }

    @Deprecated
    /* renamed from: k0 */
    public final boolean m17710k0() {
        return this.f18899h == 3;
    }

    /* renamed from: l0 */
    public final boolean m17709l0() {
        return this.f18896e;
    }

    /* renamed from: m0 */
    public final boolean m17708m0() {
        return this.f18897f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 1, m17709l0());
        C6170a.m16945c(parcel, 2, m17708m0());
        C6170a.m16945c(parcel, 3, m17710k0());
        C6170a.m16937k(parcel, 4, this.f18899h);
        C6170a.m16937k(parcel, 1000, this.f18895d);
        C6170a.m16946b(parcel, m16947a);
    }
}
