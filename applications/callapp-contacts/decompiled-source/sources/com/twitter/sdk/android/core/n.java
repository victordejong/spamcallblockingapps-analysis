package com.twitter.sdk.android.core;

import android.content.Context;
import com.twitter.sdk.android.core.internal.a;
import com.twitter.sdk.android.core.internal.b;
import com.twitter.sdk.android.core.internal.c;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final f f35186a = new c();

    /* renamed from: b  reason: collision with root package name */
    static volatile n f35187b;

    /* renamed from: c  reason: collision with root package name */
    final Context f35188c;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f35189d;
    final TwitterAuthConfig e;
    final a f;
    private final f g;
    private final boolean h;

    private n(p pVar) {
        Context context = pVar.f35192a;
        this.f35188c = context;
        this.f = new a(context);
        if (pVar.f35194c == null) {
            this.e = new TwitterAuthConfig(b.a(context, "com.twitter.sdk.android.CONSUMER_KEY", ""), b.a(context, "com.twitter.sdk.android.CONSUMER_SECRET", ""));
        } else {
            this.e = pVar.f35194c;
        }
        if (pVar.f35195d == null) {
            this.f35189d = c.a("twitter-worker");
        } else {
            this.f35189d = pVar.f35195d;
        }
        if (pVar.f35193b == null) {
            this.g = f35186a;
        } else {
            this.g = pVar.f35193b;
        }
        if (pVar.e == null) {
            this.h = false;
        } else {
            this.h = pVar.e.booleanValue();
        }
    }

    public static n a() {
        if (f35187b != null) {
            return f35187b;
        }
        throw new IllegalStateException("Must initialize Twitter before using getInstance()");
    }

    public static void a(p pVar) {
        b(pVar);
    }

    private static n b(p pVar) {
        synchronized (n.class) {
            try {
                if (f35187b == null) {
                    n nVar = new n(pVar);
                    f35187b = nVar;
                    return nVar;
                }
                return f35187b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean b() {
        if (f35187b == null) {
            return false;
        }
        return f35187b.h;
    }

    public static f c() {
        return f35187b == null ? f35186a : f35187b.g;
    }
}
