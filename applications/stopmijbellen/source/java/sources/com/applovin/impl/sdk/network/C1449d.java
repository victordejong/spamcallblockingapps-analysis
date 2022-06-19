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
/* renamed from: com.applovin.impl.sdk.network.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/d.class */
public class C1449d extends BroadcastReceiver {

    /* renamed from: a */
    private final List<AbstractC1450a> f5461a = Collections.synchronizedList(new ArrayList());

    /* renamed from: com.applovin.impl.sdk.network.d$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/d$a.class */
    public interface AbstractC1450a {
        /* renamed from: a */
        void mo5305a();

        /* renamed from: b */
        void mo5304b();
    }

    public C1449d(Context context) {
        context.getApplicationContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    /* renamed from: a */
    private static boolean m5308a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            Object obj = extras.get("networkInfo");
            if (!(obj instanceof NetworkInfo)) {
                return false;
            }
            return ((NetworkInfo) obj).isConnected();
        }
        return false;
    }

    /* renamed from: a */
    public void m5307a(AbstractC1450a abstractC1450a) {
        this.f5461a.add(abstractC1450a);
    }

    /* renamed from: b */
    public void m5306b(AbstractC1450a abstractC1450a) {
        this.f5461a.remove(abstractC1450a);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") || isInitialStickyBroadcast()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f5461a);
        boolean m5308a = m5308a(intent);
        Iterator it2 = arrayList.iterator();
        if (m5308a) {
            while (it2.hasNext()) {
                ((AbstractC1450a) it2.next()).mo5305a();
            }
            return;
        }
        while (it2.hasNext()) {
            ((AbstractC1450a) it2.next()).mo5304b();
        }
    }
}
