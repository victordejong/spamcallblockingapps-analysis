package android.support.v4.app;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.ag;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/ae.class */
public final class ae extends ag.a {

    /* renamed from: a  reason: collision with root package name */
    public static final ag.a.AbstractC0004a f51a;
    private static final a g;

    /* renamed from: b  reason: collision with root package name */
    private final String f52b;
    private final CharSequence c;
    private final CharSequence[] d;
    private final boolean e;
    private final Bundle f;

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ae$a.class */
    interface a {
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ae$b.class */
    static final class b implements a {
        b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ae$c.class */
    static final class c implements a {
        c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ae$d.class */
    static final class d implements a {
        d() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 20) {
            g = new b();
        } else if (Build.VERSION.SDK_INT >= 16) {
            g = new d();
        } else {
            g = new c();
        }
        f51a = new ag.a.AbstractC0004a() { // from class: android.support.v4.app.ae.1
        };
    }

    @Override // android.support.v4.app.ag.a
    public final String a() {
        return this.f52b;
    }

    @Override // android.support.v4.app.ag.a
    public final CharSequence b() {
        return this.c;
    }

    @Override // android.support.v4.app.ag.a
    public final CharSequence[] c() {
        return this.d;
    }

    @Override // android.support.v4.app.ag.a
    public final boolean d() {
        return this.e;
    }

    @Override // android.support.v4.app.ag.a
    public final Bundle e() {
        return this.f;
    }
}
