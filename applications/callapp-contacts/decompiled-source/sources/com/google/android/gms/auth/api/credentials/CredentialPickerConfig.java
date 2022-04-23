package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig.class */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new f();
    private final boolean mShowCancelButton;
    private final int zzv;
    private final boolean zzw;
    @Deprecated
    private final boolean zzx;
    private final int zzy;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f22465a = false;

        /* renamed from: b  reason: collision with root package name */
        public boolean f22466b = true;

        /* renamed from: c  reason: collision with root package name */
        public int f22467c = 1;

        public final CredentialPickerConfig a() {
            return new CredentialPickerConfig(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.zzv = i;
        this.zzw = z;
        this.mShowCancelButton = z2;
        boolean z4 = true;
        int i3 = 1;
        if (i < 2) {
            this.zzx = z3;
            this.zzy = z3 ? 3 : i3;
            return;
        }
        this.zzx = i2 != 3 ? false : z4;
        this.zzy = i2;
    }

    private CredentialPickerConfig(a aVar) {
        this(2, aVar.f22465a, aVar.f22466b, false, aVar.f22467c);
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
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, shouldShowAddAccountButton());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, shouldShowCancelButton());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, isForNewAccount());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, this.zzy);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1000, this.zzv);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }
}
