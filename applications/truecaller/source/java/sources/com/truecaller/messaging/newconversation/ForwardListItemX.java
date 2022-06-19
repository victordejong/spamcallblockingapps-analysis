package com.truecaller.messaging.newconversation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.messaging.views.ChatSwitchView;
import kotlin.Metadata;
import p1727n3.p1795i.p1802c.C26389d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/truecaller/messaging/newconversation/ForwardListItemX;", "Lcom/truecaller/common/ui/listitem/ListItemX;", "Lcom/truecaller/messaging/views/ChatSwitchView;", "K", "Lcom/truecaller/messaging/views/ChatSwitchView;", "getChatSwitchView", "()Lcom/truecaller/messaging/views/ChatSwitchView;", "chatSwitchView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/ForwardListItemX.class */
public final class ForwardListItemX extends ListItemX {

    /* renamed from: K */
    public final ChatSwitchView f13579K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardListItemX(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        ChatSwitchView chatSwitchView = new ChatSwitchView(context, null, 0, 6);
        this.f13579K = chatSwitchView;
        chatSwitchView.setId(View.generateViewId());
        chatSwitchView.setVisibility(8);
        chatSwitchView.m34861m1();
        chatSwitchView.m34860n1();
        addView(chatSwitchView);
        C26389d c26389d = new C26389d();
        c26389d.m1966e(this);
        c26389d.m1965f(chatSwitchView.getId(), 7, getId(), 7);
        c26389d.m1965f(chatSwitchView.getId(), 3, 2131362231, 3);
        c26389d.m1965f(chatSwitchView.getId(), 4, 2131362231, 4);
        c26389d.m1965f(2131366469, 7, chatSwitchView.getId(), 6);
        c26389d.m1968c(this, true);
        setConstraintSet(null);
        requestLayout();
    }

    public final ChatSwitchView getChatSwitchView() {
        return this.f13579K;
    }
}
