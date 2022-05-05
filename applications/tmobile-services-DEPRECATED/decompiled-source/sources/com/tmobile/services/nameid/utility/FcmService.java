package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.tmobile.services.nameid.MainApplication;
import java.util.UUID;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/FcmService.class */
public class FcmService extends FirebaseMessagingService {
    /* renamed from: a */
    public static void m5715a(String str, int i) {
        String e = m5711e();
        String uuid = UUID.randomUUID().toString();
        LogUtil.m5632o("FcmService#", "call receipt upstream, msisdn = " + str + ", control number = " + i + ", upstream address = " + e + " with message id " + uuid + " with FCM key " + m5712d());
        FirebaseMessaging.getInstance().send(new RemoteMessage.Builder(e).setMessageId(uuid).addData("delivery_receipt", "true").addData("msisdn", str).addData("cn", Integer.toString(i)).setTtl(86400).build());
    }

    /* renamed from: b */
    public static void m5714b(String str) {
        String e = m5711e();
        String uuid = UUID.randomUUID().toString();
        LogUtil.m5632o("FcmService#", "eula upstream @ " + e + " with message id " + uuid + " with FCM key " + m5712d());
        FirebaseMessaging.getInstance().send(new RemoteMessage.Builder(e).setMessageId(uuid).addData("eula_acceptance", "true").addData("msisdn", str).setTtl(86400).build());
    }

    /* renamed from: c */
    public static FirebaseApp m5713c() {
        return FirebaseApp.getInstance();
    }

    @Nonnull
    /* renamed from: d */
    public static String m5712d() {
        String token = FirebaseInstanceId.getInstance().getToken();
        if (token != null) {
            PreferenceUtils.m5383n("secondFcm", token);
        }
        String str = token;
        if (token == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: e */
    private static String m5711e() {
        FirebaseApp c = m5713c();
        return c.getOptions().getGcmSenderId() + "@gcm.googleapis.com";
    }

    /* renamed from: f */
    public static boolean m5710f(boolean z, String str) {
        if (z) {
            if (PreferenceUtils.m5390g("PREF_LAST_UPSTREAM_REG_KEY").equals(m5712d())) {
                LogUtil.m5643d("FcmService#isKeyRegistered", "Neotron - Already registered with this FCM key");
                return true;
            }
        } else if (PreferenceUtils.m5390g("PREF_LAST_UPSTREAM_REG_KEY_FO").equals(str)) {
            LogUtil.m5643d("FcmService#isKeyRegistered", "FO - Already registered with this FCM key");
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Neotron" : "FO");
        sb.append(" - FCM Token is NOT registered");
        LogUtil.m5643d("FcmService#isKeyRegistered", sb.toString());
        return false;
    }

    /* renamed from: g */
    public static boolean m5709g() {
        if (PreferenceUtils.m5395b("PREF_ALLOW_REGISTER_UPSTREAMS", false)) {
            return true;
        }
        LogUtil.m5643d("FcmService#isUpstreamAllowed", "Upstream not allowed - is EULA not accepted?");
        return false;
    }

    /* renamed from: i */
    public static void m5707i(String str) {
        if (str == null || "".equals(str)) {
            LogUtil.m5631p("FcmService#registerUpstream", "msisdn is empty/null - cannot register. Waiting until msisdn is available");
            return;
        }
        String e = m5711e();
        String uuid = UUID.randomUUID().toString();
        FirebaseMessaging instance = FirebaseMessaging.getInstance();
        String d = m5712d();
        if (!m5710f(true, d) && !d.equals("")) {
            LogUtil.m5632o("FcmService#registerUpstream", "register upstream @ " + e + " with FCM key " + d + " with message id " + uuid + " with msisdn " + str);
            PreferenceUtils.m5383n("PREF_LAST_UPSTREAM_REG_KEY", d);
            instance.send(new RemoteMessage.Builder(e).setMessageId(uuid).addData("registration", "true").addData("msisdn", str).setTtl(86400).build());
        }
    }

    /* renamed from: j */
    public static boolean m5706j() {
        String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
        String g2 = PreferenceUtils.m5390g("secondFcm");
        String d = m5712d();
        boolean z = true;
        if (m5709g()) {
            if (g2.equals(d) || d.equals("") || m5710f(true, d)) {
                LogUtil.m5643d("FcmService#verifyFCMTokenNeotron", "Key is unchanged, empty or registered - " + d);
            } else {
                m5707i(g);
                LogUtil.m5643d("FcmService#verifyFCMTokenNeotron", "Neotron Token changed? returning:" + z);
                return z;
            }
        }
        z = false;
        LogUtil.m5643d("FcmService#verifyFCMTokenNeotron", "Neotron Token changed? returning:" + z);
        return z;
    }

    /* renamed from: h */
    public void m5708h() {
        LogUtil.m5643d("FcmService#onTokenRefresh", "Token(s) changed, checking FO and Neotron tokens");
        if (m5706j()) {
            String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
            Context l = MainApplication.m7528l();
            String g2 = PreferenceUtils.m5390g("PREF_MATA_IMEI");
            if (l != null && !g2.isEmpty() && !g.isEmpty()) {
                LogUtil.m5643d("FcmService#onTokenRefresh", "Registering with FO backend - FCM key changed");
                FoRegistrationHelper.m5693m(l);
            }
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        m5708h();
    }
}
