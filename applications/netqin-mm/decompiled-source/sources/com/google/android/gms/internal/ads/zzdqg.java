package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqg.class */
public final class zzdqg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdqg> CREATOR = new zzdqh();

    /* renamed from: a */
    public final zzdqf[] f27722a;

    /* renamed from: b */
    public final int[] f27723b;

    /* renamed from: c */
    public final int[] f27724c;

    /* renamed from: d */
    public final Context f27725d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f27726e;

    /* renamed from: f */
    public final zzdqf f27727f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int f27728g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final int f27729h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final int f27730i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final String f27731j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final int f27732k;

    /* renamed from: l */
    public final int f27733l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final int f27734m;

    /* renamed from: n */
    public final int f27735n;

    @SafeParcelable.Constructor
    public zzdqg(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) int i5, @SafeParcelable.Param(id = 7) int i6) {
        this.f27722a = zzdqf.values();
        this.f27723b = zzdqi.m13311a();
        int[] b = zzdqi.m13310b();
        this.f27724c = b;
        this.f27725d = null;
        this.f27726e = i;
        this.f27727f = this.f27722a[i];
        this.f27728g = i2;
        this.f27729h = i3;
        this.f27730i = i4;
        this.f27731j = str;
        this.f27732k = i5;
        this.f27733l = this.f27723b[i5];
        this.f27734m = i6;
        this.f27735n = b[i6];
    }

    public zzdqg(Context context, zzdqf zzdqfVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.f27722a = zzdqf.values();
        this.f27723b = zzdqi.m13311a();
        this.f27724c = zzdqi.m13310b();
        this.f27725d = context;
        this.f27726e = zzdqfVar.ordinal();
        this.f27727f = zzdqfVar;
        this.f27728g = i;
        this.f27729h = i2;
        this.f27730i = i3;
        this.f27731j = str;
        int i4 = "oldest".equals(str2) ? zzdqi.f27736a : ("lru".equals(str2) || !"lfu".equals(str2)) ? zzdqi.f27737b : zzdqi.f27738c;
        this.f27733l = i4;
        this.f27732k = i4 - 1;
        "onAdClosed".equals(str3);
        int i5 = zzdqi.f27740e;
        this.f27735n = i5;
        this.f27734m = i5 - 1;
    }

    /* renamed from: a */
    public static zzdqg m13313a(zzdqf zzdqfVar, Context context) {
        if (zzdqfVar == zzdqf.Rewarded) {
            return new zzdqg(context, zzdqfVar, ((Integer) zzwm.m11166e().m16921a(zzabb.f23872p3)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23903v3)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23913x3)).intValue(), (String) zzwm.m11166e().m16921a(zzabb.f23923z3), (String) zzwm.m11166e().m16921a(zzabb.f23883r3), (String) zzwm.m11166e().m16921a(zzabb.f23893t3));
        } else if (zzdqfVar == zzdqf.Interstitial) {
            return new zzdqg(context, zzdqfVar, ((Integer) zzwm.m11166e().m16921a(zzabb.f23878q3)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23908w3)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23918y3)).intValue(), (String) zzwm.m11166e().m16921a(zzabb.f23652A3), (String) zzwm.m11166e().m16921a(zzabb.f23888s3), (String) zzwm.m11166e().m16921a(zzabb.f23898u3));
        } else if (zzdqfVar != zzdqf.AppOpen) {
            return null;
        } else {
            return new zzdqg(context, zzdqfVar, ((Integer) zzwm.m11166e().m16921a(zzabb.f23667D3)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23677F3)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23682G3)).intValue(), (String) zzwm.m11166e().m16921a(zzabb.f23657B3), (String) zzwm.m11166e().m16921a(zzabb.f23662C3), (String) zzwm.m11166e().m16921a(zzabb.f23672E3));
        }
    }

    /* renamed from: f */
    public static boolean m13312f() {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23866o3)).booleanValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f27726e);
        SafeParcelWriter.m17231a(parcel, 2, this.f27728g);
        SafeParcelWriter.m17231a(parcel, 3, this.f27729h);
        SafeParcelWriter.m17231a(parcel, 4, this.f27730i);
        SafeParcelWriter.m17221a(parcel, 5, this.f27731j, false);
        SafeParcelWriter.m17231a(parcel, 6, this.f27732k);
        SafeParcelWriter.m17231a(parcel, 7, this.f27734m);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
