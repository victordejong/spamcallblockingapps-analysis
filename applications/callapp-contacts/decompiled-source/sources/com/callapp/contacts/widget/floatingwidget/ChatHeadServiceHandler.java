package com.callapp.contacts.widget.floatingwidget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.phone.CallDetailsListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.service.NotificationPendingIntentHandlerService;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadViewAdapter;
import com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserverManager;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.container.WindowManagerContainer;
import com.callapp.framework.util.StringUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler.class */
public class ChatHeadServiceHandler implements CallDetailsListener, ChatHeadListener, ChatHeadManager.OnItemSelectedListener<String> {

    /* renamed from: a  reason: collision with root package name */
    public DefaultChatHeadManager<String> f16677a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, View> f16678b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private Context f16679c;
    private ImageView e;
    private AppCompatImageView f;

    public ChatHeadServiceHandler(Context context) {
        this.f16679c = context;
        CallAppChatHeadManager callAppChatHeadManager = new CallAppChatHeadManager(context, new WindowManagerContainer(context));
        this.f16677a = callAppChatHeadManager;
        callAppChatHeadManager.setOnItemSelectedListener(this);
        this.f16677a.setViewAdapter(new ChatHeadViewAdapter() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A
            @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadViewAdapter
            public final View getChatHeadView(Object obj) {
                View a2;
                a2 = ChatHeadServiceHandler.this.a((String) obj);
                return a2;
            }
        });
        this.f16677a.a(MinimizedArrangement.class, (Bundle) null);
        this.f16677a.setListener(this);
        PhoneStateManager.get().addDetailsListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View a(String str) {
        if (this.f16678b.get(str) == null) {
            View inflate = LayoutInflater.from(this.f16679c).inflate(2131558819, (ViewGroup) null);
            this.e = (ImageView) inflate.findViewById(2131362440);
            this.f = (AppCompatImageView) inflate.findViewById(2131363058);
            d();
            this.f16678b.put(str, inflate);
        }
        return this.f16678b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ContactData contactData) {
        this.e.setVisibility(0);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.e, contactData.getPhotoUrl(), this.f16679c);
        glideRequestBuilder.l = true;
        GlideUtils.GlideRequestBuilder b2 = glideRequestBuilder.b(4, ThemeUtils.getColor(2131100228));
        b2.n = new g() { // from class: com.callapp.contacts.widget.floatingwidget.ChatHeadServiceHandler.1
            @Override // com.bumptech.glide.e.g
            public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.e.g
            public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                ChatHeadServiceHandler.this.f.setImageResource(2131231538);
                return false;
            }
        };
        b2.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean[] zArr) {
        boolean equals = Arrays.equals(zArr, Constants.CALL_BEFORE_MERGE);
        int i = 0;
        ((CallAppChatHeadManager) this.f16677a).getFloatingMenuViewController().a(2131362849).setVisibility(equals ? 0 : 8);
        View a2 = ((CallAppChatHeadManager) this.f16677a).getFloatingMenuViewController().a(2131362847);
        if (!equals) {
            i = 8;
        }
        a2.setVisibility(i);
        if (!CallAppChatHeadLifecycleObserverManager.get().isRegisteredActivity()) {
            d();
        }
    }

    private void e() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$kAonPthFTD7rG9WCSPC2N6hXIJM
            @Override // java.lang.Runnable
            public final void run() {
                ChatHeadServiceHandler.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.e.setVisibility(8);
        this.f.setImageResource(2131231543);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
    public final void a(int i) {
        if (i == 0) {
            Intent intent = new Intent("com.callapp.contacts.ACTION_END_CALL");
            intent.setComponent(new ComponentName(this.f16679c, NotificationPendingIntentHandlerService.class));
            this.f16679c.startService(intent);
        } else if (i == 1) {
            c();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager.OnItemSelectedListener
    public final /* bridge */ /* synthetic */ boolean a(ChatHead chatHead) {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
    public final void b() {
        this.f16677a.e();
    }

    public final void c() {
        PhoneStateManager.get().removeDetailsListener(this);
        this.f16677a.e();
        this.f16677a.a();
    }

    public final void d() {
        CallData incomingOrConnectingOrConnectedCall;
        final ContactData contactDataByCallData;
        if (this.e != null && this.f != null) {
            e();
            if (!PhoneStateManager.get().shouldConferenceScreenAppear() && (incomingOrConnectingOrConnectedCall = PhoneManager.get().getIncomingOrConnectingOrConnectedCall()) != null) {
                if ((incomingOrConnectingOrConnectedCall.getState() != CallState.RINGING_INCOMING || PhoneStateManager.get().getCallListSize() <= 1) && (contactDataByCallData = PhoneStateManager.get().getContactDataByCallData(incomingOrConnectingOrConnectedCall)) != null && StringUtils.b((CharSequence) contactDataByCallData.getPhotoUrl()) && !contactDataByCallData.isIncognito() && !IncognitoCallManager.get().isIncognito(contactDataByCallData)) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$g_qyj4ugg7jpuMIGGNjEJT5nayM
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatHeadServiceHandler.this.a(contactDataByCallData);
                        }
                    });
                }
            }
        }
    }

    @Override // com.callapp.contacts.manager.phone.CallDetailsListener
    public void onCallDetailsChanged(int[] iArr) {
        final boolean[] a2 = ArrayUtils.a(iArr);
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$SM7XtB_ALt53mbMtEEAw7hOfxz8
            @Override // java.lang.Runnable
            public final void run() {
                ChatHeadServiceHandler.this.a(a2);
            }
        });
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
    public final void s_() {
    }
}
