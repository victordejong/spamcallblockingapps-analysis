package io.agora.rtc.audio;

import io.agora.rtc.internal.Logging;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/HuaweiHardwareEarback$1.class */
public class HuaweiHardwareEarback$1 implements InvocationHandler {
    public final /* synthetic */ HuaweiHardwareEarback this$0;

    public HuaweiHardwareEarback$1(HuaweiHardwareEarback huaweiHardwareEarback) {
        this.this$0 = huaweiHardwareEarback;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("onResult")) {
            int intValue = ((Integer) objArr[0]).intValue();
            if (intValue == 0) {
                Logging.m3706i("HuaweiHardwareEarback", "IAudioKitCallback: HwAudioKit init success");
                return null;
            } else if (intValue == 2) {
                Logging.m3706i("HuaweiHardwareEarback", "IAudioKitCallback: audio kit not installed");
                return null;
            } else if (intValue == 1000) {
                HuaweiHardwareEarback.access$002(this.this$0, true);
                Logging.m3706i("HuaweiHardwareEarback", "IAudioKitCallback: HwAudioKaraokeFeatureKit init success ");
                return null;
            } else {
                Logging.m3709e("HuaweiHardwareEarback", "IAudioKitCallback: onResult error number " + intValue);
                return null;
            }
        }
        return null;
    }
}
