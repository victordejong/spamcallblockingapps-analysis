package androidx.p052i.p053a;

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
/* renamed from: androidx.i.a.a */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a.class */
public final class C1179a {

    /* renamed from: f */
    private static final Object f4596f = new Object();

    /* renamed from: g */
    private static C1179a f4597g;

    /* renamed from: a */
    final Context f4598a;

    /* renamed from: e */
    private final Handler f4602e;

    /* renamed from: b */
    final HashMap<BroadcastReceiver, ArrayList<C1182b>> f4599b = new HashMap<>();

    /* renamed from: d */
    private final HashMap<String, ArrayList<C1182b>> f4601d = new HashMap<>();

    /* renamed from: c */
    final ArrayList<C1181a> f4600c = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.i.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/a$a.class */
    public static final class C1181a {

        /* renamed from: a */
        final Intent f4604a;

        /* renamed from: b */
        final ArrayList<C1182b> f4605b;

        C1181a(Intent intent, ArrayList<C1182b> arrayList) {
            this.f4604a = intent;
            this.f4605b = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.i.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/a$b.class */
    public static final class C1182b {

        /* renamed from: a */
        final IntentFilter f4606a;

        /* renamed from: b */
        final BroadcastReceiver f4607b;

        /* renamed from: c */
        boolean f4608c;

        /* renamed from: d */
        boolean f4609d;

        C1182b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f4606a = intentFilter;
            this.f4607b = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f4607b);
            sb.append(" filter=");
            sb.append(this.f4606a);
            if (this.f4609d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private C1179a(Context context) {
        this.f4598a = context;
        this.f4602e = new Handler(context.getMainLooper()) { // from class: androidx.i.a.a.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int size;
                C1181a[] c1181aArr;
                if (message.what != 1) {
                    super.handleMessage(message);
                    return;
                }
                C1179a c1179a = C1179a.this;
                while (true) {
                    synchronized (c1179a.f4599b) {
                        size = c1179a.f4600c.size();
                        if (size <= 0) {
                            return;
                        }
                        c1181aArr = new C1181a[size];
                        c1179a.f4600c.toArray(c1181aArr);
                        c1179a.f4600c.clear();
                    }
                    for (int i = 0; i < size; i++) {
                        C1181a c1181a = c1181aArr[i];
                        int size2 = c1181a.f4605b.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            C1182b c1182b = c1181a.f4605b.get(i2);
                            if (!c1182b.f4609d) {
                                c1182b.f4607b.onReceive(c1179a.f4598a, c1181a.f4604a);
                            }
                        }
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public static C1179a m43410a(Context context) {
        C1179a c1179a;
        synchronized (f4596f) {
            if (f4597g == null) {
                f4597g = new C1179a(context.getApplicationContext());
            }
            c1179a = f4597g;
        }
        return c1179a;
    }

    /* renamed from: a */
    public final void m43412a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f4599b) {
            ArrayList<C1182b> remove = this.f4599b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                C1182b c1182b = remove.get(size);
                c1182b.f4609d = true;
                for (int i = 0; i < c1182b.f4606a.countActions(); i++) {
                    String action = c1182b.f4606a.getAction(i);
                    ArrayList<C1182b> arrayList = this.f4601d.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C1182b c1182b2 = arrayList.get(size2);
                            if (c1182b2.f4607b == broadcastReceiver) {
                                c1182b2.f4609d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f4601d.remove(action);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m43411a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f4599b) {
            C1182b c1182b = new C1182b(intentFilter, broadcastReceiver);
            ArrayList<C1182b> arrayList = this.f4599b.get(broadcastReceiver);
            ArrayList<C1182b> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f4599b.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(c1182b);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C1182b> arrayList3 = this.f4601d.get(action);
                ArrayList<C1182b> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.f4601d.put(action, arrayList4);
                }
                arrayList4.add(c1182b);
            }
        }
    }

    /* renamed from: a */
    public final boolean m43409a(Intent intent) {
        synchronized (this.f4599b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f4598a.getContentResolver());
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
            ArrayList<C1182b> arrayList = this.f4601d.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    new StringBuilder("Action list: ").append(arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    C1182b c1182b = arrayList.get(i);
                    if (z) {
                        new StringBuilder("Matching against filter ").append(c1182b.f4606a);
                    }
                    if (!c1182b.f4608c) {
                        IntentFilter intentFilter = c1182b.f4606a;
                        ArrayList arrayList3 = arrayList2;
                        int match = intentFilter.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                new StringBuilder("  Filter matched!  match=0x").append(Integer.toHexString(match));
                            }
                            arrayList2 = arrayList3 == null ? new ArrayList() : arrayList3;
                            arrayList2.add(c1182b);
                            c1182b.f4608c = true;
                        }
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((C1182b) arrayList2.get(i2)).f4608c = false;
                    }
                    this.f4600c.add(new C1181a(intent, arrayList2));
                    if (!this.f4602e.hasMessages(1)) {
                        this.f4602e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}
