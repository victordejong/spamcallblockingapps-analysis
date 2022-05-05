package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;
/* renamed from: com.facebook.internal.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a.class */
public class C2371a {

    /* renamed from: d */
    public static C2371a f2939d;

    /* renamed from: a */
    public UUID f2940a;

    /* renamed from: b */
    public Intent f2941b;

    /* renamed from: c */
    public int f2942c;

    public C2371a(int i) {
        this(i, UUID.randomUUID());
    }

    public C2371a(int i, UUID uuid) {
        this.f2940a = uuid;
        this.f2942c = i;
    }

    /* renamed from: a */
    public static C2371a m34979a(UUID uuid, int i) {
        synchronized (C2371a.class) {
            try {
                C2371a e = m34975e();
                if (e != null && e.m34982a().equals(uuid) && e.m34978b() == i) {
                    m34980a((C2371a) null);
                    return e;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m34980a(C2371a aVar) {
        boolean z;
        synchronized (C2371a.class) {
            try {
                C2371a e = m34975e();
                f2939d = aVar;
                z = e != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: e */
    public static C2371a m34975e() {
        return f2939d;
    }

    /* renamed from: a */
    public UUID m34982a() {
        return this.f2940a;
    }

    /* renamed from: a */
    public void m34981a(Intent intent) {
        this.f2941b = intent;
    }

    /* renamed from: b */
    public int m34978b() {
        return this.f2942c;
    }

    /* renamed from: c */
    public Intent m34977c() {
        return this.f2941b;
    }

    /* renamed from: d */
    public boolean m34976d() {
        return m34980a(this);
    }
}
