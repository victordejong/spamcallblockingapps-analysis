package com.callapp.contacts.manager;

import android.app.KeyguardManager;
import android.app.KeyguardManagerC0005a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.StringBuilderPrinter;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FilteredReceiversManager.class */
public class FilteredReceiversManager {

    /* renamed from: a */
    private static Map<BroadcastReceiver, BroadcastReceiver> f25695a = new ConcurrentHashMap();

    /* renamed from: b */
    private static boolean f25696b = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FilteredReceiversManager$BroadcastReceiverWrapperFilter.class */
    public static class BroadcastReceiverWrapperFilter extends BroadcastReceiver {

        /* renamed from: a */
        private final Set<String> f25697a;

        /* renamed from: b */
        private final BroadcastReceiver f25698b;

        public BroadcastReceiverWrapperFilter(Set<String> set, BroadcastReceiver broadcastReceiver) {
            HashSet hashSet = new HashSet();
            this.f25697a = hashSet;
            hashSet.addAll(set);
            this.f25698b = broadcastReceiver;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StringUtils.m26058a(BroadcastReceiverWrapperFilter.class);
            new StringBuilder("onReceive intent=").append(intent);
            if (intent.getAction() == null || !this.f25697a.contains(intent.getAction())) {
                this.f25698b.onReceive(context, intent);
            }
        }
    }

    /* renamed from: a */
    public static BroadcastReceiver m28662a(BroadcastReceiver broadcastReceiver) {
        StringUtils.m26058a(FilteredReceiversManager.class);
        new StringBuilder("unregisterReceiver receiver=").append(broadcastReceiver);
        if (broadcastReceiver == null) {
            return broadcastReceiver;
        }
        BroadcastReceiver remove = f25695a.remove(broadcastReceiver);
        if (remove != null) {
            broadcastReceiver = remove;
        }
        return broadcastReceiver;
    }

    /* renamed from: a */
    public static BroadcastReceiver m28661a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        String str;
        BroadcastReceiverWrapperFilter broadcastReceiverWrapperFilter;
        StringUtils.m26058a(FilteredReceiversManager.class);
        StringBuilder sb = new StringBuilder("registerReceiver receiver=");
        sb.append(broadcastReceiver);
        sb.append(" filter=");
        if (intentFilter == null) {
            str = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            intentFilter.dump(new StringBuilderPrinter(sb2), "");
            str = sb2.toString();
        }
        sb.append(str);
        if (broadcastReceiver == null || StringUtils.m26025g(broadcastReceiver.getClass().getName(), ".callapp.") || intentFilter == null || !intentFilter.hasAction("android.intent.action.SCREEN_OFF")) {
            broadcastReceiverWrapperFilter = broadcastReceiver;
        } else {
            HashSet hashSet = new HashSet();
            hashSet.add("android.intent.action.SCREEN_OFF");
            broadcastReceiverWrapperFilter = new BroadcastReceiverWrapperFilter(hashSet, broadcastReceiver);
        }
        if (broadcastReceiverWrapperFilter != broadcastReceiver) {
            f25695a.put(broadcastReceiver, broadcastReceiverWrapperFilter);
        }
        return broadcastReceiverWrapperFilter;
    }

    public static KeyguardManager getKeyguardManager() {
        if (!f25696b) {
            try {
                ReflectionUtils.m27416b(KeyguardManager.class);
            } catch (Throwable th) {
            }
            f25696b = true;
        }
        KeyguardManager keyguardManager = (KeyguardManager) CallAppApplication.get().m31868a("keyguard");
        if (keyguardManager == null) {
            return keyguardManager;
        }
        try {
            return new KeyguardManagerC0005a(keyguardManager);
        } catch (Throwable th2) {
            return keyguardManager;
        }
    }
}
