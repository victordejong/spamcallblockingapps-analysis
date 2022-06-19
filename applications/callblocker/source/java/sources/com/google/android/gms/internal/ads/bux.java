package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C2341q;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bux.class */
public final class bux implements cae<Bundle> {

    /* renamed from: a */
    private final Context f12314a;

    /* renamed from: b */
    private final dyd f12315b;

    /* renamed from: c */
    private final List<Parcelable> f12316c;

    public bux(Context context, dyd dydVar, List<Parcelable> list) {
        this.f12314a = context;
        this.f12315b = dydVar;
        this.f12316c = list;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (C2789ap.f10164a.mo13599a().booleanValue()) {
            Bundle bundle3 = new Bundle();
            C2341q.m14744c();
            bundle3.putString("activity", C3567ve.m6954f(this.f12314a));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.f12315b.f16094e);
            bundle4.putInt("height", this.f12315b.f16091b);
            bundle3.putBundle("size", bundle4);
            if (this.f12316c.size() > 0) {
                bundle3.putParcelableArray("parents", (Parcelable[]) this.f12316c.toArray(new Parcelable[this.f12316c.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
