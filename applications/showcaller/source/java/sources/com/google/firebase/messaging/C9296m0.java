package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.m0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/m0.class */
public final class C9296m0 {

    /* renamed from: a */
    private final SharedPreferences f39811a;

    /* renamed from: e */
    private final Executor f39815e;

    /* renamed from: d */
    private final ArrayDeque<String> f39814d = new ArrayDeque<>();

    /* renamed from: f */
    private boolean f39816f = false;

    /* renamed from: b */
    private final String f39812b = "topic_operation_queue";

    /* renamed from: c */
    private final String f39813c = ",";

    private C9296m0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f39811a = sharedPreferences;
        this.f39815e = executor;
    }

    /* renamed from: b */
    private boolean m1217b(boolean z) {
        boolean z2 = z;
        if (z) {
            z2 = z;
            if (!this.f39816f) {
                m1210i();
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public static C9296m0 m1216c(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        C9296m0 c9296m0 = new C9296m0(sharedPreferences, "topic_operation_queue", ",", executor);
        c9296m0.m1215d();
        return c9296m0;
    }

    /* renamed from: d */
    private void m1215d() {
        synchronized (this.f39814d) {
            this.f39814d.clear();
            String string = this.f39811a.getString(this.f39812b, "");
            if (!TextUtils.isEmpty(string) && string.contains(this.f39813c)) {
                String[] split = string.split(this.f39813c, -1);
                int length = split.length;
                int i = 0;
                if (length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    i = 0;
                }
                while (i < length) {
                    String str = split[i];
                    if (!TextUtils.isEmpty(str)) {
                        this.f39814d.add(str);
                    }
                    i++;
                }
            }
        }
    }

    /* renamed from: h */
    public void m1218a() {
        synchronized (this.f39814d) {
            this.f39811a.edit().putString(this.f39812b, m1212g()).commit();
        }
    }

    /* renamed from: i */
    private void m1210i() {
        this.f39815e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.l0

            /* renamed from: d */
            private final C9296m0 f39809d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39809d = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39809d.m1218a();
            }
        });
    }

    /* renamed from: e */
    public String m1214e() {
        String peek;
        synchronized (this.f39814d) {
            peek = this.f39814d.peek();
        }
        return peek;
    }

    /* renamed from: f */
    public boolean m1213f(Object obj) {
        boolean remove;
        synchronized (this.f39814d) {
            remove = this.f39814d.remove(obj);
            m1217b(remove);
        }
        return remove;
    }

    /* renamed from: g */
    public String m1212g() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f39814d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(this.f39813c);
        }
        return sb.toString();
    }
}
