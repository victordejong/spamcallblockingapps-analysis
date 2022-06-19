package com.allinone.callerid.callrecorder.util;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callrecorder/util/AgcNsUtils.class */
public class AgcNsUtils {
    private int agcInstance;
    private WebRtcAgcConfig config;
    private boolean mIsInit = false;
    private int nsHandler = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callrecorder/util/AgcNsUtils$WebRtcAgcConfig.class */
    public static class WebRtcAgcConfig {
        private int compressionGaindB;
        private int limiterEnable;
        private int targetLevelDbfs;

        private WebRtcAgcConfig() {
        }
    }

    static {
        try {
            System.loadLibrary("yh_webrtc_agc_ns");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public AgcNsUtils() {
        this.agcInstance = -1;
        this.config = null;
        this.config = new WebRtcAgcConfig();
        this.agcInstance = create();
    }

    public native int addFarend(int i, short[] sArr, int i2);

    public native int addMic(int i, short[] sArr, int i2, int i3);

    public int agcProcess(short[] sArr, int i, int i2, short[] sArr2, int i3, int i4, int i5, int i6) {
        return process(this.agcInstance, sArr, i, i2, sArr2, i3, i4, i5, i6);
    }

    public void close() {
        if (this.mIsInit) {
            free(this.agcInstance);
            this.agcInstance = -1;
            this.mIsInit = false;
        }
    }

    public native int create();

    public native int free(int i);

    public native int getAddFarendError();

    public native int getConfig();

    public native int init(int i, int i2, int i3, int i4, int i5);

    public native int nsCreate();

    public native int nsFree(int i);

    public native int nsInit(int i, int i2);

    public native int nsProcess(int i, short[] sArr, short[] sArr2, short[] sArr3, short[] sArr4);

    public native int nsSetPolicy(int i, int i2);

    public native int nsxCreate();

    public native int nsxFree(int i);

    public native int nsxInit(int i, int i2);

    public native int nsxProcess(int i, short[] sArr, short[] sArr2, short[] sArr3, short[] sArr4);

    public native int nsxSetPolicy(int i, int i2);

    public AgcNsUtils prepare() {
        if (this.mIsInit) {
            close();
            this.agcInstance = create();
        }
        init(this.agcInstance, 0, 255, 3, 8000);
        this.mIsInit = true;
        setConfig(this.agcInstance, this.config);
        return this;
    }

    public native int process(int i, short[] sArr, int i2, int i3, short[] sArr2, int i4, int i5, int i6, int i7);

    public AgcNsUtils setAgcConfig(int i, int i2, int i3) {
        this.config.targetLevelDbfs = i;
        this.config.compressionGaindB = i2;
        this.config.limiterEnable = i3;
        return this;
    }

    public native int setConfig(int i, WebRtcAgcConfig webRtcAgcConfig);

    public native int virtualMic();
}
