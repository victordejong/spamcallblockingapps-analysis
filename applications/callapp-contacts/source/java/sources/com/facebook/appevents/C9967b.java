package com.facebook.appevents;

import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: com.facebook.appevents.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b.class */
public class C9967b {

    /* renamed from: a */
    private static final String f33156a = "b";

    /* renamed from: c */
    private static String f33158c;

    /* renamed from: b */
    private static ReentrantReadWriteLock f33157b = new ReentrantReadWriteLock();

    /* renamed from: d */
    private static volatile boolean f33159d = false;

    C9967b() {
    }

    /* renamed from: a */
    public static void m23724a() {
        if (f33159d) {
            return;
        }
        C10063h.m23474f().execute(new Runnable() { // from class: com.facebook.appevents.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    C9967b.m23721d();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
    }

    /* renamed from: b */
    public static String m23723b() {
        if (!f33159d) {
            Log.w(f33156a, "initStore should have been called before calling setUserID");
            m23721d();
        }
        f33157b.readLock().lock();
        try {
            String str = f33158c;
            f33157b.readLock().unlock();
            return str;
        } catch (Throwable th) {
            f33157b.readLock().unlock();
            throw th;
        }
    }

    /* renamed from: d */
    public static void m23721d() {
        if (f33159d) {
            return;
        }
        f33157b.writeLock().lock();
        try {
            if (!f33159d) {
                f33158c = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                f33159d = true;
            }
        } finally {
            f33157b.writeLock().unlock();
        }
    }
}
