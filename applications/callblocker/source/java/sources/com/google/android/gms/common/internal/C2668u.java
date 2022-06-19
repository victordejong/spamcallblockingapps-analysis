package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2647l;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.common.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u.class */
public class C2668u extends AbstractC2663a {
    public static final Parcelable.Creator<C2668u> CREATOR = new C2603af();

    /* renamed from: a */
    private final int f7423a;

    /* renamed from: b */
    private IBinder f7424b;

    /* renamed from: c */
    private C2579b f7425c;

    /* renamed from: d */
    private boolean f7426d;

    /* renamed from: e */
    private boolean f7427e;

    public C2668u(int i, IBinder iBinder, C2579b c2579b, boolean z, boolean z2) {
        this.f7423a = i;
        this.f7424b = iBinder;
        this.f7425c = c2579b;
        this.f7426d = z;
        this.f7427e = z2;
    }

    /* renamed from: a */
    public AbstractC2647l m13915a() {
        return AbstractC2647l.AbstractBinderC2648a.m14001a(this.f7424b);
    }

    /* renamed from: b */
    public C2579b m13914b() {
        return this.f7425c;
    }

    /* renamed from: c */
    public boolean m13913c() {
        return this.f7426d;
    }

    /* renamed from: d */
    public boolean m13912d() {
        return this.f7427e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C2668u)) {
                z = false;
            } else {
                C2668u c2668u = (C2668u) obj;
                if (!this.f7425c.equals(c2668u.f7425c) || !m13915a().equals(c2668u.m13915a())) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7423a);
        C2664b.m13938a(parcel, 2, this.f7424b, false);
        C2664b.m13937a(parcel, 3, (Parcelable) m13914b(), i, false);
        C2664b.m13930a(parcel, 4, m13913c());
        C2664b.m13930a(parcel, 5, m13912d());
        C2664b.m13943a(parcel, m13944a);
    }
}
