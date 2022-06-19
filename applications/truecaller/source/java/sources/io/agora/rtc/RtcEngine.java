package io.agora.rtc;

import android.content.Context;
import android.view.SurfaceView;
import android.view.TextureView;
import io.agora.rtc.audio.AudioRecordingConfiguration;
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.internal.EncryptionConfig;
import io.agora.rtc.internal.LastmileProbeConfig;
import io.agora.rtc.internal.RtcEngineImpl;
import io.agora.rtc.live.LiveInjectStreamConfig;
import io.agora.rtc.live.LiveTranscoding;
import io.agora.rtc.mediaio.IVideoSink;
import io.agora.rtc.mediaio.IVideoSource;
import io.agora.rtc.models.ChannelMediaOptions;
import io.agora.rtc.models.ClientRoleOptions;
import io.agora.rtc.models.ContentInspectConfig;
import io.agora.rtc.models.DataStreamConfig;
import io.agora.rtc.models.EchoTestConfiguration;
import io.agora.rtc.models.UserInfo;
import io.agora.rtc.proxy.LocalAccessPointConfiguration;
import io.agora.rtc.video.AgoraImage;
import io.agora.rtc.video.AgoraVideoFrame;
import io.agora.rtc.video.BeautyOptions;
import io.agora.rtc.video.CameraCapturerConfiguration;
import io.agora.rtc.video.ChannelMediaRelayConfiguration;
import io.agora.rtc.video.GLTextureView;
import io.agora.rtc.video.ViEAndroidGLES20;
import io.agora.rtc.video.ViETextureView;
import io.agora.rtc.video.VideoCanvas;
import io.agora.rtc.video.VideoEncoderConfiguration;
import io.agora.rtc.video.VirtualBackgroundSource;
import io.agora.rtc.video.WatermarkOptions;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/RtcEngine.class */
public abstract class RtcEngine {
    private static RtcEngineImpl mInstance;

    public static SurfaceView CreateRendererView(Context context) {
        if (context == null || !RtcEngineImpl.initializeNativeLibs()) {
            return null;
        }
        RtcEngineImpl.checkIfInUIThread("CreateRendererView");
        SurfaceView viEAndroidGLES20 = ViEAndroidGLES20.IsSupported(context) ? new ViEAndroidGLES20(context) : new SurfaceView(context);
        viEAndroidGLES20.setVisibility(0);
        return viEAndroidGLES20;
    }

    public static TextureView CreateTextureView(Context context) {
        if (context == null || !RtcEngineImpl.initializeNativeLibs()) {
            return null;
        }
        RtcEngineImpl.checkIfInUIThread("CreateTextureView");
        TextureView viETextureView = ViETextureView.IsSupported(context) ? new ViETextureView(context) : new GLTextureView(context);
        viETextureView.setVisibility(0);
        return viETextureView;
    }

