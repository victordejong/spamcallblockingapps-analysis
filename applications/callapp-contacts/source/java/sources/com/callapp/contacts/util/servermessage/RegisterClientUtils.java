package com.callapp.contacts.util.servermessage;

import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.common.util.AESUtils;
import com.callapp.contacts.activity.setup.RegistrationRequest;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/servermessage/RegisterClientUtils.class */
public class RegisterClientUtils {
    /* renamed from: a */
    public static String m26908a(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            try {
                return new AESUtils(Base64Utils.getInstance()).m31924b(str, "kjshadvfvn734mlasavtausdcm89324b83hnfiaa");
            } catch (Exception e) {
                CLog.m27596b(RegistrationRequest.class, e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m26907a(String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
        new RegistrationRequest(str, authenticators_types, null).m29533a();
    }
}
