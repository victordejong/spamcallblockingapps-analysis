package com.callapp.contacts.loader.external;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.model.contact.GravatarData;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/GravatarLoaderHelper.class */
public class GravatarLoaderHelper {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c2;
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase.hashCode()) {
            case 96581:
                if (lowerCase.equals("aim")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 104087:
                if (lowerCase.equals("icq")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 98675091:
                if (lowerCase.equals("gtalk")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 109512406:
                if (lowerCase.equals("skype")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 114739264:
                if (lowerCase.equals("yahoo")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return 0;
            case 1:
                return 6;
            case 2:
                return 5;
            case 3:
                return 3;
            case 4:
                return 2;
            default:
                return -1;
        }
    }

    private static JSONSocialNetworkID a(GravatarData gravatarData, Integer num) {
        int intValue = num.intValue();
        return intValue != 1 ? intValue != 4 ? intValue != 9 ? intValue != 6 ? intValue != 7 ? null : gravatarData.getInstagramId() : gravatarData.getFoursquareId() : gravatarData.getPinterestId() : gravatarData.getTwitterScreenName() : gravatarData.getFacebookId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GravatarData gravatarData, GravatarData gravatarData2) {
        Integer[] numArr;
        JSONSocialNetworkID a2;
        for (Integer num : ApiConstants.f10379c) {
            JSONSocialNetworkID a3 = a(gravatarData, num);
            if ((a3 == null || !a3.isSure()) && (a2 = a(gravatarData2, num)) != null) {
                int intValue = num.intValue();
                if (intValue == 1) {
                    gravatarData.setFacebookId(a2);
                } else if (intValue == 4) {
                    gravatarData.setTwitterScreenName(a2);
                } else if (intValue == 9) {
                    gravatarData.setPinterestId(a2);
                } else if (intValue == 6) {
                    gravatarData.setFoursquareId(a2);
                } else if (intValue == 7) {
                    gravatarData.setInstagramId(a2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GravatarData gravatarData, String str, int i, boolean z) {
        if (StringUtils.b((CharSequence) str)) {
            JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(str, z);
            if (i == 1) {
                gravatarData.setFacebookId(jSONSocialNetworkID);
            } else if (i == 4) {
                gravatarData.setTwitterScreenName(jSONSocialNetworkID);
            } else if (i == 9) {
                gravatarData.setPinterestId(jSONSocialNetworkID);
            } else if (i == 6) {
                gravatarData.setFoursquareId(jSONSocialNetworkID);
            } else if (i == 7) {
                gravatarData.setInstagramId(jSONSocialNetworkID);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int b(String str) {
        char c2;
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase.hashCode()) {
            case -1240244679:
                if (lowerCase.equals(Payload.SOURCE_GOOGLE)) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -916346253:
                if (lowerCase.equals("twitter")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1034342:
                if (lowerCase.equals("pinterest")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 28903346:
                if (lowerCase.equals("instagram")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 497130182:
                if (lowerCase.equals("facebook")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1913352643:
                if (lowerCase.equals("foursquare")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return 5;
            case 1:
                return 4;
            case 2:
                return 9;
            case 3:
                return 7;
            case 4:
                return 1;
            case 5:
                return 6;
            default:
                return -1;
        }
    }
}
