package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC2613ap;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.common.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/u.class */
public final class C2700u extends AbstractC2663a {
    public static final Parcelable.Creator<C2700u> CREATOR = new C2728x();

    /* renamed from: a */
    private final String f7500a;
    @Nullable

    /* renamed from: b */
    private final AbstractBinderC2680o f7501b;

    /* renamed from: c */
    private final boolean f7502c;

    /* renamed from: d */
    private final boolean f7503d;

    public C2700u(String str, @Nullable IBinder iBinder, boolean z, boolean z2) {
        this.f7500a = str;
        this.f7501b = m13882a(iBinder);
        this.f7502c = z;
        this.f7503d = z2;
    }

    public C2700u(String str, @Nullable AbstractBinderC2680o abstractBinderC2680o, boolean z, boolean z2) {
        this.f7500a = str;
        this.f7501b = abstractBinderC2680o;
        this.f7502c = z;
        this.f7503d = z2;
    }

    @Nullable
    /* renamed from: a */
    private static AbstractBinderC2680o m13882a(@Nullable IBinder iBinder) {
        BinderC2683r binderC2683r;
        if (iBinder == null) {
            binderC2683r = null;
        } else {
            try {
                AbstractC2731a mo13901a = AbstractBinderC2613ap.m14117a(iBinder).mo13901a();
                byte[] bArr = mo13901a == null ? null : (byte[]) BinderC2734b.m13795a(mo13901a);
                if (bArr != null) {
                    binderC2683r = new BinderC2683r(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                    binderC2683r = null;
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
                binderC2683r = null;
            }
        }
        return binderC2683r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder asBinder;
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f7500a, false);
        if (this.f7501b == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            asBinder = null;
        } else {
            asBinder = this.f7501b.asBinder();
        }
        C2664b.m13938a(parcel, 2, asBinder, false);
        C2664b.m13930a(parcel, 3, this.f7502c);
        C2664b.m13930a(parcel, 4, this.f7503d);
        C2664b.m13943a(parcel, m13944a);
    }
}
