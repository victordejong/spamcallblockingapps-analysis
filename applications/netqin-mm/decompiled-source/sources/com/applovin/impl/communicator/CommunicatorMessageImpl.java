package com.applovin.impl.communicator;

import android.content.Intent;
import android.os.Bundle;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import java.lang.ref.WeakReference;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/CommunicatorMessageImpl.class */
public abstract class CommunicatorMessageImpl extends Intent {

    /* renamed from: a */
    public final String f21381a = UUID.randomUUID().toString();
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

    /* renamed from: c */
    public boolean m19210c() {
        return this.sticky;
    }

    public abstract Bundle getMessageData();

    public abstract String getPublisherId();

    public abstract String getTopic();

    @Override // android.content.Intent
    public String toString() {
        return "AppLovinCommunicatorMessage{publisherId=" + getPublisherId() + ", topic=" + getTopic() + "', uniqueId='" + this.f21381a + "', data=" + this.data + ", sticky=" + this.sticky + '}';
    }
}
