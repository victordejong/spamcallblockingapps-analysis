package com.mopub.network;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/InetAddressUtils.class */
public class InetAddressUtils {

    /* renamed from: a  reason: collision with root package name */
    private static InetAddress f34726a;

    private InetAddressUtils() {
    }

    public static InetAddress getInetAddressByName(String str) throws UnknownHostException {
        InetAddress inetAddress = f34726a;
        return inetAddress != null ? inetAddress : InetAddress.getByName(str);
    }
}
