package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.C7063c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new C7063c();

    /* renamed from: a */
    public final int f6615a;

    /* renamed from: b */
    public final String f6616b;

    /* renamed from: c */
    public final int f6617c;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.f6615a = i;
        this.f6616b = str;
        this.f6617c = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6615a);
        C7031b.m21215a(parcel, 2, this.f6616b, false);
        C7031b.m21225a(parcel, 3, this.f6617c);
        C7031b.m21229a(parcel, a);
    }
}
