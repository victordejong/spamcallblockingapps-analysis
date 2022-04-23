package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbw.class */
public final class cbw implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25557a;

    /* renamed from: b  reason: collision with root package name */
    private final zzvt f25558b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Parcelable> f25559c;

    public cbw(Context context, zzvt zzvtVar, List<Parcelable> list) {
        this.f25557a = context;
        this.f25558b = zzvtVar;
        this.f25559c = list;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (cr.f26285a.a().booleanValue()) {
            Bundle bundle3 = new Bundle();
            zzr.zzkv();
            bundle3.putString("activity", zzj.zzas(this.f25557a));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.f25558b.width);
            bundle4.putInt("height", this.f25558b.height);
            bundle3.putBundle("size", bundle4);
            if (this.f25559c.size() > 0) {
                List<Parcelable> list = this.f25559c;
                bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
