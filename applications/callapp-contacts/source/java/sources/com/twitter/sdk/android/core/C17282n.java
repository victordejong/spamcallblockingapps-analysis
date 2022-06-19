package com.twitter.sdk.android.core;

import android.content.Context;
import com.twitter.sdk.android.core.internal.C17233a;
import com.twitter.sdk.android.core.internal.C17243b;
import com.twitter.sdk.android.core.internal.C17248c;
import java.util.concurrent.ExecutorService;
/* renamed from: com.twitter.sdk.android.core.n */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/n.class */
public final class C17282n {

    /* renamed from: a */
    static final AbstractC17212f f61049a = new C17207c();

    /* renamed from: b */
    static volatile C17282n f61050b;

    /* renamed from: c */
    final Context f61051c;

    /* renamed from: d */
    final ExecutorService f61052d;

    /* renamed from: e */
    final TwitterAuthConfig f61053e;

    /* renamed from: f */
    final C17233a f61054f;

    /* renamed from: g */
    private final AbstractC17212f f61055g;

    /* renamed from: h */
    private final boolean f61056h;

    private C17282n(C17284p c17284p) {
        Context context = c17284p.f61059a;
        this.f61051c = context;
        this.f61054f = new C17233a(context);
        if (c17284p.f61061c == null) {
            this.f61053e = new TwitterAuthConfig(C17243b.m5676a(context, "com.twitter.sdk.android.CONSUMER_KEY", ""), C17243b.m5676a(context, "com.twitter.sdk.android.CONSUMER_SECRET", ""));
        } else {
            this.f61053e = c17284p.f61061c;
        }
        if (c17284p.f61062d == null) {
            this.f61052d = C17248c.m5668a("twitter-worker");
        } else {
            this.f61052d = c17284p.f61062d;
        }
        if (c17284p.f61060b == null) {
            this.f61055g = f61049a;
        } else {
            this.f61055g = c17284p.f61060b;
        }
        if (c17284p.f61063e == null) {
            this.f61056h = false;
        } else {
            this.f61056h = c17284p.f61063e.booleanValue();
        }
    }

    /* renamed from: a */
    public static C17282n m5632a() {
        if (f61050b != null) {
            return f61050b;
        }
        throw new IllegalStateException("Must initialize Twitter before using getInstance()");
    }

    /* renamed from: a */
    public static void m5631a(C17284p c17284p) {
        m5629b(c17284p);
    }

    /* renamed from: b */
    private static C17282n m5629b(C17284p c17284p) {
        synchronized (C17282n.class) {
            try {
                if (f61050b != null) {
                    return f61050b;
                }
                C17282n c17282n = new C17282n(c17284p);
                f61050b = c17282n;
                return c17282n;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m5630b() {
        if (f61050b == null) {
            return false;
        }
        return f61050b.f61056h;
    }

    /* renamed from: c */
    public static AbstractC17212f m5628c() {
        return f61050b == null ? f61049a : f61050b.f61055g;
    }
}
