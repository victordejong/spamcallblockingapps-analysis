package p1727n3.p1872x.p1873a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.x.a.a */
/* loaded from: classes-dex2jar.jar:n3/x/a/a.class */
public final class C27062a {

    /* renamed from: f */
    public static final Object f75621f = new Object();

    /* renamed from: g */
    public static C27062a f75622g;

    /* renamed from: a */
    public final Context f75623a;

    /* renamed from: b */
    public final HashMap<BroadcastReceiver, ArrayList<C27065c>> f75624b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, ArrayList<C27065c>> f75625c = new HashMap<>();

    /* renamed from: d */
    public final ArrayList<C27064b> f75626d = new ArrayList<>();

    /* renamed from: e */
    public final Handler f75627e;

    /* renamed from: n3.x.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/x/a/a$a.class */
    public class HandlerC27063a extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC27063a(Looper looper) {
            super(looper);
            C27062a.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                C27062a.this.m969a();
            }
        }
    }

    /* renamed from: n3.x.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/x/a/a$b.class */
    public static final class C27064b {

        /* renamed from: a */
        public final Intent f75629a;

        /* renamed from: b */
        public final ArrayList<C27065c> f75630b;

        public C27064b(Intent intent, ArrayList<C27065c> arrayList) {
            this.f75629a = intent;
            this.f75630b = arrayList;
        }
    }

    /* renamed from: n3.x.a.a$c */
    /* loaded from: classes-dex2jar.jar:n3/x/a/a$c.class */
    public static final class C27065c {

        /* renamed from: a */
        public final IntentFilter f75631a;

        /* renamed from: b */
        public final BroadcastReceiver f75632b;

        /* renamed from: c */
        public boolean f75633c;

        /* renamed from: d */
        public boolean f75634d;

        public C27065c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f75631a = intentFilter;
            this.f75632b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder m8554x = C22128a.m8554x(128, "Receiver{");
            m8554x.append(this.f75632b);
            m8554x.append(" filter=");
            m8554x.append(this.f75631a);
            if (this.f75634d) {
                m8554x.append(" DEAD");
            }
            m8554x.append("}");
            return m8554x.toString();
        }
    }

    public C27062a(Context context) {
        this.f75623a = context;
        this.f75627e = new HandlerC27063a(context.getMainLooper());
    }

    /* renamed from: b */
    public static C27062a m968b(Context context) {
        C27062a c27062a;
        synchronized (f75621f) {
            if (f75622g == null) {
                f75622g = new C27062a(context.getApplicationContext());
            }
            c27062a = f75622g;
        }
        return c27062a;
    }

    /* renamed from: a */
    public void m969a() {
        int size;
        C27064b[] c27064bArr;
        while (true) {
            synchronized (this.f75624b) {
                size = this.f75626d.size();
                if (size <= 0) {
                    return;
                }
                c27064bArr = new C27064b[size];
                this.f75626d.toArray(c27064bArr);
                this.f75626d.clear();
            }
            for (int i = 0; i < size; i++) {
                C27064b c27064b = c27064bArr[i];
                int size2 = c27064b.f75630b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C27065c c27065c = c27064b.f75630b.get(i2);
                    if (!c27065c.f75634d) {
                        c27065c.f75632b.onReceive(this.f75623a, c27064b.f75629a);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public void m967c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f75624b) {
            C27065c c27065c = new C27065c(intentFilter, broadcastReceiver);
            ArrayList<C27065c> arrayList = this.f75624b.get(broadcastReceiver);
            ArrayList<C27065c> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f75624b.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(c27065c);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C27065c> arrayList3 = this.f75625c.get(action);
                ArrayList<C27065c> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.f75625c.put(action, arrayList4);
                }
                arrayList4.add(c27065c);
            }
        }
    }

    /* renamed from: d */
    public boolean m966d(Intent intent) {
        synchronized (this.f75624b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f75623a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                String str = "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent;
            }
            ArrayList<C27065c> arrayList = this.f75625c.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    String str2 = "Action list: " + arrayList;
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    C27065c c27065c = arrayList.get(i);
                    if (z) {
                        String str3 = "Matching against filter " + c27065c.f75631a;
                    }
                    if (!c27065c.f75633c) {
                        IntentFilter intentFilter = c27065c.f75631a;
                        ArrayList arrayList3 = arrayList2;
                        int match = intentFilter.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                Integer.toHexString(match);
                            }
                            arrayList2 = arrayList3 == null ? new ArrayList() : arrayList3;
                            arrayList2.add(c27065c);
                            c27065c.f75633c = true;
                        }
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((C27065c) arrayList2.get(i2)).f75633c = false;
                    }
                    this.f75626d.add(new C27064b(intent, arrayList2));
                    if (!this.f75627e.hasMessages(1)) {
                        this.f75627e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: e */
    public void m965e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f75624b) {
            ArrayList<C27065c> remove = this.f75624b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                C27065c c27065c = remove.get(size);
                c27065c.f75634d = true;
                for (int i = 0; i < c27065c.f75631a.countActions(); i++) {
                    String action = c27065c.f75631a.getAction(i);
                    ArrayList<C27065c> arrayList = this.f75625c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C27065c c27065c2 = arrayList.get(size2);
                            if (c27065c2.f75632b == broadcastReceiver) {
                                c27065c2.f75634d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f75625c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
