package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cci.class */
public final class cci implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final zzvt f25583a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25584b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f25585c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25586d;
    private final float e;
    private final int f;
    private final int g;
    private final String h;
    private final boolean i;

    public cci(zzvt zzvtVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        o.a(zzvtVar, "the adSize must not be null");
        this.f25583a = zzvtVar;
        this.f25584b = str;
        this.f25585c = z;
        this.f25586d = str2;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = str3;
        this.i = z2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        String str;
        zzvt[] zzvtVarArr;
        Bundle bundle2 = bundle;
        cpw.a(bundle2, "smart_w", "full", this.f25583a.width == -1);
        cpw.a(bundle2, "smart_h", "auto", this.f25583a.height == -2);
        cpw.a(bundle2, "ene", Boolean.TRUE, this.f25583a.zzciu);
        cpw.a(bundle2, "rafmt", "102", this.f25583a.zzcix);
        cpw.a(bundle2, "rafmt", "103", this.f25583a.zzciy);
        cpw.a(bundle2, "rafmt", "105", this.f25583a.zzadh);
        cpw.a(bundle2, "inline_adaptive_slot", Boolean.TRUE, this.i);
        cpw.a(bundle2, "interscroller_slot", Boolean.TRUE, this.f25583a.zzadh);
        cpw.a(bundle2, "format", this.f25584b);
        cpw.a(bundle2, "fluid", "height", this.f25585c);
        cpw.a(bundle2, "sz", this.f25586d, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.e);
        bundle2.putInt("sw", this.f);
        bundle2.putInt("sh", this.g);
        String str2 = this.h;
        cpw.a(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (this.f25583a.zzcis == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f25583a.height);
            bundle3.putInt("width", this.f25583a.width);
            bundle3.putBoolean("is_fluid_height", this.f25583a.zzcit);
            arrayList.add(bundle3);
        } else {
            for (zzvt zzvtVar : this.f25583a.zzcis) {
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
