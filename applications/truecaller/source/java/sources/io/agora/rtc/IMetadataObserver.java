package io.agora.rtc;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/IMetadataObserver.class */
public interface IMetadataObserver {
    public static final int UNKNOWN_METADATA = -1;
    public static final int VIDEO_METADATA = 0;

    int getMaxMetadataSize();

    void onMetadataReceived(byte[] bArr, int i, long j);

    byte[] onReadyToSendMetadata(long j);
}
