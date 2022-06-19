package com.huawei.multimedia.audiokit.interfaces;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature;
import com.huawei.multimedia.audiokit.utils.LogUtils;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1.class */
public class HwAudioKaraokeFeatureKit$1 implements ServiceConnection {
    public final /* synthetic */ HwAudioKaraokeFeatureKit this$0;

    public HwAudioKaraokeFeatureKit$1(HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit) {
        this.this$0 = hwAudioKaraokeFeatureKit;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        LogUtils.info("HwAudioKit.HwAudioKaraokeFeatureKit", "onServiceConnected");
        HwAudioKaraokeFeatureKit.access$002(this.this$0, IHwAudioKaraokeFeature.Stub.asInterface(iBinder));
        if (HwAudioKaraokeFeatureKit.access$000(this.this$0) != null) {
            HwAudioKaraokeFeatureKit.access$102(this.this$0, true);
            HwAudioKaraokeFeatureKit.access$200(this.this$0).onCallBack(1000);
            HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = this.this$0;
            HwAudioKaraokeFeatureKit.access$400(hwAudioKaraokeFeatureKit, HwAudioKaraokeFeatureKit.access$300(hwAudioKaraokeFeatureKit).getPackageName());
            HwAudioKaraokeFeatureKit.access$500(this.this$0, iBinder);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        LogUtils.info("HwAudioKit.HwAudioKaraokeFeatureKit", "onServiceDisconnected");
        HwAudioKaraokeFeatureKit.access$102(this.this$0, false);
        if (HwAudioKaraokeFeatureKit.access$200(this.this$0) != null) {
            HwAudioKaraokeFeatureKit.access$200(this.this$0).onCallBack(1001);
        }
    }
}
