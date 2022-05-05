package com.mopub.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/InetAddressUtils.class */
public class InetAddressUtils {
    @NonNull
    public static InetAddress getInetAddressByName(@Nullable String str) throws UnknownHostException {
        return InetAddress.getByName(str);
    }
}
