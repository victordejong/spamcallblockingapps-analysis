package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager.class */
public class AppLovinBroadcastManager {

    /* renamed from: f */
    private static AppLovinBroadcastManager f4463f;

    /* renamed from: g */
    private static final Object f4464g = new Object();

    /* renamed from: a */
    private final Context f4465a;

    /* renamed from: b */
    private final HashMap<Receiver, ArrayList<C1244b>> f4466b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, ArrayList<C1244b>> f4467c = new HashMap<>();

    /* renamed from: d */
    private final ArrayList<C1243a> f4468d = new ArrayList<>();

    /* renamed from: e */
    private final Handler f4469e = new Handler(Looper.getMainLooper()) { // from class: com.applovin.impl.sdk.AppLovinBroadcastManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                AppLovinBroadcastManager.this.m6088a();
            } else {
                super.handleMessage(message);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$Receiver.class */
    public interface Receiver {
        void onReceive(Context context, Intent intent, Map<String, Object> map);
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinBroadcastManager$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$a.class */
    public static class C1243a {

        /* renamed from: a */
        public final Intent f4471a;

        /* renamed from: b */
        public final Map<String, Object> f4472b;

        /* renamed from: c */
        public final List<C1244b> f4473c;

        public C1243a(Intent intent, Map<String, Object> map, List<C1244b> list) {
            this.f4471a = intent;
            this.f4472b = map;
            this.f4473c = list;
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinBroadcastManager$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$b.class */
    public static class C1244b {

        /* renamed from: a */
        public final IntentFilter f4474a;

        /* renamed from: b */
        public final Receiver f4475b;

        /* renamed from: c */
        public boolean f4476c;

        /* renamed from: d */
        public boolean f4477d;

        public C1244b(IntentFilter intentFilter, Receiver receiver) {
            this.f4474a = intentFilter;
            this.f4475b = receiver;
        }
    }

    private AppLovinBroadcastManager(Context context) {
        this.f4465a = context;
    }

    /* renamed from: a */
    private List<C1244b> m6087a(Intent intent) {
        synchronized (this.f4466b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f4465a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            ArrayList<C1244b> arrayList = this.f4467c.get(action);
            if (arrayList == null) {
                return null;
            }
            ArrayList<C1244b> arrayList2 = null;
            for (C1244b c1244b : arrayList) {
                if (!c1244b.f4476c && c1244b.f4474a.match(action, resolveTypeIfNeeded, scheme, data, categories, "AppLovinBroadcastManager") >= 0) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(c1244b);
                    c1244b.f4476c = true;
                }
            }
            if (arrayList2 == null) {
                return null;
            }
            for (C1244b c1244b2 : arrayList2) {
                c1244b2.f4476c = false;
            }
            return arrayList2;
        }
    }

    /* renamed from: a */
    public void m6088a() {
        int size;
        C1243a[] c1243aArr;
        while (true) {
            synchronized (this.f4466b) {
                size = this.f4468d.size();
                if (size <= 0) {
                    return;
                }
                c1243aArr = new C1243a[size];
                this.f4468d.toArray(c1243aArr);
                this.f4468d.clear();
            }
            for (int i = 0; i < size; i++) {
                C1243a c1243a = c1243aArr[i];
                if (c1243a != null) {
                    for (C1244b c1244b : c1243a.f4473c) {
                        if (c1244b != null && !c1244b.f4477d) {
                            c1244b.f4475b.onReceive(this.f4465a, c1243a.f4471a, c1243a.f4472b);
                        }
                    }
                }
            }
        }
    }

    public static AppLovinBroadcastManager getInstance(Context context) {
        AppLovinBroadcastManager appLovinBroadcastManager;
        synchronized (f4464g) {
            if (f4463f == null) {
                f4463f = new AppLovinBroadcastManager(context.getApplicationContext());
            }
            appLovinBroadcastManager = f4463f;
        }
        return appLovinBroadcastManager;
    }

    public void registerReceiver(Receiver receiver, IntentFilter intentFilter) {
        synchronized (this.f4466b) {
            C1244b c1244b = new C1244b(intentFilter, receiver);
            ArrayList<C1244b> arrayList = this.f4466b.get(receiver);
            ArrayList<C1244b> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f4466b.put(receiver, arrayList2);
            }
            arrayList2.add(c1244b);
            Iterator<String> actionsIterator = intentFilter.actionsIterator();
            while (actionsIterator.hasNext()) {
                String next = actionsIterator.next();
                ArrayList<C1244b> arrayList3 = this.f4467c.get(next);
                ArrayList<C1244b> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.f4467c.put(next, arrayList4);
                }
                arrayList4.add(c1244b);
            }
        }
    }

    public boolean sendBroadcast(Intent intent, Map<String, Object> map) {
        synchronized (this.f4466b) {
            List<C1244b> m6087a = m6087a(intent);
            if (m6087a == null) {
                return false;
            }
            this.f4468d.add(new C1243a(intent, map, m6087a));
            if (!this.f4469e.hasMessages(1)) {
                this.f4469e.sendEmptyMessage(1);
            }
            return true;
        }
    }

    public void sendBroadcastSync(Intent intent, Map<String, Object> map) {
        List<C1244b> m6087a = m6087a(intent);
        if (m6087a == null) {
            return;
        }
        for (C1244b c1244b : m6087a) {
            if (!c1244b.f4477d) {
                c1244b.f4475b.onReceive(this.f4465a, intent, map);
            }
        }
    }

    public void sendBroadcastSyncWithPendingBroadcasts(Intent intent, Map<String, Object> map) {
        if (sendBroadcast(intent, map)) {
            m6088a();
        }
    }

    public boolean sendBroadcastWithAdObject(String str, Object obj) {
        HashMap hashMap = new HashMap(1);
        hashMap.put("ad", obj);
        return sendBroadcast(new Intent(str), hashMap);
    }

    public void unregisterReceiver(Receiver receiver) {
        synchronized (this.f4466b) {
            ArrayList<C1244b> remove = this.f4466b.remove(receiver);
            if (remove == null) {
                return;
            }
            for (C1244b c1244b : remove) {
                c1244b.f4477d = true;
                Iterator<String> actionsIterator = c1244b.f4474a.actionsIterator();
                while (actionsIterator.hasNext()) {
                    String next = actionsIterator.next();
                    ArrayList<C1244b> arrayList = this.f4467c.get(next);
                    if (arrayList != null) {
                        Iterator<C1244b> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            if (it2.next().f4475b == receiver) {
                                c1244b.f4477d = true;
                                it2.remove();
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f4467c.remove(next);
                        }
                    }
                }
            }
        }
    }
}
