package com.amazonaws.util;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Protocol;
import java.net.URI;
import java.net.URISyntaxException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/RuntimeHttpUtils.class */
public class RuntimeHttpUtils {
    public static URI a(String str, ClientConfiguration clientConfiguration) {
        if (clientConfiguration != null) {
            return a(str, clientConfiguration.getProtocol());
        }
        throw new IllegalArgumentException("ClientConfiguration cannot be null");
    }

    private static URI a(String str, Protocol protocol) {
        if (str != null) {
            String str2 = str;
            if (!str.contains("://")) {
                str2 = protocol.toString() + "://" + str;
            }
            try {
                return new URI(str2);
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            throw new IllegalArgumentException("endpoint cannot be null");
        }
    }
}
