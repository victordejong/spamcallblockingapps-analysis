package com.callapp.contacts.loader.external;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.model.contact.GravatarData;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/GravatarLoaderHelper.class */
public class GravatarLoaderHelper {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m28818a(String str) {
        boolean z;
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase.hashCode()) {
            case 96581:
                if (lowerCase.equals("aim")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 104087:
                if (lowerCase.equals("icq")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 98675091:
                if (lowerCase.equals("gtalk")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 109512406:
                if (lowerCase.equals("skype")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 114739264:
                if (lowerCase.equals("yahoo")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                return 0;
            case true:
                return 6;
            case true:
                return 5;
            case true:
                return 3;
            case true:
                return 2;
            default:
                return -1;
        }
    }

    /* renamed from: a */
    private static JSONSocialNetworkID m28820a(GravatarData gravatarData, Integer num) {
        int intValue = num.intValue();
        return intValue != 1 ? intValue != 4 ? intValue != 9 ? intValue != 6 ? intValue != 7 ? null : gravatarData.getInstagramId() : gravatarData.getFoursquareId() : gravatarData.getPinterestId() : gravatarData.getTwitterScreenName() : gravatarData.getFacebookId();
    }

    /* renamed from: a */
    public static void m28821a(GravatarData gravatarData, GravatarData gravatarData2) {
        Integer[] numArr;
        JSONSocialNetworkID m28820a;
        for (Integer num : ApiConstants.f19116c) {
            JSONSocialNetworkID m28820a2 = m28820a(gravatarData, num);
            if ((m28820a2 == null || !m28820a2.isSure()) && (m28820a = m28820a(gravatarData2, num)) != null) {
                int intValue = num.intValue();
                if (intValue == 1) {
                    gravatarData.setFacebookId(m28820a);
                } else if (intValue == 4) {
                    gravatarData.setTwitterScreenName(m28820a);
                } else if (intValue == 9) {
                    gravatarData.setPinterestId(m28820a);
                } else if (intValue == 6) {
                    gravatarData.setFoursquareId(m28820a);
                } else if (intValue == 7) {
                    gravatarData.setInstagramId(m28820a);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m28819a(GravatarData gravatarData, String str, int i, boolean z) {
        if (StringUtils.m26045b((CharSequence) str)) {
            JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(str, z);
            if (i == 1) {
                gravatarData.setFacebookId(jSONSocialNetworkID);
            } else if (i == 4) {
                gravatarData.setTwitterScreenName(jSONSocialNetworkID);
            } else if (i == 9) {
                gravatarData.setPinterestId(jSONSocialNetworkID);
            } else if (i == 6) {
                gravatarData.setFoursquareId(jSONSocialNetworkID);
            } else if (i != 7) {
            } else {
                gravatarData.setInstagramId(jSONSocialNetworkID);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public static int m28817b(String str) {
        boolean z;
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase.hashCode()) {
            case -1240244679:
                if (lowerCase.equals(Payload.SOURCE_GOOGLE)) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -916346253:
                if (lowerCase.equals("twitter")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1034342:
                if (lowerCase.equals("pinterest")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 28903346:
                if (lowerCase.equals("instagram")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 497130182:
                if (lowerCase.equals("facebook")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1913352643:
                if (lowerCase.equals("foursquare")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                return 5;
            case true:
                return 4;
            case true:
                return 9;
            case true:
                return 7;
            case true:
                return 1;
            case true:
                return 6;
            default:
                return -1;
        }
    }
}
