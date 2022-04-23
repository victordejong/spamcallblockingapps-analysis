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
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/FloatingWidgetService.class */
public class FloatingWidgetService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private ChatHeadServiceHandler f15766a;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        ChatHeadServiceHandler chatHeadServiceHandler;
        if (i == -1 || i == 0) {
            ChatHeadServiceHandler chatHeadServiceHandler2 = this.f15766a;
            if (chatHeadServiceHandler2 != null) {
                chatHeadServiceHandler2.c();
                this.f15766a = null;
                stopSelf();
            }
        } else if (i == 1) {
            ChatHeadServiceHandler chatHeadServiceHandler3 = this.f15766a;
            if (chatHeadServiceHandler3 != null) {
                chatHeadServiceHandler3.c();
            }
            ChatHeadServiceHandler chatHeadServiceHandler4 = new ChatHeadServiceHandler(this);
            this.f15766a = chatHeadServiceHandler4;
            chatHeadServiceHandler4.d();
            ChatHeadServiceHandler chatHeadServiceHandler5 = this.f15766a;
            chatHeadServiceHandler5.f16677a.a((DefaultChatHeadManager<String>) "ChatHeadIdentifier", false, true);
            DefaultChatHeadManager<String> defaultChatHeadManager = chatHeadServiceHandler5.f16677a;
            ChatHead<String> b2 = chatHeadServiceHandler5.f16677a.b((DefaultChatHeadManager<String>) "ChatHeadIdentifier");
            if (defaultChatHeadManager.f16795c != null) {
                defaultChatHeadManager.f16795c.b(b2);
            }
        } else if (i == 2 && (chatHeadServiceHandler = this.f15766a) != null) {
            chatHeadServiceHandler.d();
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
        if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp() && (chatHeadServiceHandler = this.f15766a) != null) {
            chatHeadServiceHandler.c();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || intent.getAction() == null) {
            return 1;
        }
        String action = intent.getAction();
        action.hashCode();
        if (!action.equals("com.callapp.contacts.ACTION_INCOMING_CALL_FLOATING_WIDGET") || !Prefs.g.get().booleanValue() || !PhoneManager.get().isDefaultPhoneApp() || Build.VERSION.SDK_INT < 23) {
            return 1;
        }
        final int intExtra = intent.getIntExtra(Constants.EXTRA_SHOW_FLOATING_WIDGET, -1);
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.service._$$Lambda$FloatingWidgetService$H41xxNK8sCw3tY8ZccUeaiikqqI
            @Override // java.lang.Runnable
            public final void run() {
                FloatingWidgetService.this.a(intExtra);
            }
        });
        return 1;
    }
}
