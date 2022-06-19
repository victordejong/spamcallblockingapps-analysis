package io.agora.rtc.internal;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingListener.class */
public interface AudioRoutingListener {
    void onAudioBtProfileChanged(int i);

    void onAudioRoutingChanged(int i);

    void onAudioRoutingDestroyed();

    void onAudioRoutingError(int i);
}
