package com.mopub.network;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/InetAddressUtils.class */
public class InetAddressUtils {
    private InetAddressUtils() {
    }

    public static InetAddress getInetAddressByName(String str) throws UnknownHostException {
        return InetAddress.getByName(str);
    }
}
