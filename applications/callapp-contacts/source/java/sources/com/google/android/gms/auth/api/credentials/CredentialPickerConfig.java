package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig.class */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new C11701f();
    private final boolean mShowCancelButton;
    private final int zzv;
    private final boolean zzw;
    @Deprecated
    private final boolean zzx;
    private final int zzy;

    /* renamed from: com.google.android.gms.auth.api.credentials.CredentialPickerConfig$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig$a.class */
    public static final class C11692a {

        /* renamed from: a */
        public boolean f38999a = false;

        /* renamed from: b */
        public boolean f39000b = true;

        /* renamed from: c */
        public int f39001c = 1;

        /* renamed from: a */
        public final CredentialPickerConfig m19574a() {
            return new CredentialPickerConfig(this);
        }
    }

    public CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.zzv = i;
        this.zzw = z;
        this.mShowCancelButton = z2;
        boolean z4 = true;
        if (i < 2) {
            this.zzx = z3;
            this.zzy = z3 ? 3 : 1;
            return;
        }
        this.zzx = i2 != 3 ? false : z4;
        this.zzy = i2;
    }

    private CredentialPickerConfig(C11692a c11692a) {
        this(2, c11692a.f38999a, c11692a.f39000b, false, c11692a.f39001c);
    }

    @Deprecated
    public final boolean isForNewAccount() {
        return this.zzy == 3;
    }

    public final boolean shouldShowAddAccountButton() {
        return this.zzw;
    }

    public final boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, shouldShowAddAccountButton());
        C12050a.m19101a(parcel, 2, shouldShowCancelButton());
        C12050a.m19101a(parcel, 3, isForNewAccount());
        C12050a.m19112a(parcel, 4, this.zzy);
        C12050a.m19112a(parcel, 1000, this.zzv);
        C12050a.m19095b(parcel, m19116a);
    }
}
