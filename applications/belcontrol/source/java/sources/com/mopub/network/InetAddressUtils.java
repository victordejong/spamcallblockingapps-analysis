package com.mopub.network;

import java.net.InetAddress;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/InetAddressUtils.class */
public class InetAddressUtils {

    /* renamed from: a */
    public static InetAddress f5396a;

    private InetAddressUtils() {
    }

    public static InetAddress getInetAddressByName(String str) {
        InetAddress inetAddress = f5396a;
        return inetAddress != null ? inetAddress : InetAddress.getByName(str);
    }
}
