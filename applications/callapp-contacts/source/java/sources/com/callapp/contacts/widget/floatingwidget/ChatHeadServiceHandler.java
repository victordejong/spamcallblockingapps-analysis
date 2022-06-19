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
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
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
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadViewAdapter;
import com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppChatHeadLifecycleObserverManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.container.WindowManagerContainer;
import com.callapp.framework.util.StringUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler.class */
public class ChatHeadServiceHandler implements CallDetailsListener, ChatHeadListener, ChatHeadManager.OnItemSelectedListener<String> {

    /* renamed from: a */
    public DefaultChatHeadManager<String> f29019a;

    /* renamed from: b */
    private Map<String, View> f29020b = new HashMap();

    /* renamed from: c */
    private Context f29021c;

    /* renamed from: e */
    private ImageView f29022e;

    /* renamed from: f */
    private AppCompatImageView f29023f;

    public ChatHeadServiceHandler(Context context) {
        this.f29021c = context;
        CallAppChatHeadManager callAppChatHeadManager = new CallAppChatHeadManager(context, new WindowManagerContainer(context));
        this.f29019a = callAppChatHeadManager;
        callAppChatHeadManager.setOnItemSelectedListener(this);
        this.f29019a.setViewAdapter(new ChatHeadViewAdapter() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$q2W4basluXUUDllb0aBLaiuf69A
            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadViewAdapter
            public final View getChatHeadView(Object obj) {
                View m26549a;
                m26549a = ChatHeadServiceHandler.this.m26549a((String) obj);
                return m26549a;
            }
        });
        this.f29019a.mo26416a(MinimizedArrangement.class, (Bundle) null);
        this.f29019a.setListener(this);
        PhoneStateManager.get().addDetailsListener(this);
    }

    /* renamed from: a */
    public View m26549a(String str) {
        if (this.f29020b.get(str) == null) {
            View inflate = LayoutInflater.from(this.f29021c).inflate(2131558819, (ViewGroup) null);
            this.f29022e = (ImageView) inflate.findViewById(2131362440);
            this.f29023f = (AppCompatImageView) inflate.findViewById(2131363058);
            m26546d();
            this.f29020b.put(str, inflate);
        }
        return this.f29020b.get(str);
    }

    /* renamed from: a */
    public /* synthetic */ void m26551a(ContactData contactData) {
        this.f29022e.setVisibility(0);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f29022e, contactData.getPhotoUrl(), this.f29021c);
        glideRequestBuilder.f28246l = true;
        GlideUtils.GlideRequestBuilder m27018b = glideRequestBuilder.m27018b(4, ThemeUtils.getColor(2131100228));
        m27018b.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.widget.floatingwidget.ChatHeadServiceHandler.1
            @Override // com.bumptech.glide.p112e.AbstractC3604g
            /* renamed from: a */
            public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.p112e.AbstractC3604g
            /* renamed from: a */
            public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                ChatHeadServiceHandler.this.f29023f.setImageResource(2131231538);
                return false;
            }
        };
        m27018b.m27013d();
    }

    /* renamed from: a */
    public /* synthetic */ void m26548a(boolean[] zArr) {
        boolean equals = Arrays.equals(zArr, Constants.CALL_BEFORE_MERGE);
        ((CallAppChatHeadManager) this.f29019a).getFloatingMenuViewController().mo26540a(2131362849).setVisibility(equals ? 0 : 8);
        ((CallAppChatHeadManager) this.f29019a).getFloatingMenuViewController().mo26540a(2131362847).setVisibility(equals ? 0 : 8);
        if (!CallAppChatHeadLifecycleObserverManager.get().isRegisteredActivity()) {
            m26546d();
        }
    }

    /* renamed from: e */
    private void m26545e() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$kAonPthFTD7rG9WCSPC2N6hXIJM
            @Override // java.lang.Runnable
            public final void run() {
                ChatHeadServiceHandler.this.m26544f();
            }
        });
    }

    /* renamed from: f */
    public /* synthetic */ void m26544f() {
        this.f29022e.setVisibility(8);
        this.f29023f.setImageResource(2131231543);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
    /* renamed from: a */
    public final void mo26438a(int i) {
        if (i != 0) {
            if (i != 1) {
                return;
            }
            m26547c();
            return;
        }
        Intent intent = new Intent("com.callapp.contacts.ACTION_END_CALL");
        intent.setComponent(new ComponentName(this.f29021c, NotificationPendingIntentHandlerService.class));
        this.f29021c.startService(intent);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager.OnItemSelectedListener
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo26437a(ChatHead chatHead) {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
    /* renamed from: b */
    public final void mo26436b() {
        this.f29019a.mo26407e();
    }

    /* renamed from: c */
    public final void m26547c() {
        PhoneStateManager.get().removeDetailsListener(this);
        this.f29019a.mo26407e();
        this.f29019a.mo26428a();
    }

    /* renamed from: d */
    public final void m26546d() {
        CallData incomingOrConnectingOrConnectedCall;
        final ContactData contactDataByCallData;
        if (this.f29022e == null || this.f29023f == null) {
            return;
        }
        m26545e();
        if (PhoneStateManager.get().shouldConferenceScreenAppear() || (incomingOrConnectingOrConnectedCall = PhoneManager.get().getIncomingOrConnectingOrConnectedCall()) == null) {
            return;
        }
        if ((incomingOrConnectingOrConnectedCall.getState() == CallState.RINGING_INCOMING && PhoneStateManager.get().getCallListSize() > 1) || (contactDataByCallData = PhoneStateManager.get().getContactDataByCallData(incomingOrConnectingOrConnectedCall)) == null || !StringUtils.m26045b((CharSequence) contactDataByCallData.getPhotoUrl()) || contactDataByCallData.isIncognito() || IncognitoCallManager.get().isIncognito(contactDataByCallData)) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$g_qyj4ugg7jpuMIGGNjEJT5nayM
            @Override // java.lang.Runnable
            public final void run() {
                ChatHeadServiceHandler.this.m26551a(contactDataByCallData);
            }
        });
    }

    @Override // com.callapp.contacts.manager.phone.CallDetailsListener
    public void onCallDetailsChanged(int[] iArr) {
        final boolean[] m27619a = ArrayUtils.m27619a(iArr);
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$ChatHeadServiceHandler$SM7XtB_ALt53mbMtEEAw7hOfxz8
            @Override // java.lang.Runnable
            public final void run() {
                ChatHeadServiceHandler.this.m26548a(m27619a);
            }
        });
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
    /* renamed from: s_ */
    public final void mo26429s_() {
    }
}
