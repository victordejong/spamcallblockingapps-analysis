package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p247b.C7059b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new C7059b();

    /* renamed from: a */
    public final int f6650a;

    /* renamed from: b */
    public final String f6651b;

    /* renamed from: c */
    public final FastJsonResponse.Field<?, ?> f6652c;

    public zam(int i, String str, FastJsonResponse.Field<?, ?> field) {
        this.f6650a = i;
        this.f6651b = str;
        this.f6652c = field;
    }

    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.f6650a = 1;
        this.f6651b = str;
        this.f6652c = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6650a);
        C7031b.m21215a(parcel, 2, this.f6651b, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f6652c, i, false);
        C7031b.m21229a(parcel, a);
    }
}
