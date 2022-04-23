package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcb.class */
public final class zzdcb implements zzdgu<Bundle> {

    /* renamed from: a */
    public final zzvn f27101a;

    /* renamed from: b */
    public final String f27102b;

    /* renamed from: c */
    public final boolean f27103c;

    /* renamed from: d */
    public final String f27104d;

    /* renamed from: e */
    public final float f27105e;

    /* renamed from: f */
    public final int f27106f;

    /* renamed from: g */
    public final int f27107g;

    /* renamed from: h */
    public final String f27108h;

    /* renamed from: i */
    public final boolean f27109i;

    public zzdcb(zzvn zzvnVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        Preconditions.m17287a(zzvnVar, "the adSize must not be null");
        this.f27101a = zzvnVar;
        this.f27102b = str;
        this.f27103c = z;
        this.f27104d = str2;
        this.f27105e = f;
        this.f27106f = i;
        this.f27107g = i2;
        this.f27108h = str3;
        this.f27109i = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        zzdot.m13392a(bundle2, "smart_w", "full", this.f27101a.f29039e == -1);
        zzdot.m13392a(bundle2, "smart_h", "auto", this.f27101a.f29036b == -2);
        zzdot.m13395a(bundle2, "ene", (Boolean) true, this.f27101a.f29044j);
        zzdot.m13392a(bundle2, "rafmt", "102", this.f27101a.f29047m);
        zzdot.m13392a(bundle2, "rafmt", "103", this.f27101a.f29048n);
        zzdot.m13395a(bundle2, "inline_adaptive_slot", (Boolean) true, this.f27109i);
        zzdot.m13393a(bundle2, "format", this.f27102b);
        zzdot.m13392a(bundle2, "fluid", "height", this.f27103c);
        zzdot.m13392a(bundle2, "sz", this.f27104d, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.f27105e);
        bundle2.putInt("sw", this.f27106f);
        bundle2.putInt("sh", this.f27107g);
        String str2 = this.f27108h;
        zzdot.m13392a(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzvn[] zzvnVarArr = this.f27101a.f29041g;
        if (zzvnVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f27101a.f29036b);
            bundle3.putInt("width", this.f27101a.f29039e);
            bundle3.putBoolean("is_fluid_height", this.f27101a.f29043i);
            arrayList.add(bundle3);
        } else {
            for (zzvn zzvnVar : zzvnVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzvnVar.f29043i);
                bundle4.putInt("height", zzvnVar.f29036b);
                bundle4.putInt("width", zzvnVar.f29039e);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
