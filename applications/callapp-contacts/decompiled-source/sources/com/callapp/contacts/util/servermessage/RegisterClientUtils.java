package com.callapp.contacts.util.servermessage;

import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.common.util.AESUtils;
import com.callapp.contacts.activity.setup.RegistrationRequest;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/servermessage/RegisterClientUtils.class */
public class RegisterClientUtils {
    public static String a(String str) {
        if (!StringUtils.b((CharSequence) str)) {
            return null;
        }
        try {
            return new AESUtils(Base64Utils.getInstance()).b(str, "kjshadvfvn734mlasavtausdcm89324b83hnfiaa");
        } catch (Exception e) {
            CLog.b(RegistrationRequest.class, e);
            return null;
        }
    }

    public static void a(String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
        new RegistrationRequest(str, authenticators_types, null).a();
    }
}
