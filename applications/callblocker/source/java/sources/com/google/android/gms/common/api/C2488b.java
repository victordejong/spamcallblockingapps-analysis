package com.google.android.gms.common.api;
/* renamed from: com.google.android.gms.common.api.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/b.class */
public class C2488b {
    /* renamed from: a */
    public static String m14438a(int i) {
        String str;
        switch (i) {
            case -1:
                str = "SUCCESS_CACHE";
                break;
            case 0:
                str = "SUCCESS";
                break;
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                str = new StringBuilder(32).append("unknown status code: ").append(i).toString();
                break;
            case 2:
                str = "SERVICE_VERSION_UPDATE_REQUIRED";
                break;
            case 3:
                str = "SERVICE_DISABLED";
                break;
            case 4:
                str = "SIGN_IN_REQUIRED";
                break;
            case 5:
                str = "INVALID_ACCOUNT";
                break;
            case 6:
                str = "RESOLUTION_REQUIRED";
                break;
            case 7:
                str = "NETWORK_ERROR";
                break;
            case 8:
                str = "INTERNAL_ERROR";
                break;
            case 10:
                str = "DEVELOPER_ERROR";
                break;
            case 13:
                str = "ERROR";
                break;
            case 14:
                str = "INTERRUPTED";
                break;
            case 15:
                str = "TIMEOUT";
                break;
            case 16:
                str = "CANCELED";
                break;
            case 17:
                str = "API_NOT_CONNECTED";
                break;
            case 18:
                str = "DEAD_CLIENT";
                break;
        }
        return str;
    }
}
