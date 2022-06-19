package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbn.class */
public final class cbn implements dsi<eht.C12447a.EnumC12448a> {

    /* renamed from: a */
    private final cbj f45461a;

    public cbn(cbj cbjVar) {
        this.f45461a = cbjVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        eht.C12447a.EnumC12448a enumC12448a;
        String str = this.f45461a.f45451a;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    z = false;
                    break;
                }
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    z = true;
                    break;
                }
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    z = true;
                    break;
                }
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                enumC12448a = eht.C12447a.EnumC12448a.AD_LOADER;
                break;
            case true:
                enumC12448a = eht.C12447a.EnumC12448a.INTERSTITIAL;
                break;
            case true:
                enumC12448a = eht.C12447a.EnumC12448a.REWARD_BASED_VIDEO_AD;
                break;
            case true:
                enumC12448a = eht.C12447a.EnumC12448a.BANNER;
                break;
            default:
                enumC12448a = eht.C12447a.EnumC12448a.AD_INITIATER_UNSPECIFIED;
                break;
        }
        return (eht.C12447a.EnumC12448a) dso.m15764b(enumC12448a);
    }
}
