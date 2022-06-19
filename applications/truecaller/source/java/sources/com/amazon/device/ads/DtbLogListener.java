package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbLogListener.class */
public interface DtbLogListener {
    String getTag();

    void postMessage(DTBLogLevel dTBLogLevel, String str);
}
