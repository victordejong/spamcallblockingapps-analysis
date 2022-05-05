package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zzc;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7271i3;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjo.class */
public class zzjo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjo> CREATOR = new C7271i3();

    /* renamed from: a */
    public final String f6771a;

    /* renamed from: b */
    public final int f6772b;

    /* renamed from: c */
    public final int f6773c;

    /* renamed from: d */
    public final boolean f6774d;

    /* renamed from: e */
    public final int f6775e;

    /* renamed from: f */
    public final int f6776f;

    /* renamed from: g */
    public final zzjo[] f6777g;

    /* renamed from: h */
    public final boolean f6778h;

    /* renamed from: i */
    public final boolean f6779i;

    /* renamed from: j */
    public boolean f6780j;

    public zzjo() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public zzjo(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzjo(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjo.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    public zzjo(String str, int i, int i2, boolean z, int i3, int i4, zzjo[] zzjoVarArr, boolean z2, boolean z3, boolean z4) {
        this.f6771a = str;
        this.f6772b = i;
        this.f6773c = i2;
        this.f6774d = z;
        this.f6775e = i3;
        this.f6776f = i4;
        this.f6777g = zzjoVarArr;
        this.f6778h = z2;
        this.f6779i = z3;
        this.f6780j = z4;
    }

    /* renamed from: H */
    public static zzjo m31852H() {
        return new zzjo("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    /* renamed from: a */
    public static int m31851a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    /* renamed from: b */
    public static int m31850b(DisplayMetrics displayMetrics) {
        return (int) (m31848c(displayMetrics) * displayMetrics.density);
    }

    /* renamed from: c */
    public static int m31848c(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    /* renamed from: c */
    public final AdSize m31849c() {
        return zzc.zza(this.f6775e, this.f6772b, this.f6771a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6771a, false);
        C7031b.m21225a(parcel, 3, this.f6772b);
        C7031b.m21225a(parcel, 4, this.f6773c);
        C7031b.m21212a(parcel, 5, this.f6774d);
        C7031b.m21225a(parcel, 6, this.f6775e);
        C7031b.m21225a(parcel, 7, this.f6776f);
        C7031b.m21209a(parcel, 8, (Parcelable[]) this.f6777g, i, false);
        C7031b.m21212a(parcel, 9, this.f6778h);
        C7031b.m21212a(parcel, 10, this.f6779i);
        C7031b.m21212a(parcel, 11, this.f6780j);
        C7031b.m21229a(parcel, a);
    }
}
