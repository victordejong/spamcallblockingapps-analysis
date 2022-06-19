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

    /* renamed from: a */
    public static final String f25208a = "TelecomAdapter";

    /* renamed from: c */
    private static TelecomAdapter f25209c;

    /* renamed from: b */
    public InCallService f25210b;

    private TelecomAdapter() {
    }

    /* renamed from: a */
    public static String m28964a(Call call) {
        if (call == null) {
            return null;
        }
        if (call.getDetails().getGatewayInfo() != null) {
            return call.getDetails().getGatewayInfo().getOriginalAddress().getSchemeSpecificPart();
        }
        if (m28958f(call) != null) {
            return m28958f(call).getSchemeSpecificPart();
        }
        return null;
    }

    /* renamed from: a */
    public static void m28965a(Context context) {
        Intent intent = new Intent("android.intent.action.DIAL");
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        } else {
            KeyguardManager keyguardManager = (KeyguardManager) CallAppApplication.get().m31868a("keyguard");
            if (Build.VERSION.SDK_INT >= 26 && keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                keyguardManager.requestDismissKeyguard((Activity) context, null);
            }
        }
        intent.putExtra("add_call_mode", true);
        try {
            CLog.m27606a(f25208a);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            CLog.m27603a(f25208a, "Activity for adding calls isn't found.", e);
        }
    }

    /* renamed from: f */
    private static Uri m28958f(Call call) {
        if (call == null) {
            return null;
        }
        return call.getDetails().getHandle();
    }

    public static TelecomAdapter getInstance() {
        if (f25209c == null) {
            f25209c = new TelecomAdapter();
        }
        return f25209c;
    }

    /* renamed from: a */
    public final void m28966a(BluetoothDevice bluetoothDevice) {
        InCallService inCallService = this.f25210b;
        if (inCallService != null) {
            inCallService.requestBluetoothAudio(bluetoothDevice);
        } else {
            CLog.m27606a(f25208a);
        }
    }

    /* renamed from: a */
    public final void m28963a(Call call, char c) {
        if (call != null) {
            call.playDtmfTone(c);
            return;
        }
        String str = f25208a;
        new StringBuilder("error playDtmfTone, call not in call list ").append(m28964a(call));
        CLog.m27606a(str);
    }

    /* renamed from: b */
    public final void m28962b(Call call) {
        if (call != null) {
            call.disconnect();
            return;
        }
        String str = f25208a;
        new StringBuilder("error disconnectCall, call not in call list ").append(m28964a(call));
        CLog.m27606a(str);
    }

    /* renamed from: c */
    public final void m28961c(Call call) {
        if (call != null) {
            call.hold();
            return;
        }
        String str = f25208a;
        new StringBuilder("error holdCall, call not in call list ").append(m28964a(call));
        CLog.m27606a(str);
    }

    /* renamed from: d */
    public final void m28960d(Call call) {
        if (call != null) {
            call.unhold();
            return;
        }
        String str = f25208a;
        new StringBuilder("error unholdCall, call not in call list ").append(m28964a(call));
        CLog.m27606a(str);
    }

    /* renamed from: e */
    public final void m28959e(Call call) {
        if (call != null) {
            call.stopDtmfTone();
            return;
        }
        String str = f25208a;
        new StringBuilder("error stopDtmfTone, call not in call list ").append(m28964a(call));
        CLog.m27606a(str);
    }

    public final void setAudioRoute(int i) {
        InCallService inCallService = this.f25210b;
        if (inCallService != null) {
            inCallService.setAudioRoute(i);
        } else {
            CLog.m27606a(f25208a);
        }
    }

    public final void setInCallService(InCallService inCallService) {
        this.f25210b = inCallService;
    }
}
