package com.facebook.appevents;

import android.preference.PreferenceManager;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/b.class */
public class C2255b {

    /* renamed from: b */
    public static String f2647b;

    /* renamed from: a */
    public static ReentrantReadWriteLock f2646a = new ReentrantReadWriteLock();

    /* renamed from: c */
    public static volatile boolean f2648c = false;

    /* renamed from: com.facebook.appevents.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/b$a.class */
    public static final class RunnableC2256a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            C2255b.m35373c();
        }
    }

    /* renamed from: b */
    public static String m35374b() {
        if (!f2648c) {
            m35373c();
        }
        f2646a.readLock().lock();
        try {
            String str = f2647b;
            f2646a.readLock().unlock();
            return str;
        } catch (Throwable th) {
            f2646a.readLock().unlock();
            throw th;
        }
    }

    /* renamed from: c */
    public static void m35373c() {
        if (!f2648c) {
            f2646a.writeLock().lock();
            try {
                if (!f2648c) {
                    f2647b = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                    f2648c = true;
                    f2646a.writeLock().unlock();
                }
            } finally {
                f2646a.writeLock().unlock();
            }
        }
    }

    /* renamed from: d */
    public static void m35372d() {
        if (!f2648c) {
            C2283m.m35295b().execute(new RunnableC2256a());
        }
    }
}
