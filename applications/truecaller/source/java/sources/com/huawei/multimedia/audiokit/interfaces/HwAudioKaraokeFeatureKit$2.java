package com.huawei.multimedia.audiokit.interfaces;

import android.os.IBinder;
import com.huawei.multimedia.audiokit.utils.LogUtils;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$2.class */
public class HwAudioKaraokeFeatureKit$2 implements IBinder.DeathRecipient {
    public final /* synthetic */ HwAudioKaraokeFeatureKit this$0;

    public HwAudioKaraokeFeatureKit$2(HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit) {
        this.this$0 = hwAudioKaraokeFeatureKit;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        LogUtils.error("HwAudioKit.HwAudioKaraokeFeatureKit", "binderDied");
        HwAudioKaraokeFeatureKit.access$700(this.this$0).unlinkToDeath(HwAudioKaraokeFeatureKit.access$600(this.this$0), 0);
        HwAudioKaraokeFeatureKit.access$200(this.this$0).onCallBack(1003);
        HwAudioKaraokeFeatureKit.access$702(this.this$0, (IBinder) null);
    }
}
