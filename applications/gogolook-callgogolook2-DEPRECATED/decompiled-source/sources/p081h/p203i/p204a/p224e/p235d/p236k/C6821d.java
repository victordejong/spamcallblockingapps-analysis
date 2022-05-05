package p081h.p203i.p204a.p224e.p235d.p236k;

import androidx.annotation.NonNull;
import com.appsflyer.internal.referrer.Payload;
import gogolook.callgogolook2.gson.CallAction;
/* renamed from: h.i.a.e.d.k.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/d.class */
public class C6821d {
    @NonNull
    /* renamed from: a */
    public static String m21843a(int i) {
        switch (i) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                StringBuilder sb = new StringBuilder(32);
                sb.append("unknown status code: ");
                sb.append(i);
                return sb.toString();
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return Payload.RESPONSE_DEVELOPER_ERROR;
            case 13:
                return CallAction.ACTION_ERROR;
            case 14:
                return "INTERRUPTED";
            case 15:
                return Payload.RESPONSE_TIMEOUT;
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
        }
    }
}
