package com.mopub.network;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/InetAddressUtils.class */
public class InetAddressUtils {

    /* renamed from: a */
    private static InetAddress f60294a;

    private InetAddressUtils() {
    }

    public static InetAddress getInetAddressByName(String str) throws UnknownHostException {
        InetAddress inetAddress = f60294a;
        return inetAddress != null ? inetAddress : InetAddress.getByName(str);
    }
}
