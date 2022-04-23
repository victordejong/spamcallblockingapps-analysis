package com.facebook.internal;

import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f19798a;

    /* renamed from: b  reason: collision with root package name */
    private UUID f19799b;

    /* renamed from: c  reason: collision with root package name */
    private int f19800c;

    public a(int i) {
        this(i, UUID.randomUUID());
    }

    public a(int i, UUID uuid) {
        this.f19799b = uuid;
        this.f19800c = i;
    }

    public static a a(UUID uuid, int i) {
        synchronized (a.class) {
            try {
                if (com.facebook.internal.b.b.a.a(a.class)) {
                    return null;
                }
                a b2 = b();
                if (b2 != null && b2.a().equals(uuid) && b2.d() == i) {
                    c();
                    return b2;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static a b() {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            return f19798a;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    private static boolean c() {
        synchronized (a.class) {
            try {
                if (com.facebook.internal.b.b.a.a(a.class)) {
                    return false;
                }
                a b2 = b();
                f19798a = null;
                return b2 != null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int d() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return 0;
        }
        try {
            return this.f19800c;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return 0;
        }
    }

    public final UUID a() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            return this.f19799b;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }
}
