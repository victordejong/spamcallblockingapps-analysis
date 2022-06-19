package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.appset.AbstractC5869b;
import com.google.android.gms.appset.C5870c;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6230h;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.appset.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/k.class */
public final class C7249k implements AbstractC5869b {

    /* renamed from: a */
    private static AbstractC5869b f34227a;

    /* renamed from: b */
    private final Context f34228b;

    /* renamed from: c */
    private boolean f34229c;

    /* renamed from: d */
    private final ScheduledExecutorService f34230d;

    /* renamed from: e */
    private final ExecutorService f34231e = Executors.newSingleThreadExecutor();

    C7249k(Context context) {
        this.f34229c = false;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f34230d = newSingleThreadScheduledExecutor;
        this.f34228b = context;
        if (!this.f34229c) {
            newSingleThreadScheduledExecutor.scheduleAtFixedRate(new RunnableC7248j(this, null), 0L, 86400L, TimeUnit.SECONDS);
            this.f34229c = true;
        }
    }

    /* renamed from: d */
    public static AbstractC5869b m7839d(Context context) {
        AbstractC5869b abstractC5869b;
        synchronized (C7249k.class) {
            try {
                C6155o.m17017k(context, "Context must not be null");
                if (f34227a == null) {
                    f34227a = new C7249k(context.getApplicationContext());
                }
                abstractC5869b = f34227a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC5869b;
    }

    /* renamed from: f */
    public static final void m7837f(Context context) {
        if (!m7836g(context).edit().remove("app_set_id").commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            Log.e("AppSet", valueOf.length() != 0 ? "Failed to clear app set ID generated for App ".concat(valueOf) : new String("Failed to clear app set ID generated for App "));
        }
        if (!m7836g(context).edit().remove("app_set_id_last_used_time").commit()) {
            String valueOf2 = String.valueOf(context.getPackageName());
            Log.e("AppSet", valueOf2.length() != 0 ? "Failed to clear app set ID last used time for App ".concat(valueOf2) : new String("Failed to clear app set ID last used time for App "));
        }
    }

    /* renamed from: g */
    private static final SharedPreferences m7836g(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    /* renamed from: h */
    private static final void m7835h(Context context) {
        if (!m7836g(context).edit().putLong("app_set_id_last_used_time", C6230h.m16804d().mo16807a()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            Log.e("AppSet", valueOf.length() != 0 ? "Failed to store app set ID last used time for App ".concat(valueOf) : new String("Failed to store app set ID last used time for App "));
            throw new zzk("Failed to store the app set ID last used time.");
        }
    }

    @Override // com.google.android.gms.appset.AbstractC5869b
    /* renamed from: a */
    public final AbstractC7966g<C5870c> mo7831a() {
        final C7968h c7968h = new C7968h();
        this.f34231e.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.h
            @Override // java.lang.Runnable
            public final void run() {
                C7249k.this.m7838e(c7968h);
            }
        });
        return c7968h.m5807a();
    }

    /* renamed from: b */
    public final long m7841b() {
        long j = m7836g(this.f34228b).getLong("app_set_id_last_used_time", -1L);
        if (j != -1) {
            return j + 33696000000L;
        }
        return -1L;
    }

    /* renamed from: e */
    public final /* synthetic */ void m7838e(C7968h c7968h) {
        String string = m7836g(this.f34228b).getString("app_set_id", null);
        long m7841b = m7841b();
        if (string == null || C6230h.m16804d().mo16807a() > m7841b) {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.f34228b;
                if (!m7836g(context).edit().putString("app_set_id", string).commit()) {
                    String valueOf = String.valueOf(context.getPackageName());
                    Log.e("AppSet", valueOf.length() != 0 ? "Failed to store app set ID generated for App ".concat(valueOf) : new String("Failed to store app set ID generated for App "));
                    throw new zzk("Failed to store the app set ID.");
                }
                m7835h(context);
                Context context2 = this.f34228b;
                if (!m7836g(context2).edit().putLong("app_set_id_creation_time", C6230h.m16804d().mo16807a()).commit()) {
                    String valueOf2 = String.valueOf(context2.getPackageName());
                    Log.e("AppSet", valueOf2.length() != 0 ? "Failed to store app set ID creation time for App ".concat(valueOf2) : new String("Failed to store app set ID creation time for App "));
                    throw new zzk("Failed to store the app set ID creation time.");
                }
            } catch (zzk e) {
                c7968h.m5806b(e);
                return;
            }
        } else {
            try {
                m7835h(this.f34228b);
            } catch (zzk e2) {
                c7968h.m5806b(e2);
                return;
            }
        }
        c7968h.m5805c(new C5870c(string, 1));
    }
}
