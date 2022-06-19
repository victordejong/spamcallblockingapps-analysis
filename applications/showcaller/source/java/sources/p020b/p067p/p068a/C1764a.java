package p020b.p067p.p068a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* renamed from: b.p.a.a */
/* loaded from: classes-dex2jar.jar:b/p/a/a.class */
public final class C1764a {

    /* renamed from: a */
    private static final Object f6593a = new Object();

    /* renamed from: b */
    private static C1764a f6594b;

    /* renamed from: c */
    private final Context f6595c;

    /* renamed from: d */
    private final HashMap<BroadcastReceiver, ArrayList<C1767c>> f6596d = new HashMap<>();

    /* renamed from: e */
    private final HashMap<String, ArrayList<C1767c>> f6597e = new HashMap<>();

    /* renamed from: f */
    private final ArrayList<C1766b> f6598f = new ArrayList<>();

    /* renamed from: g */
    private final Handler f6599g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.p.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/p/a/a$a.class */
    public class HandlerC1765a extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        HandlerC1765a(Looper looper) {
            super(looper);
            C1764a.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                C1764a.this.m28940a();
            }
        }
    }

    /* renamed from: b.p.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/p/a/a$b.class */
    public static final class C1766b {

        /* renamed from: a */
        final Intent f6601a;

        /* renamed from: b */
        final ArrayList<C1767c> f6602b;

        C1766b(Intent intent, ArrayList<C1767c> arrayList) {
            this.f6601a = intent;
            this.f6602b = arrayList;
        }
    }

    /* renamed from: b.p.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/p/a/a$c.class */
    public static final class C1767c {

        /* renamed from: a */
        final IntentFilter f6603a;

        /* renamed from: b */
        final BroadcastReceiver f6604b;

        /* renamed from: c */
        boolean f6605c;

        /* renamed from: d */
        boolean f6606d;

        C1767c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f6603a = intentFilter;
            this.f6604b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f6604b);
            sb.append(" filter=");
            sb.append(this.f6603a);
            if (this.f6606d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private C1764a(Context context) {
        this.f6595c = context;
        this.f6599g = new HandlerC1765a(context.getMainLooper());
    }

    /* renamed from: b */
    public static C1764a m28939b(Context context) {
        C1764a c1764a;
        synchronized (f6593a) {
            if (f6594b == null) {
                f6594b = new C1764a(context.getApplicationContext());
            }
            c1764a = f6594b;
        }
        return c1764a;
    }

    /* renamed from: a */
    void m28940a() {
        int size;
        C1766b[] c1766bArr;
        while (true) {
            synchronized (this.f6596d) {
                size = this.f6598f.size();
                if (size <= 0) {
                    return;
                }
                c1766bArr = new C1766b[size];
                this.f6598f.toArray(c1766bArr);
                this.f6598f.clear();
            }
            for (int i = 0; i < size; i++) {
                C1766b c1766b = c1766bArr[i];
                int size2 = c1766b.f6602b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C1767c c1767c = c1766b.f6602b.get(i2);
                    if (!c1767c.f6606d) {
                        c1767c.f6604b.onReceive(this.f6595c, c1766b.f6601a);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public void m28938c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f6596d) {
            C1767c c1767c = new C1767c(intentFilter, broadcastReceiver);
            ArrayList<C1767c> arrayList = this.f6596d.get(broadcastReceiver);
            ArrayList<C1767c> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f6596d.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(c1767c);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C1767c> arrayList3 = this.f6597e.get(action);
                ArrayList<C1767c> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.f6597e.put(action, arrayList4);
                }
                arrayList4.add(c1767c);
            }
        }
    }

    /* renamed from: d */
    public boolean m28937d(Intent intent) {
        synchronized (this.f6596d) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f6595c.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<C1767c> arrayList = this.f6597e.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    C1767c c1767c = arrayList.get(i);
                    if (z) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + c1767c.f6603a);
                    }
                    if (!c1767c.f6605c) {
                        IntentFilter intentFilter = c1767c.f6603a;
                        ArrayList arrayList3 = arrayList2;
                        int match = intentFilter.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList2 = arrayList3 == null ? new ArrayList() : arrayList3;
                            arrayList2.add(c1767c);
                            c1767c.f6605c = true;
                        } else if (z) {
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + (match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category"));
                        }
                    } else if (z) {
                        Log.v("LocalBroadcastManager", "  Filter's target already added");
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((C1767c) arrayList2.get(i2)).f6605c = false;
                    }
                    this.f6598f.add(new C1766b(intent, arrayList2));
                    if (!this.f6599g.hasMessages(1)) {
                        this.f6599g.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: e */
    public void m28936e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f6596d) {
            ArrayList<C1767c> remove = this.f6596d.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                C1767c c1767c = remove.get(size);
                c1767c.f6606d = true;
                for (int i = 0; i < c1767c.f6603a.countActions(); i++) {
                    String action = c1767c.f6603a.getAction(i);
                    ArrayList<C1767c> arrayList = this.f6597e.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C1767c c1767c2 = arrayList.get(size2);
                            if (c1767c2.f6604b == broadcastReceiver) {
                                c1767c2.f6606d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f6597e.remove(action);
                        }
                    }
                }
            }
        }
    }
}
