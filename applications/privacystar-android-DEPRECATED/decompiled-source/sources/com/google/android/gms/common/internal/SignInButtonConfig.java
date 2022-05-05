package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "SignInButtonConfigCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonConfig.class */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new zao();
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    @Deprecated
    @SafeParcelable.Field(getter = "getScopes", m344id = 4)
    private final Scope[] zanx;
    @SafeParcelable.Field(getter = "getButtonSize", m344id = 2)
    private final int zapc;
    @SafeParcelable.Field(getter = "getColorScheme", m344id = 3)
    private final int zapd;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SignInButtonConfig(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) int i2, @SafeParcelable.Param(m343id = 3) int i3, @SafeParcelable.Param(m343id = 4) Scope[] scopeArr) {
        this.zale = i;
        this.zapc = i2;
        this.zapd = i3;
        this.zanx = scopeArr;
    }

    public SignInButtonConfig(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    public int getButtonSize() {
        return this.zapc;
    }

    public int getColorScheme() {
        return this.zapd;
    }

    @Deprecated
    public Scope[] getScopes() {
        return this.zanx;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        SafeParcelWriter.writeInt(parcel, 2, getButtonSize());
        SafeParcelWriter.writeInt(parcel, 3, getColorScheme());
        SafeParcelWriter.writeTypedArray(parcel, 4, getScopes(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
