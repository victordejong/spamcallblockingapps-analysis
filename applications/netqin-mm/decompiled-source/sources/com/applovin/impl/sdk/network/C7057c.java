package com.applovin.impl.sdk.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.applovin.impl.sdk.network.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/c.class */
public class C7057c extends BroadcastReceiver {

    /* renamed from: a */
    public final List<AbstractC7058a> f21791a = Collections.synchronizedList(new ArrayList());

    /* renamed from: com.applovin.impl.sdk.network.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/c$a.class */
    public interface AbstractC7058a {
        /* renamed from: a */
        void mo18800a();

        /* renamed from: b */
        void mo18799b();
    }

    public C7057c(Context context) {
        context.getApplicationContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    /* renamed from: a */
    public static boolean m18803a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return false;
        }
        Object obj = extras.get("networkInfo");
        if (obj instanceof NetworkInfo) {
            return ((NetworkInfo) obj).isConnected();
        }
        return false;
    }

    /* renamed from: a */
    public void m18802a(AbstractC7058a aVar) {
        this.f21791a.add(aVar);
    }

    /* renamed from: b */
    public void m18801b(AbstractC7058a aVar) {
        this.f21791a.remove(aVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && !isInitialStickyBroadcast()) {
            ArrayList arrayList = new ArrayList(this.f21791a);
            boolean a = m18803a(intent);
            Iterator it = arrayList.iterator();
            if (a) {
                while (it.hasNext()) {
                    ((AbstractC7058a) it.next()).mo18800a();
                }
                return;
            }
            while (it.hasNext()) {
                ((AbstractC7058a) it.next()).mo18799b();
            }
        }
    }
}
