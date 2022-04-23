package com.aotter.net.volley;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.InetAddress;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/InetAddressUtils.class */
public class InetAddressUtils {
    @NonNull
    public static InetAddress getInetAddressByName(@Nullable String str) {
        return InetAddress.getByName(str);
    }
}
