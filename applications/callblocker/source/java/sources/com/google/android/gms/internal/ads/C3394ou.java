package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.ou */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ou.class */
public final class C3394ou extends AbstractC2663a {
    public static final Parcelable.Creator<C3394ou> CREATOR = new C3396ow();

    /* renamed from: a */
    public final View f17058a;

    /* renamed from: b */
    public final Map<String, WeakReference<View>> f17059b;

    public C3394ou(IBinder iBinder, IBinder iBinder2) {
        this.f17058a = (View) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder));
        this.f17059b = (Map) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13938a(parcel, 1, BinderC2734b.m13794a(this.f17058a).asBinder(), false);
        C2664b.m13938a(parcel, 2, BinderC2734b.m13794a(this.f17059b).asBinder(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
