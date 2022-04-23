package com.facebook.stetho.server;

import com.facebook.stetho.common.ProcessUtil;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/AddressNameHelper.class */
public class AddressNameHelper {
    private static final String PREFIX = "stetho_";

    public static String createCustomAddress(String str) {
        return PREFIX + ProcessUtil.getProcessName() + str;
    }
}
