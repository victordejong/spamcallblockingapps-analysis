package com.applovin.impl.communicator;

import android.content.Intent;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import java.lang.ref.WeakReference;
import java.util.UUID;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/CommunicatorMessageImpl.class */
public abstract class CommunicatorMessageImpl extends Intent {

    /* renamed from: a */
    private final String f3720a = UUID.randomUUID().toString();
    public final Bundle data;
    public final WeakReference<AppLovinCommunicatorPublisher> publisherRef;
    public boolean sticky;

    public CommunicatorMessageImpl(Bundle bundle, String str, AppLovinCommunicatorPublisher appLovinCommunicatorPublisher, boolean z) {
        super(str);
        this.publisherRef = new WeakReference<>(appLovinCommunicatorPublisher);
        this.sticky = z;
        this.data = bundle;
    }

    public static AppLovinCommunicatorMessage create(Bundle bundle, String str, AppLovinCommunicatorPublisher appLovinCommunicatorPublisher, boolean z) {
        AppLovinCommunicatorMessage appLovinCommunicatorMessage = new AppLovinCommunicatorMessage(bundle, str, appLovinCommunicatorPublisher);
        appLovinCommunicatorMessage.sticky = z;
        return appLovinCommunicatorMessage;
    }

    public abstract Bundle getMessageData();

    public abstract String getPublisherId();

    public abstract String getTopic();

    @Override // android.content.Intent
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinCommunicatorMessage{publisherId=");
        m8752j.append(getPublisherId());
        m8752j.append(", topic=");
        m8752j.append(getTopic());
        m8752j.append('\'');
        m8752j.append(", uniqueId='");
        C0033h.m8882o(m8752j, this.f3720a, '\'', ", data=");
        m8752j.append(this.data);
        m8752j.append(", sticky=");
        m8752j.append(this.sticky);
        m8752j.append('}');
        return m8752j.toString();
    }
}
