package io.agora.common;

import com.tenor.android.core.constant.StringConstant;
import io.agora.rtm.internal.RtmSdkContext;
import java.io.UnsupportedEncodingException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/common/AgoraServiceJNI.class */
public class AgoraServiceJNI {
    private static final String TAG = "AgoraServiceJNI";
    private static boolean isNativeInitialized = false;

    static {
        ensureNativeInitialized();
    }

    public static native long createRtmService(String str, String str2, String str3, String str4, String str5, String str6, String str7);

    public static native void deleteCharArray(long j);

    public static final native void deleteLongLongPointer(long j);

    public static native void deletePointerArray(long j);

    public static native void deleteRtmService(long j);

    public static final native long dereferenceLongLongPointer(long j);

    public static boolean ensureNativeInitialized() {
        if (!isNativeInitialized) {
            System.loadLibrary(RtmSdkContext.getLibraryName());
            isNativeInitialized = nativeClassInit() == 0;
        }
        return isNativeInitialized;
    }

    public static native Byte getCharArrayElement(long j, int i);

    public static String getLocalHost() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.getName().startsWith("usb")) {
                    for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                        String inetAddressToIpAddress = inetAddressToIpAddress(inetAddress);
                        if (inetAddressToIpAddress != null && !inetAddressToIpAddress.isEmpty()) {
                            return inetAddressToIpAddress;
                        }
                    }
                    continue;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static String[] getLocalHostList() {
        try {
            ArrayList<NetworkInterface> list = Collections.list(NetworkInterface.getNetworkInterfaces());
            ArrayList arrayList = new ArrayList();
            for (NetworkInterface networkInterface : list) {
                if (!networkInterface.getName().startsWith("usb")) {
                    for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                        String inetAddressToIpAddress = inetAddressToIpAddress(inetAddress);
                        if (inetAddressToIpAddress != null) {
                            arrayList.add(inetAddressToIpAddress);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            String[] strArr = new String[arrayList.size()];
            int i = 0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                strArr[i] = (String) it.next();
                i++;
            }
            return strArr;
        } catch (Exception e) {
            return null;
        }
    }

    public static native long getPointerArrayElement(long j, int i);

    public static String getRandomUUID() {
        return UUID.randomUUID().toString().replace(StringConstant.DASH, "").toUpperCase();
    }

    private static String inetAddressToIpAddress(InetAddress inetAddress) {
        if (!inetAddress.isLoopbackAddress()) {
            if (inetAddress instanceof Inet4Address) {
                return ((Inet4Address) inetAddress).getHostAddress();
            }
            boolean z = inetAddress instanceof Inet6Address;
            return null;
        }
        return null;
    }

    private static native int nativeClassDestroy();

    private static native int nativeClassInit();

    public static native String nativeGetSdkVersion();

    public static native int nativeLog(int i, String str);

    public static native long newCharArray(int i);

    public static final native long newLongLongPointer();

    public static native long newPointerArray(int i);

    public static native void setCharArrayElement(long j, int i, byte b);

    public static native void setPointerArrayElement(long j, int i, long j2);

    public static byte[] stringToUtf8(String str) {
        if (str != null) {
            try {
                return str.getBytes(StringConstant.UTF8);
            } catch (UnsupportedEncodingException e) {
                String str2 = TAG;
                StringBuilder m8728C = C22128a.m8728C("failed to encode string to UTF-8: ");
                m8728C.append(e.getMessage());
                Logging.m3718e(str2, m8728C.toString());
                return null;
            }
        }
        return null;
    }

    public static String utf8ToString(byte[] bArr) {
        if (bArr != null) {
            try {
                return new String(bArr, StringConstant.UTF8);
            } catch (UnsupportedEncodingException e) {
                String str = TAG;
                StringBuilder m8728C = C22128a.m8728C("failed to construct a string from UTF-8: ");
                m8728C.append(e.getMessage());
                Logging.m3718e(str, m8728C.toString());
                return null;
            }
        }
        return null;
    }
}
