package io.agora.rtc.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/RtcEngineImpl$1.class */
public class RtcEngineImpl$1 extends BroadcastReceiver {
    public final /* synthetic */ RtcEngineImpl this$0;

    public RtcEngineImpl$1(RtcEngineImpl rtcEngineImpl) {
        this.this$0 = rtcEngineImpl;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action) || "android.hardware.usb.action.USB_ACCESSORY_ATTACHED".equals(action)) {
            Logging.m3706i("RtcEngine", "device attached");
            RtcEngineImpl.access$000(this.this$0);
        }
        if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action) || "android.hardware.usb.action.USB_ACCESSORY_DETACHED".equals(action)) {
            Logging.m3706i("RtcEngine", "device detached");
            RtcEngineImpl.access$000(this.this$0);
        }
    }
}
