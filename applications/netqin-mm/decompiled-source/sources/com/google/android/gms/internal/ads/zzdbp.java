package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzp;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbp.class */
public final class zzdbp implements zzdgu<Bundle> {

    /* renamed from: a */
    public final Context f26887a;

    /* renamed from: b */
    public final zzvn f26888b;

    /* renamed from: c */
    public final List<Parcelable> f26889c;

    public zzdbp(Context context, zzvn zzvnVar, List<Parcelable> list) {
        this.f26887a = context;
        this.f26888b = zzvnVar;
        this.f26889c = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (zzacy.f23999a.mo16862a().booleanValue()) {
            Bundle bundle3 = new Bundle();
            zzp.m17969c();
            bundle3.putString("activity", zzayu.m16090f(this.f26887a));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.f26888b.f29039e);
            bundle4.putInt("height", this.f26888b.f29036b);
            bundle3.putBundle("size", bundle4);
            if (this.f26889c.size() > 0) {
                List<Parcelable> list = this.f26889c;
                bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
