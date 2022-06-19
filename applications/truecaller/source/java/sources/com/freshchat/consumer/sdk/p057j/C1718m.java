package com.freshchat.consumer.sdk.p057j;

import android.os.Bundle;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.activity.ChannelListActivity;
import com.freshchat.consumer.sdk.activity.ConversationDetailActivity;
import com.freshchat.consumer.sdk.activity.InterstitialActivity;
import com.freshchat.consumer.sdk.beans.Channel;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.j.m */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/m.class */
public class C1718m extends AbstractC1673c<ConversationOptions> {
    /* renamed from: c */
    public void m39890c(Channel channel) {
        if (channel != null) {
            m40032a(ConversationDetailActivity.class);
            Bundle bundle = new Bundle();
            bundle.putLong("CHANNEL_ID", channel.getId());
            bundle.putString("CHANNEL_NAME", channel.getName());
            bundle.putString("CHANNEL_TYPE", channel.getChannelType());
            m40031b(bundle);
        }
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1673c
    /* renamed from: ea */
    public void mo39807ea() {
        m39888ev();
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1673c
    /* renamed from: eb */
    public Bundle mo39806eb() {
        Bundle bundle = new Bundle();
        bundle.putAll(C1717l.m39892a(m40029ec()));
        bundle.putString("OPTIONS_TYPE", ConversationOptions.class.getSimpleName());
        return bundle;
    }

    /* renamed from: eu */
    public void m39889eu() {
        m40032a(ChannelListActivity.class);
        m40031b(null);
    }

    /* renamed from: ev */
    public void m39888ev() {
        m40032a(InterstitialActivity.class);
        m40031b(null);
    }

    /* renamed from: u */
    public void m39887u(List<Channel> list) {
        if (C1716k.m39900b(list) != 1 || list.get(0) == null) {
            m39889eu();
        } else {
            m39890c(list.get(0));
        }
    }
}
