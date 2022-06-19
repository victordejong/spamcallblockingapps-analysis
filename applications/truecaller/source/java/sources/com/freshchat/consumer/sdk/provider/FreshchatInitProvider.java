package com.freshchat.consumer.sdk.provider;

import android.app.Application;
import com.freshchat.consumer.sdk.p053f.C1537c;
import com.freshchat.consumer.sdk.p057j.AbstractC1678cd;
import com.freshchat.consumer.sdk.p057j.C1613ai;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/provider/FreshchatInitProvider.class */
public class FreshchatInitProvider extends AbstractC1678cd {
    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1678cd, android.content.ContentProvider
    public boolean onCreate() {
        if (getContext() != null) {
            C1613ai.m40281i("AppStateListener", " OnCreate FreshchatInitProvider");
            C1537c.m40583a((Application) getContext().getApplicationContext());
            return true;
        }
        return true;
    }
}
