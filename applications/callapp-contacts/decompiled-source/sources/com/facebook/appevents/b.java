package com.facebook.appevents;

import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.g;
import com.facebook.internal.b.b.a;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19431a = "b";

    /* renamed from: c  reason: collision with root package name */
    private static String f19433c;

    /* renamed from: b  reason: collision with root package name */
    private static ReentrantReadWriteLock f19432b = new ReentrantReadWriteLock();

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f19434d = false;

    b() {
    }

    public static void a() {
        if (!f19434d) {
            h.f().execute(new Runnable() { // from class: com.facebook.appevents.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!a.a(this)) {
                        try {
                            b.d();
                        } catch (Throwable th) {
                            a.a(th, this);
                        }
                    }
                }
            });
        }
    }

    public static String b() {
        if (!f19434d) {
            Log.w(f19431a, "initStore should have been called before calling setUserID");
            d();
        }
        f19432b.readLock().lock();
        try {
            String str = f19433c;
            f19432b.readLock().unlock();
            return str;
        } catch (Throwable th) {
            f19432b.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        if (!f19434d) {
            f19432b.writeLock().lock();
            try {
                if (!f19434d) {
                    f19433c = PreferenceManager.getDefaultSharedPreferences(g.i()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                    f19434d = true;
                }
            } finally {
                f19432b.writeLock().unlock();
            }
        }
    }
}
