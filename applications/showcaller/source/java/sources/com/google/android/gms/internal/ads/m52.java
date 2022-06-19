package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m52.class */
public final class m52 implements va2<Bundle> {

    /* renamed from: a */
    public final zzbdl f26427a;

    /* renamed from: b */
    public final String f26428b;

    /* renamed from: c */
    public final boolean f26429c;

    /* renamed from: d */
    public final String f26430d;

    /* renamed from: e */
    public final float f26431e;

    /* renamed from: f */
    public final int f26432f;

    /* renamed from: g */
    public final int f26433g;

    /* renamed from: h */
    public final String f26434h;

    /* renamed from: i */
    public final boolean f26435i;

    public m52(zzbdl zzbdlVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        C6155o.m17017k(zzbdlVar, "the adSize must not be null");
        this.f26427a = zzbdlVar;
        this.f26428b = str;
        this.f26429c = z;
        this.f26430d = str2;
        this.f26431e = f;
        this.f26432f = i;
        this.f26433g = i2;
        this.f26434h = str3;
        this.f26435i = z2;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        jk2.m14100b(bundle2, "smart_w", "full", this.f26427a.f33686h == -1);
        jk2.m14100b(bundle2, "smart_h", "auto", this.f26427a.f33683e == -2);
        Boolean bool = Boolean.TRUE;
        jk2.m14098d(bundle2, "ene", bool, this.f26427a.f33691m);
        jk2.m14100b(bundle2, "rafmt", "102", this.f26427a.f33694p);
        jk2.m14100b(bundle2, "rafmt", "103", this.f26427a.f33695q);
        jk2.m14100b(bundle2, "rafmt", "105", this.f26427a.f33696r);
        jk2.m14098d(bundle2, "inline_adaptive_slot", bool, this.f26435i);
        jk2.m14098d(bundle2, "interscroller_slot", bool, this.f26427a.f33696r);
        jk2.m14097e(bundle2, "format", this.f26428b);
        jk2.m14100b(bundle2, "fluid", "height", this.f26429c);
        jk2.m14100b(bundle2, "sz", this.f26430d, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.f26431e);
        bundle2.putInt("sw", this.f26432f);
        bundle2.putInt("sh", this.f26433g);
        String str2 = this.f26434h;
        jk2.m14100b(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzbdl[] zzbdlVarArr = this.f26427a.f33688j;
        if (zzbdlVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f26427a.f33683e);
            bundle3.putInt("width", this.f26427a.f33686h);
            bundle3.putBoolean("is_fluid_height", this.f26427a.f33690l);
            arrayList.add(bundle3);
        } else {
            for (zzbdl zzbdlVar : zzbdlVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzbdlVar.f33690l);
                bundle4.putInt("height", zzbdlVar.f33683e);
                bundle4.putInt("width", zzbdlVar.f33686h);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
