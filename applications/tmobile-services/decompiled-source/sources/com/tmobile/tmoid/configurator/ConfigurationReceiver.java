package com.tmobile.tmoid.configurator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/configurator/ConfigurationReceiver.class */
public class ConfigurationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent();
        intent2.setPackage("com.tmobile.tmoid.iamagentconfigurator");
        intent2.setAction("com.tmobile.tmoid.agent.REGISTER_AGENT_FOR_CONFIGURE");
        intent2.putExtra(Constants.MessagePayloadKeys.FROM, context.getPackageName());
        context.sendBroadcast(intent2, "com.tmobile.tmoid.agent.permission.CONFIGURATOR");
    }
}
