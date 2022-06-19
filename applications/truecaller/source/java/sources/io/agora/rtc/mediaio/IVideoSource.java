package io.agora.rtc.mediaio;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/IVideoSource.class */
public interface IVideoSource {
    int getBufferType();

    int getCaptureType();

    int getContentHint();

    void onDispose();

    boolean onInitialize(IVideoFrameConsumer iVideoFrameConsumer);

    boolean onStart();

    void onStop();
}
