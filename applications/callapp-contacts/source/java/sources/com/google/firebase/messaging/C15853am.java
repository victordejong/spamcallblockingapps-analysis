package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.am */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/am.class */
public final class C15853am {

    /* renamed from: a */
    final SharedPreferences f56342a;

    /* renamed from: e */
    private final Executor f56346e;

    /* renamed from: d */
    final ArrayDeque<String> f56345d = new ArrayDeque<>();

    /* renamed from: f */
    private boolean f56347f = false;

    /* renamed from: b */
    final String f56343b = "topic_operation_queue";

    /* renamed from: c */
    final String f56344c = ",";

    private C15853am(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f56342a = sharedPreferences;
        this.f56346e = executor;
    }

    /* renamed from: a */
    public static C15853am m8176a(SharedPreferences sharedPreferences, Executor executor) {
        C15853am c15853am = new C15853am(sharedPreferences, "topic_operation_queue", ",", executor);
        synchronized (c15853am.f56345d) {
            c15853am.f56345d.clear();
            String string = c15853am.f56342a.getString(c15853am.f56343b, "");
            if (!TextUtils.isEmpty(string) && string.contains(c15853am.f56344c)) {
                String[] split = string.split(c15853am.f56344c, -1);
                int length = split.length;
                int i = 0;
                if (length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    i = 0;
                }
                while (i < length) {
                    String str = split[i];
                    if (!TextUtils.isEmpty(str)) {
                        c15853am.f56345d.add(str);
                    }
                    i++;
                }
            }
        }
        return c15853am;
    }

    /* renamed from: a */
    public final String m8177a() {
        String peek;
        synchronized (this.f56345d) {
            peek = this.f56345d.peek();
        }
        return peek;
    }

    /* renamed from: a */
    public final boolean m8175a(Object obj) {
        boolean remove;
        synchronized (this.f56345d) {
            remove = this.f56345d.remove(obj);
            if (remove && !this.f56347f) {
                this.f56346e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.an

                    /* renamed from: a */
                    private final C15853am f56348a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f56348a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        C15853am c15853am = this.f56348a;
                        synchronized (c15853am.f56345d) {
                            SharedPreferences.Editor edit = c15853am.f56342a.edit();
                            String str = c15853am.f56343b;
                            StringBuilder sb = new StringBuilder();
                            Iterator<String> it2 = c15853am.f56345d.iterator();
                            while (it2.hasNext()) {
                                sb.append(it2.next());
                                sb.append(c15853am.f56344c);
                            }
                            edit.putString(str, sb.toString()).commit();
                        }
                    }
                });
            }
        }
        return remove;
    }
}
