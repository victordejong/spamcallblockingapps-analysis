package com.facebook.p094a;

import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.C2095j;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: com.facebook.a.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b.class */
public class C1815b {

    /* renamed from: c */
    private static String f5519c;

    /* renamed from: a */
    private static final String f5517a = C1815b.class.getSimpleName();

    /* renamed from: b */
    private static ReentrantReadWriteLock f5518b = new ReentrantReadWriteLock();

    /* renamed from: d */
    private static volatile boolean f5520d = false;

    C1815b() {
    }

    /* renamed from: a */
    public static void m16206a() {
        if (f5520d) {
            return;
        }
        C1927m.m15850c().execute(new Runnable() { // from class: com.facebook.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                C1815b.m16203d();
            }
        });
    }

    /* renamed from: b */
    public static String m16205b() {
        if (!f5520d) {
            Log.w(f5517a, "initStore should have been called before calling setUserID");
            m16203d();
        }
        f5518b.readLock().lock();
        try {
            String str = f5519c;
            f5518b.readLock().unlock();
            return str;
        } catch (Throwable th) {
            f5518b.readLock().unlock();
            throw th;
        }
    }

    /* renamed from: d */
    public static void m16203d() {
        if (f5520d) {
            return;
        }
        f5518b.writeLock().lock();
        try {
            if (f5520d) {
                return;
            }
            f5519c = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
            f5520d = true;
            f5518b.writeLock().unlock();
        } finally {
            f5518b.writeLock().unlock();
        }
    }
}
