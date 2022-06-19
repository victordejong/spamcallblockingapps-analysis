package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvj.class */
public final class bvj implements cae<Bundle> {

    /* renamed from: a */
    private final dyd f12336a;

    /* renamed from: b */
    private final String f12337b;

    /* renamed from: c */
    private final boolean f12338c;

    /* renamed from: d */
    private final String f12339d;

    /* renamed from: e */
    private final float f12340e;

    /* renamed from: f */
    private final int f12341f;

    /* renamed from: g */
    private final int f12342g;

    /* renamed from: h */
    private final String f12343h;

    /* renamed from: i */
    private final boolean f12344i;

    public bvj(dyd dydVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        C2662s.m13980a(dydVar, "the adSize must not be null");
        this.f12336a = dydVar;
        this.f12337b = str;
        this.f12338c = z;
        this.f12339d = str2;
        this.f12340e = f;
        this.f12341f = i;
        this.f12342g = i2;
        this.f12343h = str3;
        this.f12344i = z2;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        dyd[] dydVarArr;
        Bundle bundle2 = bundle;
        chm.m11303a(bundle2, "smart_w", "full", this.f12336a.f16094e == -1);
        chm.m11303a(bundle2, "smart_h", "auto", this.f12336a.f16091b == -2);
        chm.m11306a(bundle2, "ene", (Boolean) true, this.f12336a.f16099j);
        chm.m11303a(bundle2, "rafmt", "102", this.f12336a.f16101l);
        chm.m11303a(bundle2, "rafmt", "103", this.f12336a.f16102m);
        chm.m11306a(bundle2, "inline_adaptive_slot", (Boolean) true, this.f12344i);
        chm.m11304a(bundle2, "format", this.f12337b);
        chm.m11303a(bundle2, "fluid", "height", this.f12338c);
        chm.m11303a(bundle2, "sz", this.f12339d, !TextUtils.isEmpty(this.f12339d));
        bundle2.putFloat("u_sd", this.f12340e);
        bundle2.putInt("sw", this.f12341f);
        bundle2.putInt("sh", this.f12342g);
        chm.m11303a(bundle2, "sc", this.f12343h, !TextUtils.isEmpty(this.f12343h));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (this.f12336a.f16096g == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f12336a.f16091b);
            bundle3.putInt("width", this.f12336a.f16094e);
            bundle3.putBoolean("is_fluid_height", this.f12336a.f16098i);
            arrayList.add(bundle3);
        } else {
            for (dyd dydVar : this.f12336a.f16096g) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", dydVar.f16098i);
                bundle4.putInt("height", dydVar.f16091b);
                bundle4.putInt("width", dydVar.f16094e);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
