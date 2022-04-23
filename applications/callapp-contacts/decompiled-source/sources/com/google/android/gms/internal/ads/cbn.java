package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbn.class */
public final class cbn implements dsi<eht.a.EnumC0477a> {

    /* renamed from: a  reason: collision with root package name */
    private final cbj f25540a;

    public cbn(cbj cbjVar) {
        this.f25540a = cbjVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        eht.a.EnumC0477a aVar;
        String str = this.f25540a.f25533a;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c2 = 1;
                    break;
                }
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                aVar = eht.a.EnumC0477a.AD_LOADER;
                break;
            case 1:
                aVar = eht.a.EnumC0477a.INTERSTITIAL;
                break;
            case 2:
                aVar = eht.a.EnumC0477a.REWARD_BASED_VIDEO_AD;
                break;
            case 3:
                aVar = eht.a.EnumC0477a.BANNER;
                break;
            default:
                aVar = eht.a.EnumC0477a.AD_INITIATER_UNSPECIFIED;
                break;
        }
        return (eht.a.EnumC0477a) dso.b(aVar);
    }
}
