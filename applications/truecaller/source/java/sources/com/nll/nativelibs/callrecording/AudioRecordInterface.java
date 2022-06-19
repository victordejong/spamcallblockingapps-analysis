package com.nll.nativelibs.callrecording;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/nll/nativelibs/callrecording/AudioRecordInterface.class */
public interface AudioRecordInterface {
    int getRecordingState();

    int getState();

    int read(ByteBuffer byteBuffer, int i);

    int read(byte[] bArr, int i, int i2);

    int read(short[] sArr, int i, int i2);

    void release();

    void startRecording();

    void stop() throws IllegalStateException;
}
