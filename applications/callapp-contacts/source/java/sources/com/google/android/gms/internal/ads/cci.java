package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cci.class */
public final class cci implements cgy<Bundle> {

    /* renamed from: a */
    private final zzvt f45505a;

    /* renamed from: b */
    private final String f45506b;

    /* renamed from: c */
    private final boolean f45507c;

    /* renamed from: d */
    private final String f45508d;

    /* renamed from: e */
    private final float f45509e;

    /* renamed from: f */
    private final int f45510f;

    /* renamed from: g */
    private final int f45511g;

    /* renamed from: h */
    private final String f45512h;

    /* renamed from: i */
    private final boolean f45513i;

    public cci(zzvt zzvtVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        C12045o.m19161a(zzvtVar, "the adSize must not be null");
        this.f45505a = zzvtVar;
        this.f45506b = str;
        this.f45507c = z;
        this.f45508d = str2;
        this.f45509e = f;
        this.f45510f = i;
        this.f45511g = i2;
        this.f45512h = str3;
        this.f45513i = z2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        String str;
        zzvt[] zzvtVarArr;
        Bundle bundle2 = bundle;
        cpw.m17347a(bundle2, "smart_w", "full", this.f45505a.width == -1);
        cpw.m17347a(bundle2, "smart_h", "auto", this.f45505a.height == -2);
        cpw.m17350a(bundle2, "ene", Boolean.TRUE, this.f45505a.zzciu);
        cpw.m17347a(bundle2, "rafmt", "102", this.f45505a.zzcix);
        cpw.m17347a(bundle2, "rafmt", "103", this.f45505a.zzciy);
        cpw.m17347a(bundle2, "rafmt", "105", this.f45505a.zzadh);
        cpw.m17350a(bundle2, "inline_adaptive_slot", Boolean.TRUE, this.f45513i);
        cpw.m17350a(bundle2, "interscroller_slot", Boolean.TRUE, this.f45505a.zzadh);
        cpw.m17348a(bundle2, "format", this.f45506b);
        cpw.m17347a(bundle2, "fluid", "height", this.f45507c);
        cpw.m17347a(bundle2, "sz", this.f45508d, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.f45509e);
        bundle2.putInt("sw", this.f45510f);
        bundle2.putInt("sh", this.f45511g);
        String str2 = this.f45512h;
        cpw.m17347a(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (this.f45505a.zzcis == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f45505a.height);
            bundle3.putInt("width", this.f45505a.width);
            bundle3.putBoolean("is_fluid_height", this.f45505a.zzcit);
            arrayList.add(bundle3);
        } else {
            for (zzvt zzvtVar : this.f45505a.zzcis) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzvtVar.zzcit);
                bundle4.putInt("height", zzvtVar.height);
                bundle4.putInt("width", zzvtVar.width);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
