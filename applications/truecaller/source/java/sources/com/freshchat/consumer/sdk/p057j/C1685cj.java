package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.Message;
/* renamed from: com.freshchat.consumer.sdk.j.cj */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cj.class */
public class C1685cj {

    /* renamed from: com.freshchat.consumer.sdk.j.cj$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cj$a.class */
    public interface AbstractC1686a {
        /* renamed from: p */
        void mo40012p(Message message);

        /* renamed from: q */
        void mo40011q(Message message);
    }

    /* renamed from: a */
    public static View m40014a(Context context, ViewGroup viewGroup, Message message, AbstractC1686a abstractC1686a) {
        View inflate = LayoutInflater.from(context).inflate(C1298R.layout.freshchat_calendar_invite_options, viewGroup, false);
        m40013a(inflate, message, abstractC1686a);
        return inflate;
    }

    /* renamed from: a */
    private static void m40013a(View view, Message message, AbstractC1686a abstractC1686a) {
        ((Button) view.findViewById(C1298R.C1300id.freshchat_calendar_find_slot_button)).setOnClickListener(new View$OnClickListenerC1687ck(abstractC1686a, message));
        ((TextView) view.findViewById(C1298R.C1300id.freshchat_calendar_not_interested_textview)).setOnClickListener(new View$OnClickListenerC1688cl(abstractC1686a, message));
    }
}
