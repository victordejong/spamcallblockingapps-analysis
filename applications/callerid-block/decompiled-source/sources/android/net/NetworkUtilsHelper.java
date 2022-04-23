package android.net;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes-dex2jar.jar:android/net/NetworkUtilsHelper.class */
public class NetworkUtilsHelper {
    /* renamed from: a */
    public static InetAddress m15211a(InetAddress inetAddress, int i) {
        if (inetAddress != null) {
            byte[] address = inetAddress.getAddress();
            if (i < 0 || i > address.length * 8) {
                throw new RuntimeException("getNetworkPart - bad prefixLength");
            }
            int i2 = i / 8;
            byte b = (byte) (255 << (8 - (i % 8)));
            int i3 = i2;
            if (i2 < address.length) {
                address[i2] = (byte) (b & address[i2]);
                i3 = i2;
            }
            while (true) {
                i3++;
                if (i3 < address.length) {
                    address[i3] = (byte) 0;
                } else {
                    try {
                        return InetAddress.getByAddress(address);
                    } catch (UnknownHostException e) {
                        throw new RuntimeException("getNetworkPart error - " + e.toString());
                    }
                }
            }
        } else {
            throw new RuntimeException("getNetworkPart doesn't accept null address");
        }
    }

    /* renamed from: b */
    public static String m15210b(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return str;
        }
        StringBuilder sb = new StringBuilder(16);
        for (int i = 0; i < 4; i++) {
            try {
                if (split[i].length() > 3) {
                    return str;
                }
                sb.append(Integer.parseInt(split[i]));
                if (i < 3) {
                    sb.append('.');
                }
            } catch (NumberFormatException e) {
                return str;
            }
        }
        return sb.toString();
    }
}
