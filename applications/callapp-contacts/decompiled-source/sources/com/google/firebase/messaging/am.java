package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/am.class */
final class am {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f32481a;
    private final Executor e;

    /* renamed from: d  reason: collision with root package name */
    final ArrayDeque<String> f32484d = new ArrayDeque<>();
    private boolean f = false;

    /* renamed from: b  reason: collision with root package name */
    final String f32482b = "topic_operation_queue";

    /* renamed from: c  reason: collision with root package name */
    final String f32483c = ",";

    private am(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f32481a = sharedPreferences;
        this.e = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static am a(SharedPreferences sharedPreferences, Executor executor) {
        am amVar = new am(sharedPreferences, "topic_operation_queue", ",", executor);
        synchronized (amVar.f32484d) {
            amVar.f32484d.clear();
            String string = amVar.f32481a.getString(amVar.f32482b, "");
            if (!TextUtils.isEmpty(string) && string.contains(amVar.f32483c)) {
                String[] split = string.split(amVar.f32483c, -1);
                int length = split.length;
                int i = 0;
                if (length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    i = 0;
                }
                while (i < length) {
                    String str = split[i];
                    if (!TextUtils.isEmpty(str)) {
                        amVar.f32484d.add(str);
                    }
                    i++;
                }
            }
        }
        return amVar;
    }

    public final String a() {
        String peek;
        synchronized (this.f32484d) {
            peek = this.f32484d.peek();
        }
        return peek;
    }

    public final boolean a(Object obj) {
        boolean remove;
        synchronized (this.f32484d) {
            remove = this.f32484d.remove(obj);
            if (remove && !this.f) {
                this.e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.an

                    /* renamed from: a  reason: collision with root package name */
                    private final am f32485a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f32485a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        am amVar = this.f32485a;
                        synchronized (amVar.f32484d) {
                            SharedPreferences.Editor edit = amVar.f32481a.edit();
                            String str = amVar.f32482b;
                            StringBuilder sb = new StringBuilder();
                            Iterator<String> it2 = amVar.f32484d.iterator();
                            while (it2.hasNext()) {
                                sb.append(it2.next());
                                sb.append(amVar.f32483c);
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
