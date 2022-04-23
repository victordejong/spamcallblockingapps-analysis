package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/CheckServerAuthResult.class */
public class CheckServerAuthResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CheckServerAuthResult> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f4252a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f4253b;
    final List<Scope> c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CheckServerAuthResult(int i, boolean z, List<Scope> list) {
        this.f4252a = i;
        this.f4253b = z;
        this.c = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel);
    }
}
