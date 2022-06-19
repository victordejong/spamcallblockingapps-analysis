package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC2647l;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.common.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g.class */
public class C2641g extends AbstractC2663a {
    public static final Parcelable.Creator<C2641g> CREATOR = new C2606ai();

    /* renamed from: a */
    String f7383a;

    /* renamed from: b */
    IBinder f7384b;

    /* renamed from: c */
    Scope[] f7385c;

    /* renamed from: d */
    Bundle f7386d;

    /* renamed from: e */
    Account f7387e;

    /* renamed from: f */
    C2587d[] f7388f;

    /* renamed from: g */
    C2587d[] f7389g;

    /* renamed from: h */
    private final int f7390h;

    /* renamed from: i */
    private final int f7391i;

    /* renamed from: j */
    private int f7392j;

    /* renamed from: k */
    private boolean f7393k;

    /* renamed from: l */
    private int f7394l;

    public C2641g(int i) {
        this.f7390h = 4;
        this.f7392j = C2593f.f7273b;
        this.f7391i = i;
        this.f7393k = true;
    }

    public C2641g(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, C2587d[] c2587dArr, C2587d[] c2587dArr2, boolean z, int i4) {
        this.f7390h = i;
        this.f7391i = i2;
        this.f7392j = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f7383a = "com.google.android.gms";
        } else {
            this.f7383a = str;
        }
        if (i < 2) {
            this.f7387e = iBinder != null ? BinderC2597a.m14141a(AbstractC2647l.AbstractBinderC2648a.m14001a(iBinder)) : null;
        } else {
            this.f7384b = iBinder;
            this.f7387e = account;
        }
        this.f7385c = scopeArr;
        this.f7386d = bundle;
        this.f7388f = c2587dArr;
        this.f7389g = c2587dArr2;
        this.f7393k = z;
        this.f7394l = i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7390h);
        C2664b.m13941a(parcel, 2, this.f7391i);
        C2664b.m13941a(parcel, 3, this.f7392j);
        C2664b.m13932a(parcel, 4, this.f7383a, false);
        C2664b.m13938a(parcel, 5, this.f7384b, false);
        C2664b.m13928a(parcel, 6, (Parcelable[]) this.f7385c, i, false);
        C2664b.m13939a(parcel, 7, this.f7386d, false);
        C2664b.m13937a(parcel, 8, (Parcelable) this.f7387e, i, false);
        C2664b.m13928a(parcel, 10, (Parcelable[]) this.f7388f, i, false);
        C2664b.m13928a(parcel, 11, (Parcelable[]) this.f7389g, i, false);
        C2664b.m13930a(parcel, 12, this.f7393k);
        C2664b.m13941a(parcel, 13, this.f7394l);
        C2664b.m13943a(parcel, m13944a);
    }
}
