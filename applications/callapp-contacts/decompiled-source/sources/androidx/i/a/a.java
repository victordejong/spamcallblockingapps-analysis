package androidx.i.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/i/a/a.class */
public final class a {
    private static final Object f = new Object();
    private static a g;

    /* renamed from: a  reason: collision with root package name */
    final Context f2444a;
    private final Handler e;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<BroadcastReceiver, ArrayList<b>> f2445b = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f2447d = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<C0068a> f2446c = new ArrayList<>();

    /* renamed from: androidx.i.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/a$a.class */
    static final class C0068a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f2449a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<b> f2450b;

        C0068a(Intent intent, ArrayList<b> arrayList) {
            this.f2449a = intent;
            this.f2450b = arrayList;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/i/a/a$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f2451a;

        /* renamed from: b  reason: collision with root package name */
        final BroadcastReceiver f2452b;

        /* renamed from: c  reason: collision with root package name */
        boolean f2453c;

        /* renamed from: d  reason: collision with root package name */
        boolean f2454d;

        b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f2451a = intentFilter;
            this.f2452b = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f2452b);
            sb.append(" filter=");
            sb.append(this.f2451a);
            if (this.f2454d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private a(Context context) {
        this.f2444a = context;
        this.e = new Handler(context.getMainLooper()) { // from class: androidx.i.a.a.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int size;
                C0068a[] aVarArr;
                if (message.what != 1) {
                    super.handleMessage(message);
                    return;
                }
                a aVar = a.this;
                while (true) {
                    synchronized (aVar.f2445b) {
                        size = aVar.f2446c.size();
                        if (size > 0) {
                            aVarArr = new C0068a[size];
                            aVar.f2446c.toArray(aVarArr);
                            aVar.f2446c.clear();
                        } else {
                            return;
                        }
                    }
                    for (int i = 0; i < size; i++) {
                        C0068a aVar2 = aVarArr[i];
                        int size2 = aVar2.f2450b.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            b bVar = aVar2.f2450b.get(i2);
                            if (!bVar.f2454d) {
                                bVar.f2452b.onReceive(aVar.f2444a, aVar2.f2449a);
                            }
                        }
                    }
                }
            }
        };
    }

    public static a a(Context context) {
        a aVar;
        synchronized (f) {
            if (g == null) {
                g = new a(context.getApplicationContext());
            }
            aVar = g;
        }
        return aVar;
    }

    public final void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f2445b) {
            ArrayList<b> remove = this.f2445b.remove(broadcastReceiver);
            if (remove != null) {
                for (int size = remove.size() - 1; size >= 0; size--) {
                    b bVar = remove.get(size);
                    bVar.f2454d = true;
                    for (int i = 0; i < bVar.f2451a.countActions(); i++) {
                        String action = bVar.f2451a.getAction(i);
                        ArrayList<b> arrayList = this.f2447d.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                b bVar2 = arrayList.get(size2);
                                if (bVar2.f2452b == broadcastReceiver) {
                                    bVar2.f2454d = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.f2447d.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f2445b) {
            b bVar = new b(intentFilter, broadcastReceiver);
            ArrayList<b> arrayList = this.f2445b.get(broadcastReceiver);
            ArrayList<b> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f2445b.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(bVar);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<b> arrayList3 = this.f2447d.get(action);
                ArrayList<b> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.f2447d.put(action, arrayList4);
                }
                arrayList4.add(bVar);
            }
        }
    }

    public final boolean a(Intent intent) {
        int match;
        synchronized (this.f2445b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f2444a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                StringBuilder sb = new StringBuilder("Resolving type ");
                sb.append(resolveTypeIfNeeded);
                sb.append(" scheme ");
                sb.append(scheme);
                sb.append(" of intent ");
                sb.append(intent);
            }
            ArrayList<b> arrayList = this.f2447d.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    new StringBuilder("Action list: ").append(arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    b bVar = arrayList.get(i);
                    if (z) {
                        new StringBuilder("Matching against filter ").append(bVar.f2451a);
                    }
                    if (!bVar.f2453c && (match = bVar.f2451a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager")) >= 0) {
                        if (z) {
                            new StringBuilder("  Filter matched!  match=0x").append(Integer.toHexString(match));
                        }
                        arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                        arrayList2.add(bVar);
                        bVar.f2453c = true;
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((b) arrayList2.get(i2)).f2453c = false;
                    }
                    this.f2446c.add(new C0068a(intent, arrayList2));
                    if (!this.e.hasMessages(1)) {
                        this.e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}
