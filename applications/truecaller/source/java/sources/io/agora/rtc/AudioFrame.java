package io.agora.rtc;

import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/AudioFrame.class */
public class AudioFrame {
    public int bytesPerSample;
    public int channels;
    public int numOfSamples;
    public ByteBuffer samples;
    public int samplesPerSec;

    public AudioFrame(ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
        this.samples = byteBuffer;
        this.numOfSamples = i;
        this.bytesPerSample = i2;
        this.channels = i3;
        this.samplesPerSec = i4;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AgoraAudioFrame{samples=");
        m8728C.append(this.samples);
        m8728C.append(", numOfSamples=");
        m8728C.append(this.numOfSamples);
        m8728C.append(", bytesPerSample=");
        m8728C.append(this.bytesPerSample);
        m8728C.append(", channels=");
        m8728C.append(this.channels);
        m8728C.append(", samplesPerSec=");
        return C22128a.m8701I2(m8728C, this.samplesPerSec, '}');
    }
}
