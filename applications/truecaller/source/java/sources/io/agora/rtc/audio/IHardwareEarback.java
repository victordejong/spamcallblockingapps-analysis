package io.agora.rtc.audio;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/IHardwareEarback.class */
public interface IHardwareEarback {
    void destroy();

    int enableEarbackFeature(boolean z);

    void initialize();

    boolean isHardwareEarbackSupported();

    int setHardwareEarbackVolume(int i);
}
