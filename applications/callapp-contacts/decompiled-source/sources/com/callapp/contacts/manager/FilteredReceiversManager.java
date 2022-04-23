package com.callapp.contacts.manager;

import android.app.KeyguardManager;
import android.app.a;
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

    /* renamed from: a  reason: collision with root package name */
    private static Map<BroadcastReceiver, BroadcastReceiver> f14867a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f14868b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FilteredReceiversManager$BroadcastReceiverWrapperFilter.class */
    public static class BroadcastReceiverWrapperFilter extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f14869a;

        /* renamed from: b  reason: collision with root package name */
        private final BroadcastReceiver f14870b;

        public BroadcastReceiverWrapperFilter(Set<String> set, BroadcastReceiver broadcastReceiver) {
            HashSet hashSet = new HashSet();
            this.f14869a = hashSet;
            hashSet.addAll(set);
            this.f14870b = broadcastReceiver;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StringUtils.a(BroadcastReceiverWrapperFilter.class);
            new StringBuilder("onReceive intent=").append(intent);
            if (intent.getAction() == null || !this.f14869a.contains(intent.getAction())) {
                this.f14870b.onReceive(context, intent);
            }
        }
    }

    public static BroadcastReceiver a(BroadcastReceiver broadcastReceiver) {
        StringUtils.a(FilteredReceiversManager.class);
        new StringBuilder("unregisterReceiver receiver=").append(broadcastReceiver);
        if (broadcastReceiver == null) {
            return broadcastReceiver;
        }
        BroadcastReceiver remove = f14867a.remove(broadcastReceiver);
        if (remove != null) {
            broadcastReceiver = remove;
        }
        return broadcastReceiver;
    }

    public static BroadcastReceiver a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        String str;
        BroadcastReceiver broadcastReceiver2;
        StringUtils.a(FilteredReceiversManager.class);
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
        if (broadcastReceiver == null || StringUtils.g(broadcastReceiver.getClass().getName(), ".callapp.") || intentFilter == null || !intentFilter.hasAction("android.intent.action.SCREEN_OFF")) {
            broadcastReceiver2 = broadcastReceiver;
        } else {
            HashSet hashSet = new HashSet();
            hashSet.add("android.intent.action.SCREEN_OFF");
            broadcastReceiver2 = new BroadcastReceiverWrapperFilter(hashSet, broadcastReceiver);
        }
        if (broadcastReceiver2 != broadcastReceiver) {
            f14867a.put(broadcastReceiver, broadcastReceiver2);
        }
        return broadcastReceiver2;
    }

    public static KeyguardManager getKeyguardManager() {
        if (!f14868b) {
            try {
                ReflectionUtils.b(KeyguardManager.class);
            } catch (Throwable th) {
            }
            f14868b = true;
        }
        KeyguardManager keyguardManager = (KeyguardManager) CallAppApplication.get().a("keyguard");
        if (keyguardManager == null) {
            return keyguardManager;
        }
        try {
            return new a(keyguardManager);
        } catch (Throwable th2) {
            return keyguardManager;
        }
    }
}
