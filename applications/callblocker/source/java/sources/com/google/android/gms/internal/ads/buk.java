package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dwv;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/buk.class */
public class buk {

    /* renamed from: a */
    private String f12286a;

    /* renamed from: com.google.android.gms.internal.ads.buk$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/buk$a.class */
    public static final class C2845a {

        /* renamed from: a */
        private String f12287a;

        /* renamed from: a */
        public final C2845a m11606a(String str) {
            this.f12287a = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public buk(C2845a c2845a) {
        this.f12286a = c2845a.f12287a;
    }

    /* renamed from: a */
    public final Set<String> m11610a() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f12286a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    /* renamed from: b */
    public final String m11609b() {
        return this.f12286a.toLowerCase(Locale.ROOT);
    }

    /* renamed from: c */
    public final dwv.C3021a.EnumC3022a m11608c() {
        dwv.C3021a.EnumC3022a enumC3022a;
        String str = this.f12286a;
        boolean z = true;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    z = true;
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
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                enumC3022a = dwv.C3021a.EnumC3022a.BANNER;
                break;
            case true:
                enumC3022a = dwv.C3021a.EnumC3022a.INTERSTITIAL;
                break;
            case true:
                enumC3022a = dwv.C3021a.EnumC3022a.AD_LOADER;
                break;
            case true:
                enumC3022a = dwv.C3021a.EnumC3022a.REWARD_BASED_VIDEO_AD;
                break;
            default:
                enumC3022a = dwv.C3021a.EnumC3022a.AD_INITIATER_UNSPECIFIED;
                break;
        }
        return enumC3022a;
    }
}