    public static RtcEngine create(Context context, String str, IRtcEngineEventHandler iRtcEngineEventHandler) throws Exception {
        synchronized (RtcEngine.class) {
            if (context != null) {
                try {
                    if (RtcEngineImpl.initializeNativeLibs()) {
                        RtcEngineImpl rtcEngineImpl = mInstance;
                        if (rtcEngineImpl == null) {
                            mInstance = new RtcEngineImpl(context, str, iRtcEngineEventHandler);
                        } else {
                            rtcEngineImpl.reinitialize(context, str, iRtcEngineEventHandler);
                        }
                        return mInstance;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        }
    }

    public static RtcEngine create(RtcEngineConfig rtcEngineConfig) throws Exception {
        synchronized (RtcEngine.class) {
            if (rtcEngineConfig != null) {
                try {
                    if (rtcEngineConfig.mContext != null && RtcEngineImpl.initializeNativeLibs()) {
                        RtcEngineImpl rtcEngineImpl = mInstance;
                        if (rtcEngineImpl == null) {
                            mInstance = new RtcEngineImpl(rtcEngineConfig);
                        } else {
                            rtcEngineImpl.reinitialize(rtcEngineConfig.mContext, rtcEngineConfig.mAppId, rtcEngineConfig.mEventHandler);
                        }
                        return mInstance;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        }
    }

    public static void destroy() {
        synchronized (RtcEngine.class) {
            try {
                RtcEngineImpl rtcEngineImpl = mInstance;
                if (rtcEngineImpl == null) {
                    return;
                }
                rtcEngineImpl.doDestroy();
                mInstance = null;
                System.gc();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String getErrorDescription(int i) {
        return !RtcEngineImpl.initializeNativeLibs() ? "" : RtcEngineImpl.nativeGetErrorDescription(i);
    }

    @Deprecated
    public static String getMediaEngineVersion() {
        return !RtcEngineImpl.initializeNativeLibs() ? "" : RtcEngineImpl.nativeGetChatEngineVersion();
    }

    @Deprecated
    public static int getRecommendedEncoderType() {
        return DeviceUtils.getRecommendedEncoderType();
    }

    public static String getSdkVersion() {
        return !RtcEngineImpl.initializeNativeLibs() ? "" : RtcEngineImpl.nativeGetSdkVersion();
    }

    public void addHandler(IRtcEngineEventHandler iRtcEngineEventHandler) {
        mInstance.addHandler(iRtcEngineEventHandler);
    }

    public abstract int addInjectStreamUrl(String str, LiveInjectStreamConfig liveInjectStreamConfig);

    public abstract int addPublishStreamUrl(String str, boolean z);

    @Deprecated
    public abstract int addVideoWatermark(AgoraImage agoraImage);

    public abstract int addVideoWatermark(String str, WatermarkOptions watermarkOptions);

    public abstract int adjustAudioMixingPlayoutVolume(int i);

    public abstract int adjustAudioMixingPublishVolume(int i);

    public abstract int adjustAudioMixingVolume(int i);

    public abstract int adjustPlaybackSignalVolume(int i);

    public abstract int adjustRecordingSignalVolume(int i);

    public abstract int adjustUserPlaybackSignalVolume(int i, int i2);

    public abstract int clearVideoWatermarks();

    public abstract int complain(String str, String str2);

    public abstract int createDataStream(DataStreamConfig dataStreamConfig);

    public abstract int createDataStream(boolean z, boolean z2);

    public abstract RtcChannel createRtcChannel(String str);

    public abstract int disableAudio();

    public abstract int disableLastmileTest();

    public abstract int disableVideo();

    public abstract int enableAudio();

    @Deprecated
    public abstract int enableAudioQualityIndication(boolean z);

    public abstract int enableAudioVolumeIndication(int i, int i2, boolean z);

    public abstract int enableContentInspect(boolean z, ContentInspectConfig contentInspectConfig);

    public abstract int enableDeepLearningDenoise(boolean z);

    public abstract int enableDualStreamMode(boolean z);

    public abstract int enableEncryption(boolean z, EncryptionConfig encryptionConfig);

    public abstract int enableFaceDetection(boolean z);

    @Deprecated
    public abstract boolean enableHighPerfWifiMode(boolean z);

    public abstract int enableInEarMonitoring(boolean z);

    public abstract int enableLastmileTest();

    public abstract int enableLocalAudio(boolean z);

    public abstract int enableLocalVideo(boolean z);

    public abstract int enableRemoteSuperResolution(int i, boolean z);

    public abstract int enableSoundPositionIndication(boolean z);

    public abstract int enableVideo();

    public abstract int enableVirtualBackground(boolean z, VirtualBackgroundSource virtualBackgroundSource);

    @Deprecated
    public abstract int enableWebSdkInteroperability(boolean z);

    public abstract IAudioEffectManager getAudioEffectManager();

    public abstract int getAudioFileInfo(String str);

    public abstract int getAudioMixingCurrentPosition();

    @Deprecated
    public abstract int getAudioMixingDuration();

    public abstract int getAudioMixingPlayoutVolume();

    public abstract int getAudioMixingPublishVolume();

    public abstract int getAudioTrackCount();

    public abstract String getCallId();

    public abstract float getCameraMaxZoomFactor();

    public abstract int getConnectionState();

    public abstract long getNativeHandle();

    public abstract String getParameter(String str, String str2);

    public abstract int getUserInfoByUid(int i, UserInfo userInfo);

    public abstract int getUserInfoByUserAccount(String str, UserInfo userInfo);

    public abstract boolean isCameraAutoFocusFaceModeSupported();

    public abstract boolean isCameraExposurePositionSupported();

    public abstract boolean isCameraFocusSupported();

    public abstract boolean isCameraTorchSupported();

    public abstract boolean isCameraZoomSupported();

    public abstract boolean isSpeakerphoneEnabled();

    public abstract boolean isTextureEncodeSupported();

    public abstract int joinChannel(String str, String str2, String str3, int i);

    public abstract int joinChannel(String str, String str2, String str3, int i, ChannelMediaOptions channelMediaOptions);

    public abstract int joinChannelWithUserAccount(String str, String str2, String str3);

    public abstract int joinChannelWithUserAccount(String str, String str2, String str3, ChannelMediaOptions channelMediaOptions);

    public abstract int leaveChannel();

    @Deprecated
    public abstract void monitorBluetoothHeadsetEvent(boolean z);

    @Deprecated
    public abstract void monitorHeadsetEvent(boolean z);

    public abstract int muteAllRemoteAudioStreams(boolean z);

    public abstract int muteAllRemoteVideoStreams(boolean z);

    public abstract int muteLocalAudioStream(boolean z);

    public abstract int muteLocalVideoStream(boolean z);

    public abstract int muteRemoteAudioStream(int i, boolean z);

    public abstract int muteRemoteVideoStream(int i, boolean z);

    public abstract int pauseAllChannelMediaRelay();

    @Deprecated
    public abstract int pauseAudio();

    public abstract int pauseAudioMixing();

    public abstract int pullPlaybackAudioFrame(byte[] bArr, int i);

    @Deprecated
    public abstract int pushExternalAudioFrame(byte[] bArr, long j);

    public abstract int pushExternalAudioFrame(byte[] bArr, long j, int i, int i2, int i3, int i4);

    public abstract boolean pushExternalVideoFrame(AgoraVideoFrame agoraVideoFrame);

    public abstract int rate(String str, int i, String str2);

    public abstract int registerAudioFrameObserver(IAudioFrameObserver iAudioFrameObserver);

    public abstract int registerLocalUserAccount(String str, String str2);

    public abstract int registerMediaMetadataObserver(IMetadataObserver iMetadataObserver, int i);

    public abstract int registerVideoEncodedFrameObserver(IVideoEncodedFrameObserver iVideoEncodedFrameObserver);

    public abstract int registerVideoFrameObserver(IVideoFrameObserver iVideoFrameObserver);

    public abstract int releaseLogWriter();

    public void removeHandler(IRtcEngineEventHandler iRtcEngineEventHandler) {
        mInstance.removeHandler(iRtcEngineEventHandler);
    }

    public abstract int removeInjectStreamUrl(String str);

    public abstract int removePublishStreamUrl(String str);

    public abstract int renewToken(String str);

    public abstract int resumeAllChannelMediaRelay();

    @Deprecated
    public abstract int resumeAudio();

    public abstract int resumeAudioMixing();

    public abstract int selectAudioTrack(int i);

    public abstract int sendCustomReportMessage(String str, String str2, String str3, String str4, int i);

    public abstract int sendStreamMessage(int i, byte[] bArr);

    public abstract int setAVSyncSource(String str, int i);

    public abstract int setAudioEffectParameters(int i, int i2, int i3);

    public abstract int setAudioEffectPreset(int i);

    public abstract int setAudioMixingDualMonoMode(int i);

    public abstract int setAudioMixingPitch(int i);

    public abstract int setAudioMixingPlaybackSpeed(int i);

    public abstract int setAudioMixingPosition(int i);

    public abstract int setAudioProfile(int i, int i2);

    public abstract int setBeautyEffectOptions(boolean z, BeautyOptions beautyOptions);

    public abstract int setCameraAutoFocusFaceModeEnabled(boolean z);

    public abstract int setCameraCapturerConfiguration(CameraCapturerConfiguration cameraCapturerConfiguration);

    public abstract int setCameraExposurePosition(float f, float f2);

    public abstract int setCameraFocusPositionInPreview(float f, float f2);

    public abstract int setCameraTorchOn(boolean z);

    public abstract int setCameraZoomFactor(float f);

    public abstract int setChannelProfile(int i);

    public abstract int setClientRole(int i);

    public abstract int setClientRole(int i, ClientRoleOptions clientRoleOptions);

    public abstract int setCloudProxy(int i);

    public abstract int setDefaultAudioRoutetoSpeakerphone(boolean z);

    public abstract int setDefaultMuteAllRemoteAudioStreams(boolean z);

    public abstract int setDefaultMuteAllRemoteVideoStreams(boolean z);

    public abstract int setEnableSpeakerphone(boolean z);

    @Deprecated
    public abstract int setEncryptionMode(String str);

    @Deprecated
    public abstract int setEncryptionSecret(String str);

    public abstract int setExternalAudioSink(boolean z, int i, int i2);

    public abstract int setExternalAudioSource(boolean z, int i, int i2);

    public abstract int setExternalAudioSourceVolume(int i, int i2);

    public abstract void setExternalVideoSource(boolean z, boolean z2, boolean z3);

    @Deprecated
    public abstract int setHighQualityAudioParameters(boolean z, boolean z2, boolean z3);

    public abstract int setInEarMonitoringVolume(int i);

    public abstract int setLiveTranscoding(LiveTranscoding liveTranscoding);

    public abstract int setLocalAccessPoint(LocalAccessPointConfiguration localAccessPointConfiguration);

    public abstract int setLocalPublishFallbackOption(int i);

    @Deprecated
    public abstract int setLocalRenderMode(int i);

    public abstract int setLocalRenderMode(int i, int i2);

    @Deprecated
    public abstract int setLocalVideoMirrorMode(int i);

    public abstract int setLocalVideoRenderer(IVideoSink iVideoSink);

    @Deprecated
    public abstract int setLocalVoiceChanger(int i);

    public abstract int setLocalVoiceEqualization(int i, int i2);

    public abstract int setLocalVoicePitch(double d);

    public abstract int setLocalVoiceReverb(int i, int i2);

    @Deprecated
    public abstract int setLocalVoiceReverbPreset(int i);

    public abstract int setLogFile(String str);

    public abstract int setLogFileSize(int i);

    public abstract int setLogFilter(int i);

    public abstract int setLogWriter(ILogWriter iLogWriter);

    public abstract int setMixedAudioFrameParameters(int i, int i2);

    public abstract int setParameters(String str);

    public abstract int setPlaybackAudioFrameParameters(int i, int i2, int i3, int i4);

    @Deprecated
    public abstract void setPreferHeadset(boolean z);

    public abstract int setRecordingAudioFrameParameters(int i, int i2, int i3, int i4);

    public abstract int setRemoteDefaultVideoStreamType(int i);

    @Deprecated
    public abstract int setRemoteRenderMode(int i, int i2);

    public abstract int setRemoteRenderMode(int i, int i2, int i3);

    public abstract int setRemoteSubscribeFallbackOption(int i);

    public abstract int setRemoteUserPriority(int i, int i2);

    public abstract int setRemoteVideoRenderer(int i, IVideoSink iVideoSink);

    public abstract int setRemoteVideoStreamType(int i, int i2);

    public abstract int setRemoteVoicePosition(int i, double d, double d2);

    public abstract int setVideoEncoderConfiguration(VideoEncoderConfiguration videoEncoderConfiguration);

    @Deprecated
    public abstract int setVideoProfile(int i, int i2, int i3, int i4);

    @Deprecated
    public abstract int setVideoProfile(int i, boolean z);

    @Deprecated
    public abstract int setVideoQualityParameters(boolean z);

    public abstract int setVideoSource(IVideoSource iVideoSource);

    public abstract int setVoiceBeautifierParameters(int i, int i2, int i3);

    public abstract int setVoiceBeautifierPreset(int i);

    public abstract int setVoiceConversionPreset(int i);

    public abstract int setupLocalVideo(VideoCanvas videoCanvas);

    public abstract int setupRemoteVideo(VideoCanvas videoCanvas);

    @Deprecated
    public abstract int startAudioMixing(String str, boolean z, boolean z2, int i);

    public abstract int startAudioMixing(String str, boolean z, boolean z2, int i, int i2);

    public abstract int startAudioRecording(AudioRecordingConfiguration audioRecordingConfiguration);

    @Deprecated
    public abstract int startAudioRecording(String str, int i);

    @Deprecated
    public abstract int startAudioRecording(String str, int i, int i2);

    public abstract int startChannelMediaRelay(ChannelMediaRelayConfiguration channelMediaRelayConfiguration);

    public abstract int startDumpVideoReceiveTrack(int i, String str);

    @Deprecated
    public abstract int startEchoTest();

    public abstract int startEchoTest(int i);

    public abstract int startEchoTest(EchoTestConfiguration echoTestConfiguration);

    public abstract int startLastmileProbeTest(LastmileProbeConfig lastmileProbeConfig);

    public abstract int startPreview();

    public abstract int startRtmpStreamWithTranscoding(String str, LiveTranscoding liveTranscoding);

    public abstract int startRtmpStreamWithoutTranscoding(String str);

    public abstract int stopAudioMixing();

    public abstract int stopAudioRecording();

    public abstract int stopChannelMediaRelay();

    public abstract int stopDumpVideoReceiveTrack();

    public abstract int stopEchoTest();

    public abstract int stopLastmileProbeTest();

    public abstract int stopPreview();

    public abstract int stopRtmpStream(String str);

    public abstract int switchCamera();

    public abstract int switchChannel(String str, String str2);

    public abstract int switchChannel(String str, String str2, ChannelMediaOptions channelMediaOptions);

    public abstract int takeSnapshot(String str, int i, String str2);

    public abstract int updateChannelMediaRelay(ChannelMediaRelayConfiguration channelMediaRelayConfiguration);

    public abstract int updateRtmpTranscoding(LiveTranscoding liveTranscoding);

    public abstract String uploadLogFile();

    @Deprecated
    public abstract int useExternalAudioDevice();
}
