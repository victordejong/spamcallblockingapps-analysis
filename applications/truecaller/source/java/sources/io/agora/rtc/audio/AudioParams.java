package io.agora.rtc.audio;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/AudioParams.class */
public class AudioParams {
    public int channel;
    public int mode;
    public int sampleRate;
    public int samplesPerCall;

    public AudioParams(int i, int i2, int i3, int i4) {
        this.sampleRate = 16000;
        this.channel = 1;
        this.mode = 0;
        this.samplesPerCall = 1024;
        this.sampleRate = i;
        this.channel = i2;
        this.mode = i3;
        this.samplesPerCall = i4;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AudioParams{sampleRate=");
        m8728C.append(this.sampleRate);
        m8728C.append(", channel=");
        m8728C.append(this.channel);
        m8728C.append(", mode=");
        m8728C.append(this.mode);
        m8728C.append(", samplesPerCall=");
        return C22128a.m8701I2(m8728C, this.samplesPerCall, '}');
    }
}
