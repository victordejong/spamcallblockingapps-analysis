package p459j.p460a.p521j0;

import android.net.Uri;
import android.telecom.Call;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p521j0.C12492c;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
@RequiresApi(api = 23)
/* renamed from: j.a.j0.t */
/* loaded from: classes3-dex2jar.jar:j/a/j0/t.class */
public class C12517t {
    /* renamed from: a */
    public static String m5968a(int i) {
        int i2;
        switch (i) {
            case 0:
                return "STATE_NEW";
            case 1:
                i2 = R$string.incall_state_dialing;
                break;
            case 2:
                i2 = R$string.incall_state_ringing;
                break;
            case 3:
                i2 = R$string.incall_state_holding;
                break;
            case 4:
                i2 = R$string.incall_state_active;
                break;
            case 5:
            case 6:
            default:
                i2 = 0;
                break;
            case 7:
                i2 = R$string.incall_state_disconnected;
                break;
            case 8:
                return "STATE_SELECT_PHONE_ACCOUNT";
            case 9:
                i2 = R$string.incall_state_connecting;
                break;
            case 10:
                i2 = R$string.incall_state_disconnecting;
                break;
        }
        if (i2 != 0) {
            return C14206w4.m2225a(i2);
        }
        return null;
    }

    /* renamed from: a */
    public static String m5967a(Uri uri) {
        String str = "";
        if (uri != null) {
            str = uri.getSchemeSpecificPart().replace(" ", "");
        }
        return str;
    }

    /* renamed from: a */
    public static String m5966a(Call call) {
        return C14108o4.m2474l(m5964b(call));
    }

    /* renamed from: a */
    public static String m5965a(C12492c cVar, Call call) {
        C12492c.C12493a b = cVar.m5999b(call);
        return b == null ? "" : !TextUtils.isEmpty(b.m5981c()) ? b.m5981c() : b.m5984b();
    }

    /* renamed from: b */
    public static String m5964b(Call call) {
        if (call == null) {
            return null;
        }
        return m5967a(call.getDetails().getHandle());
    }

    /* renamed from: c */
    public static String m5963c(Call call) {
        if (call == null) {
            return "Call is NULL";
        }
        Uri handle = call.getDetails().getHandle();
        StringBuilder sb = new StringBuilder();
        sb.append("number = ");
        sb.append(handle != null ? handle.getSchemeSpecificPart() : null);
        sb.append(", state = ");
        sb.append(m5968a(call.getState()));
        return sb.toString();
    }
}
