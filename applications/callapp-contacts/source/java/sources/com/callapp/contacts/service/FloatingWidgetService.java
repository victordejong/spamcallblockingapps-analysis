package com.callapp.contacts.service;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.widget.floatingwidget.ChatHeadServiceHandler;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/FloatingWidgetService.class */
public class FloatingWidgetService extends Service {

    /* renamed from: a */
    private ChatHeadServiceHandler f27573a;

    /* renamed from: a */
    public /* synthetic */ void m27793a(int i) {
        ChatHeadServiceHandler chatHeadServiceHandler;
        if (i == -1 || i == 0) {
            ChatHeadServiceHandler chatHeadServiceHandler2 = this.f27573a;
            if (chatHeadServiceHandler2 == null) {
                return;
            }
            chatHeadServiceHandler2.m26547c();
            this.f27573a = null;
            stopSelf();
        } else if (i != 1) {
            if (i != 2 || (chatHeadServiceHandler = this.f27573a) == null) {
                return;
            }
            chatHeadServiceHandler.m26546d();
        } else {
            ChatHeadServiceHandler chatHeadServiceHandler3 = this.f27573a;
            if (chatHeadServiceHandler3 != null) {
                chatHeadServiceHandler3.m26547c();
            }
            ChatHeadServiceHandler chatHeadServiceHandler4 = new ChatHeadServiceHandler(this);
            this.f27573a = chatHeadServiceHandler4;
            chatHeadServiceHandler4.m26546d();
            ChatHeadServiceHandler chatHeadServiceHandler5 = this.f27573a;
            chatHeadServiceHandler5.f29019a.mo26417a((DefaultChatHeadManager<String>) "ChatHeadIdentifier", false, true);
            DefaultChatHeadManager<String> defaultChatHeadManager = chatHeadServiceHandler5.f29019a;
            ChatHead<String> m26412b = chatHeadServiceHandler5.f29019a.m26412b((DefaultChatHeadManager<String>) "ChatHeadIdentifier");
            if (defaultChatHeadManager.f29241c == null) {
                return;
            }
            defaultChatHeadManager.f29241c.mo26504b(m26412b);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        ChatHeadServiceHandler chatHeadServiceHandler;
        super.onDestroy();
        if (Build.VERSION.SDK_INT < 23 || !PhoneManager.get().isDefaultPhoneApp() || (chatHeadServiceHandler = this.f27573a) == null) {
            return;
        }
        chatHeadServiceHandler.m26547c();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || intent.getAction() == null) {
            return 1;
        }
        String action = intent.getAction();
        action.hashCode();
        if (!action.equals("com.callapp.contacts.ACTION_INCOMING_CALL_FLOATING_WIDGET") || !Prefs.f26541g.get().booleanValue() || !PhoneManager.get().isDefaultPhoneApp() || Build.VERSION.SDK_INT < 23) {
            return 1;
        }
        final int intExtra = intent.getIntExtra(Constants.EXTRA_SHOW_FLOATING_WIDGET, -1);
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.service._$$Lambda$FloatingWidgetService$H41xxNK8sCw3tY8ZccUeaiikqqI
            @Override // java.lang.Runnable
            public final void run() {
                FloatingWidgetService.this.m27793a(intExtra);
            }
        });
        return 1;
    }
}
