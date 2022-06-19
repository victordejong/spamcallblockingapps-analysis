package io.agora.rtc.live;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/live/LiveInjectStreamConfig.class */
public class LiveInjectStreamConfig {
    public int width = 0;
    public int height = 0;
    public int videoGop = 30;
    public int videoFramerate = 15;
    public int videoBitrate = 400;
    public AudioSampleRateType audioSampleRate = AudioSampleRateType.TYPE_44100;
    public int audioBitrate = 48;
    public int audioChannels = 1;

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType.class */
    public enum AudioSampleRateType {
        TYPE_32000(32000),
        TYPE_44100(44100),
        TYPE_48000(48000);
        
        private int value;

        AudioSampleRateType(int i) {
            this.value = i;
        }

        public static int getValue(AudioSampleRateType audioSampleRateType) {
            return audioSampleRateType.value;
        }
    }
}
