package com.callapp.contacts.inCallService;

import android.app.Activity;
import android.app.KeyguardManager;
import android.bluetooth.BluetoothDevice;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.telecom.Call;
import android.telecom.InCallService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/TelecomAdapter.class */
public final class TelecomAdapter {

    /* renamed from: a  reason: collision with root package name */
    public static final String f14425a = "TelecomAdapter";

    /* renamed from: c  reason: collision with root package name */
    private static TelecomAdapter f14426c;

    /* renamed from: b  reason: collision with root package name */
    public InCallService f14427b;

    private TelecomAdapter() {
    }

    public static String a(Call call) {
        if (call == null) {
            return null;
        }
        if (call.getDetails().getGatewayInfo() != null) {
            return call.getDetails().getGatewayInfo().getOriginalAddress().getSchemeSpecificPart();
        }
        if (f(call) == null) {
            return null;
        }
        return f(call).getSchemeSpecificPart();
    }

    public static void a(Context context) {
        Intent intent = new Intent("android.intent.action.DIAL");
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        } else {
            KeyguardManager keyguardManager = (KeyguardManager) CallAppApplication.get().a("keyguard");
            if (Build.VERSION.SDK_INT >= 26 && keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                keyguardManager.requestDismissKeyguard((Activity) context, null);
            }
        }
        intent.putExtra("add_call_mode", true);
        try {
            CLog.a(f14425a);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            CLog.a(f14425a, "Activity for adding calls isn't found.", e);
        }
    }

    private static Uri f(Call call) {
        if (call == null) {
            return null;
        }
        return call.getDetails().getHandle();
    }

    public static TelecomAdapter getInstance() {
        if (f14426c == null) {
            f14426c = new TelecomAdapter();
        }
        return f14426c;
    }

    public final void a(BluetoothDevice bluetoothDevice) {
        InCallService inCallService = this.f14427b;
        if (inCallService != null) {
            inCallService.requestBluetoothAudio(bluetoothDevice);
        } else {
            CLog.a(f14425a);
        }
    }

    public final void a(Call call, char c2) {
        if (call != null) {
            call.playDtmfTone(c2);
            return;
        }
        String str = f14425a;
        new StringBuilder("error playDtmfTone, call not in call list ").append(a(call));
        CLog.a(str);
    }

    public final void b(Call call) {
        if (call != null) {
            call.disconnect();
            return;
        }
        String str = f14425a;
        new StringBuilder("error disconnectCall, call not in call list ").append(a(call));
        CLog.a(str);
    }

    public final void c(Call call) {
        if (call != null) {
            call.hold();
            return;
        }
        String str = f14425a;
        new StringBuilder("error holdCall, call not in call list ").append(a(call));
        CLog.a(str);
    }

    public final void d(Call call) {
        if (call != null) {
            call.unhold();
            return;
        }
        String str = f14425a;
        new StringBuilder("error unholdCall, call not in call list ").append(a(call));
        CLog.a(str);
    }

    public final void e(Call call) {
        if (call != null) {
            call.stopDtmfTone();
            return;
        }
        String str = f14425a;
        new StringBuilder("error stopDtmfTone, call not in call list ").append(a(call));
        CLog.a(str);
    }

    public final void setAudioRoute(int i) {
        InCallService inCallService = this.f14427b;
        if (inCallService != null) {
            inCallService.setAudioRoute(i);
        } else {
            CLog.a(f14425a);
        }
    }

    public final void setInCallService(InCallService inCallService) {
        this.f14427b = inCallService;
    }
}
