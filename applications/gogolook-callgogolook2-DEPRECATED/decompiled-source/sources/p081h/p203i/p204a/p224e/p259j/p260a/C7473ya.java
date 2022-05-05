package p081h.p203i.p204a.p224e.p259j.p260a;

import android.location.Location;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.internal.ads.zznf;
import com.google.android.gms.internal.ads.zzpy;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.ya */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ya.class */
public final class C7473ya implements NativeMediationAdRequest {

    /* renamed from: a */
    public final Date f17567a;

    /* renamed from: b */
    public final int f17568b;

    /* renamed from: c */
    public final Set<String> f17569c;

    /* renamed from: d */
    public final boolean f17570d;

    /* renamed from: e */
    public final Location f17571e;

    /* renamed from: f */
    public final int f17572f;

    /* renamed from: g */
    public final zzpy f17573g;

    /* renamed from: i */
    public final boolean f17575i;

    /* renamed from: h */
    public final List<String> f17574h = new ArrayList();

    /* renamed from: j */
    public final Map<String, Boolean> f17576j = new HashMap();

    public C7473ya(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, zzpy zzpyVar, List<String> list, boolean z2) {
        this.f17567a = date;
        this.f17568b = i;
        this.f17569c = set;
        this.f17571e = location;
        this.f17570d = z;
        this.f17572f = i2;
        this.f17573g = zzpyVar;
        this.f17575i = z2;
        if (list != null) {
            for (String str : list) {
                if (str.startsWith("custom:")) {
                    String[] split = str.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f17576j.put(split[1], true);
                        } else if ("false".equals(split[2])) {
                            this.f17576j.put(split[1], false);
                        }
                    }
                } else {
                    this.f17574h.add(str);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return C7183b6.m20979d().m20988a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f17567a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f17568b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f17569c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.f17571e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        zznf zznfVar;
        if (this.f17573g == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.f17573g.f6789b).setImageOrientation(this.f17573g.f6790c).setRequestMultipleImages(this.f17573g.f6791d);
        zzpy zzpyVar = this.f17573g;
        if (zzpyVar.f6788a >= 2) {
            requestMultipleImages.setAdChoicesPlacement(zzpyVar.f6792e);
        }
        zzpy zzpyVar2 = this.f17573g;
        if (zzpyVar2.f6788a >= 3 && (zznfVar = zzpyVar2.f6793f) != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(zznfVar));
        }
        return requestMultipleImages.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return C7183b6.m20979d().m20981b();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.f17574h;
        if (list != null) {
            return list.contains("2") || this.f17574h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.f17574h;
        if (list != null) {
            return list.contains("1") || this.f17574h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f17575i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f17570d;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.f17574h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f17572f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzok() {
        List<String> list = this.f17574h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzol() {
        return this.f17576j;
    }
}
