package androidx.p040h.p041a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* renamed from: androidx.h.a.a */
/* loaded from: classes-dex2jar.jar:androidx/h/a/a.class */
public final class C0735a {

    /* renamed from: f */
    private static final Object f2616f = new Object();

    /* renamed from: g */
    private static C0735a f2617g;

    /* renamed from: a */
    private final Context f2618a;

    /* renamed from: b */
    private final HashMap<BroadcastReceiver, ArrayList<C0738b>> f2619b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, ArrayList<C0738b>> f2620c = new HashMap<>();

    /* renamed from: d */
    private final ArrayList<C0737a> f2621d = new ArrayList<>();

    /* renamed from: e */
    private final Handler f2622e;

    /* renamed from: androidx.h.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/a$a.class */
    public static final class C0737a {

        /* renamed from: a */
        final Intent f2624a;

        /* renamed from: b */
        final ArrayList<C0738b> f2625b;

        C0737a(Intent intent, ArrayList<C0738b> arrayList) {
            this.f2624a = intent;
            this.f2625b = arrayList;
        }
    }

    /* renamed from: androidx.h.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/a$b.class */
    public static final class C0738b {

        /* renamed from: a */
        final IntentFilter f2626a;

        /* renamed from: b */
        final BroadcastReceiver f2627b;

        /* renamed from: c */
        boolean f2628c;

        /* renamed from: d */
        boolean f2629d;

        C0738b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f2626a = intentFilter;
            this.f2627b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f2627b);
            sb.append(" filter=");
            sb.append(this.f2626a);
            if (this.f2629d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private C0735a(Context context) {
        this.f2618a = context;
        this.f2622e = new Handler(context.getMainLooper()) { // from class: androidx.h.a.a.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        C0735a.this.m19537a();
                        return;
                    default:
                        super.handleMessage(message);
                        return;
                }
            }
        };
    }

    /* renamed from: a */
    public static C0735a m19534a(Context context) {
        C0735a c0735a;
        synchronized (f2616f) {
            if (f2617g == null) {
                f2617g = new C0735a(context.getApplicationContext());
            }
            c0735a = f2617g;
        }
        return c0735a;
    }

    /* renamed from: a */
    void m19537a() {
        C0737a[] c0737aArr;
        while (true) {
            synchronized (this.f2619b) {
                int size = this.f2621d.size();
                if (size <= 0) {
                    return;
                }
                c0737aArr = new C0737a[size];
                this.f2621d.toArray(c0737aArr);
                this.f2621d.clear();
            }
            for (C0737a c0737a : c0737aArr) {
                int size2 = c0737a.f2625b.size();
                for (int i = 0; i < size2; i++) {
                    C0738b c0738b = c0737a.f2625b.get(i);
                    if (!c0738b.f2629d) {
                        c0738b.f2627b.onReceive(this.f2618a, c0737a.f2624a);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m19536a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f2619b) {
            ArrayList<C0738b> remove = this.f2619b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                C0738b c0738b = remove.get(size);
                c0738b.f2629d = true;
                for (int i = 0; i < c0738b.f2626a.countActions(); i++) {
                    String action = c0738b.f2626a.getAction(i);
                    ArrayList<C0738b> arrayList = this.f2620c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C0738b c0738b2 = arrayList.get(size2);
                            if (c0738b2.f2627b == broadcastReceiver) {
                                c0738b2.f2629d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f2620c.remove(action);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m19535a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f2619b) {
            C0738b c0738b = new C0738b(intentFilter, broadcastReceiver);
            ArrayList<C0738b> arrayList = this.f2619b.get(broadcastReceiver);
            ArrayList<C0738b> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f2619b.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(c0738b);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C0738b> arrayList3 = this.f2620c.get(action);
                ArrayList<C0738b> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.f2620c.put(action, arrayList4);
                }
                arrayList4.add(c0738b);
            }
        }
    }

    /* renamed from: a */
    public boolean m19533a(Intent intent) {
        boolean z;
        String str;
        synchronized (this.f2619b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f2618a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z2 = (intent.getFlags() & 8) != 0;
            if (z2) {
                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<C0738b> arrayList = this.f2620c.get(intent.getAction());
            if (arrayList != null) {
                if (z2) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    C0738b c0738b = arrayList.get(i);
                    if (z2) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + c0738b.f2626a);
                    }
                    if (!c0738b.f2628c) {
                        int match = c0738b.f2626a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z2) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(c0738b);
                            c0738b.f2628c = true;
                        } else if (z2) {
                            switch (match) {
                                case -4:
                                    str = "category";
                                    break;
                                case -3:
                                    str = "action";
                                    break;
                                case -2:
                                    str = "data";
                                    break;
                                case -1:
                                    str = "type";
                                    break;
                                default:
                                    str = "unknown reason";
                                    break;
                            }
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                        }
                    } else if (z2) {
                        Log.v("LocalBroadcastManager", "  Filter's target already added");
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((C0738b) arrayList2.get(i2)).f2628c = false;
                    }
                    this.f2621d.add(new C0737a(intent, arrayList2));
                    if (!this.f2622e.hasMessages(1)) {
                        this.f2622e.sendEmptyMessage(1);
                    }
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
