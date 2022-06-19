package com.facebook.appevents;

import android.preference.PreferenceManager;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p193e.p1538j.C23228f0;
/* renamed from: com.facebook.appevents.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/a.class */
public final /* synthetic */ class RunnableC0946a implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC0946a f2609a = new RunnableC0946a();

    @Override // java.lang.Runnable
    public final void run() {
        if (C1075q.f2968e) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = C1075q.f2966c;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (!C1075q.f2968e) {
                C23228f0 c23228f0 = C23228f0.f64291a;
                C1075q.f2967d = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                C1075q.f2968e = true;
            }
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            C1075q.f2966c.writeLock().unlock();
            throw th;
        }
    }
}
