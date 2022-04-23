package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.content.ComponentName;
import android.content.Intent;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.service.FloatingWidgetService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver.class */
public class CallAppChatHeadLifecycleObserver implements o {

    /* renamed from: b  reason: collision with root package name */
    private static int f16739b;

    /* renamed from: a  reason: collision with root package name */
    public String f16740a;

    public static void a() {
        a(2);
    }

    public static void a(int i) {
        CallData lastCall;
        if (PhoneManager.get().isDefaultPhoneApp() && Activities.e()) {
            if (f16739b != i || i == 2) {
                f16739b = i;
                try {
                    CallAppApplication.get().startService(getStartFloatingWidgetServiceIntent(i));
                } catch (IllegalStateException e) {
                    if (i == 1 && (lastCall = PhoneStateManager.get().getLastCall()) != null) {
                        Intent component = new Intent("com.callapp.contacts.ACTION_START_CALL_NOTIFICATION").setComponent(new ComponentName(CallAppApplication.get(), CallAppService.class));
                        component.putExtra(Constants.EXTRA_PHONE_NUMBER, lastCall.getNumber().getRawNumber());
                        component.putExtra(Constants.EXTRA_IS_INCOMING, lastCall.isIncoming());
                        component.putExtra("start_floating_widget", true);
                        CallAppApplication.get().a(true, component);
                    }
                }
            }
        }
    }

    public static Intent getStartFloatingWidgetServiceIntent(int i) {
        Intent intent = new Intent("com.callapp.contacts.ACTION_INCOMING_CALL_FLOATING_WIDGET");
        intent.setComponent(new ComponentName(CallAppApplication.get(), FloatingWidgetService.class));
        intent.putExtra(Constants.EXTRA_SHOW_FLOATING_WIDGET, i);
        return intent;
    }

    public void setActivityName(String str) {
        this.f16740a = str;
    }

    @v(a = j.a.ON_PAUSE)
    void start() {
        CLog.a(CallAppChatHeadLifecycleObserver.class, "ON_PAUSE " + this.f16740a);
        int i = 1;
        if (!(PhoneManager.get().getIncomingOrConnectingOrConnectedCall() != null)) {
            i = -1;
        }
        a(i);
    }

    @v(a = j.a.ON_RESUME)
    void stop() {
        CLog.a(CallAppChatHeadLifecycleObserver.class, "ON_RESUME " + this.f16740a);
        a(-1);
    }
}
