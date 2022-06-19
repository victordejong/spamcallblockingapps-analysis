package io.agora.rtc;

import io.agora.rtc.IRtcEngineEventHandler;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/IRtcChannelEventHandler.class */
public abstract class IRtcChannelEventHandler {
    public void onActiveSpeaker(RtcChannel rtcChannel, int i) {
    }

    public void onAudioPublishStateChanged(RtcChannel rtcChannel, int i, int i2, int i3) {
    }

    public void onAudioSubscribeStateChanged(RtcChannel rtcChannel, int i, int i2, int i3, int i4) {
    }

    public void onChannelError(RtcChannel rtcChannel, int i) {
    }

    public void onChannelMediaRelayEvent(RtcChannel rtcChannel, int i) {
    }

    public void onChannelMediaRelayStateChanged(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onChannelWarning(RtcChannel rtcChannel, int i) {
    }

    public void onClientRoleChanged(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onConnectionLost(RtcChannel rtcChannel) {
    }

    public void onConnectionStateChanged(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onJoinChannelSuccess(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onLeaveChannel(RtcChannel rtcChannel, IRtcEngineEventHandler.RtcStats rtcStats) {
    }

    public void onLocalPublishFallbackToAudioOnly(RtcChannel rtcChannel, boolean z) {
    }

    public void onNetworkQuality(RtcChannel rtcChannel, int i, int i2, int i3) {
    }

    public void onRejoinChannelSuccess(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onRemoteAudioStateChanged(RtcChannel rtcChannel, int i, int i2, int i3, int i4) {
    }

    public void onRemoteAudioStats(RtcChannel rtcChannel, IRtcEngineEventHandler.RemoteAudioStats remoteAudioStats) {
    }

    public void onRemoteSubscribeFallbackToAudioOnly(RtcChannel rtcChannel, int i, boolean z) {
    }

    public void onRemoteVideoStateChanged(RtcChannel rtcChannel, int i, int i2, int i3, int i4) {
    }

    public void onRemoteVideoStats(RtcChannel rtcChannel, IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats) {
    }

    public void onRequestToken(RtcChannel rtcChannel) {
    }

    public void onRtcStats(RtcChannel rtcChannel, IRtcEngineEventHandler.RtcStats rtcStats) {
    }

    public void onRtmpStreamingEvent(RtcChannel rtcChannel, String str, int i) {
    }

    public void onRtmpStreamingStateChanged(RtcChannel rtcChannel, String str, int i, int i2) {
    }

    public void onStreamInjectedStatus(RtcChannel rtcChannel, String str, int i, int i2) {
    }

    public void onStreamMessage(RtcChannel rtcChannel, int i, int i2, byte[] bArr) {
    }

    public void onStreamMessageError(RtcChannel rtcChannel, int i, int i2, int i3, int i4, int i5) {
    }

    public void onTokenPrivilegeWillExpire(RtcChannel rtcChannel, String str) {
    }

    public void onTranscodingUpdated(RtcChannel rtcChannel) {
    }

    public void onUserJoined(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onUserOffline(RtcChannel rtcChannel, int i, int i2) {
    }

    public void onUserSuperResolutionEnabled(RtcChannel rtcChannel, int i, boolean z, int i2) {
    }

    public void onVideoPublishStateChanged(RtcChannel rtcChannel, int i, int i2, int i3) {
    }

    public void onVideoSizeChanged(RtcChannel rtcChannel, int i, int i2, int i3, int i4) {
    }

    public void onVideoSubscribeStateChanged(RtcChannel rtcChannel, int i, int i2, int i3, int i4) {
    }
}
