package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.content.ComponentName;
import android.content.Intent;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.service.FloatingWidgetService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserver */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver.class */
public class CallAppChatHeadLifecycleObserver implements AbstractC1262o {

    /* renamed from: b */
    private static int f29142b;

    /* renamed from: a */
    public String f29143a;

    /* renamed from: a */
    public static void m26495a() {
        m26494a(2);
    }

    /* renamed from: a */
    public static void m26494a(int i) {
        CallData lastCall;
        if (!PhoneManager.get().isDefaultPhoneApp() || !Activities.m27641e()) {
            return;
        }
        if (f29142b == i && i != 2) {
            return;
        }
        f29142b = i;
        try {
            CallAppApplication.get().startService(getStartFloatingWidgetServiceIntent(i));
        } catch (IllegalStateException e) {
            if (i != 1 || (lastCall = PhoneStateManager.get().getLastCall()) == null) {
                return;
            }
            Intent component = new Intent("com.callapp.contacts.ACTION_START_CALL_NOTIFICATION").setComponent(new ComponentName(CallAppApplication.get(), CallAppService.class));
            component.putExtra(Constants.EXTRA_PHONE_NUMBER, lastCall.getNumber().getRawNumber());
            component.putExtra(Constants.EXTRA_IS_INCOMING, lastCall.isIncoming());
            component.putExtra("start_floating_widget", true);
            CallAppApplication.get().m31867a(true, component);
        }
    }

    public static Intent getStartFloatingWidgetServiceIntent(int i) {
        Intent intent = new Intent("com.callapp.contacts.ACTION_INCOMING_CALL_FLOATING_WIDGET");
        intent.setComponent(new ComponentName(CallAppApplication.get(), FloatingWidgetService.class));
        intent.putExtra(Constants.EXTRA_SHOW_FLOATING_WIDGET, i);
        return intent;
    }

    public void setActivityName(String str) {
        this.f29143a = str;
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_PAUSE)
    void start() {
        CLog.m27611a(CallAppChatHeadLifecycleObserver.class, "ON_PAUSE " + this.f29143a);
        m26494a(PhoneManager.get().getIncomingOrConnectingOrConnectedCall() != null ? 1 : -1);
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_RESUME)
    void stop() {
        CLog.m27611a(CallAppChatHeadLifecycleObserver.class, "ON_RESUME " + this.f29143a);
        m26494a(-1);
    }
}
