package com.privacystar.core.util;

import com.privacystar.core.service.PreferenceUtil;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/PSBackend.class */
public class PSBackend {
    public static String getUserToken() {
        return PreferenceUtil.getUserTokenExpiration() > System.currentTimeMillis() ? PreferenceUtil.getUserToken() : null;
    }
}
