package p193e.p1485h.p1486a.p1493c.p1501q0;

import com.mopub.common.AdType;
/* renamed from: e.h.a.c.q0.z */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/z.class */
public enum EnumC22809z {
    CTInAppTypeHTML(AdType.HTML),
    CTInAppTypeCoverHTML("coverHtml"),
    CTInAppTypeInterstitialHTML("interstitialHtml"),
    CTInAppTypeHeaderHTML("headerHtml"),
    CTInAppTypeFooterHTML("footerHtml"),
    CTInAppTypeHalfInterstitialHTML("halfInterstitialHtml"),
    CTInAppTypeCover("cover"),
    CTInAppTypeInterstitial("interstitial"),
    CTInAppTypeHalfInterstitial("half-interstitial"),
    CTInAppTypeHeader("header-template"),
    CTInAppTypeFooter("footer-template"),
    CTInAppTypeAlert("alert-template"),
    CTInAppTypeCoverImageOnly("cover-image"),
    CTInAppTypeInterstitialImageOnly("interstitial-image"),
    CTInAppTypeHalfInterstitialImageOnly("half-interstitial-image");
    

    /* renamed from: a */
    public final String f63254a;

    EnumC22809z(String str) {
        this.f63254a = str;
    }

    /* renamed from: a */
    public static EnumC22809z m7750a(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1698613420:
                if (str.equals("half-interstitial-image")) {
                    z = false;
                    break;
                }
                break;
            case -1258935355:
                if (str.equals("cover-image")) {
                    z = true;
                    break;
                }
                break;
            case -1160074422:
                if (str.equals("halfInterstitialHtml")) {
                    z = true;
                    break;
                }
                break;
            case -1141304454:
                if (str.equals("interstitial-image")) {
                    z = true;
                    break;
                }
                break;
            case -728863497:
                if (str.equals("interstitialHtml")) {
                    z = true;
                    break;
                }
                break;
            case -334055316:
                if (str.equals("footer-template")) {
                    z = true;
                    break;
                }
                break;
            case -37253685:
                if (str.equals("alert-template")) {
                    z = true;
                    break;
                }
                break;
            case 3213227:
                if (str.equals(AdType.HTML)) {
                    z = true;
                    break;
                }
                break;
            case 94852023:
                if (str.equals("cover")) {
                    z = true;
                    break;
                }
                break;
            case 604727084:
                if (str.equals("interstitial")) {
                    z = true;
                    break;
                }
                break;
            case 894039686:
                if (str.equals("half-interstitial")) {
                    z = true;
                    break;
                }
                break;
            case 1189018554:
                if (str.equals("header-template")) {
                    z = true;
                    break;
                }
                break;
            case 1420225510:
                if (str.equals("footerHtml")) {
                    z = true;
                    break;
                }
                break;
            case 1977176024:
                if (str.equals("headerHtml")) {
                    z = true;
                    break;
                }
                break;
            case 1979390978:
                if (str.equals("coverHtml")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return CTInAppTypeHalfInterstitialImageOnly;
            case true:
                return CTInAppTypeCoverImageOnly;
            case true:
                return CTInAppTypeHalfInterstitialHTML;
            case true:
                return CTInAppTypeInterstitialImageOnly;
            case true:
                return CTInAppTypeInterstitialHTML;
            case true:
                return CTInAppTypeFooter;
            case true:
                return CTInAppTypeAlert;
            case true:
                return CTInAppTypeHTML;
            case true:
                return CTInAppTypeCover;
            case true:
                return CTInAppTypeInterstitial;
            case true:
                return CTInAppTypeHalfInterstitial;
            case true:
                return CTInAppTypeHeader;
            case true:
                return CTInAppTypeFooterHTML;
            case true:
                return CTInAppTypeHeaderHTML;
            case true:
                return CTInAppTypeCoverHTML;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f63254a;
    }
}
