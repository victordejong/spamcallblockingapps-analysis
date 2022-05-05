package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C6998j0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonConfig.class */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new C6998j0();

    /* renamed from: a */
    public final int f6607a;

    /* renamed from: b */
    public final int f6608b;

    /* renamed from: c */
    public final int f6609c;
    @Deprecated

    /* renamed from: d */
    public final Scope[] f6610d;

    public SignInButtonConfig(int i, int i2, int i3, Scope[] scopeArr) {
        this.f6607a = i;
        this.f6608b = i2;
        this.f6609c = i3;
        this.f6610d = scopeArr;
    }

    public SignInButtonConfig(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    /* renamed from: H */
    public int m31940H() {
        return this.f6609c;
    }

    @Deprecated
    /* renamed from: I */
    public Scope[] m31939I() {
        return this.f6610d;
    }

    /* renamed from: c */
    public int m31938c() {
        return this.f6608b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6607a);
        C7031b.m21225a(parcel, 2, m31938c());
        C7031b.m21225a(parcel, 3, m31940H());
        C7031b.m21209a(parcel, 4, (Parcelable[]) m31939I(), i, false);
        C7031b.m21229a(parcel, a);
    }
}
