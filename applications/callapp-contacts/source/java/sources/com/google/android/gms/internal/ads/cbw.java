package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbw.class */
public final class cbw implements cgy<Bundle> {

    /* renamed from: a */
    private final Context f45478a;

    /* renamed from: b */
    private final zzvt f45479b;

    /* renamed from: c */
    private final List<Parcelable> f45480c;

    public cbw(Context context, zzvt zzvtVar, List<Parcelable> list) {
        this.f45478a = context;
        this.f45479b = zzvtVar;
        this.f45480c = list;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (C12283cr.f46411a.mo17481a().booleanValue()) {
            Bundle bundle3 = new Bundle();
            zzr.zzkv();
            bundle3.putString("activity", zzj.zzas(this.f45478a));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.f45479b.width);
            bundle4.putInt("height", this.f45479b.height);
            bundle3.putBundle("size", bundle4);
            if (this.f45480c.size() > 0) {
                List<Parcelable> list = this.f45480c;
                bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
