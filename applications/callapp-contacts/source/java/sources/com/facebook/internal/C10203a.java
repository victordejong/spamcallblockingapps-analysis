package com.facebook.internal;

import com.facebook.internal.p299b.p301b.C10249a;
import java.util.UUID;
/* renamed from: com.facebook.internal.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/a.class */
public class C10203a {

    /* renamed from: a */
    private static C10203a f33636a;

    /* renamed from: b */
    private UUID f33637b;

    /* renamed from: c */
    private int f33638c;

    public C10203a(int i) {
        this(i, UUID.randomUUID());
    }

    public C10203a(int i, UUID uuid) {
        this.f33637b = uuid;
        this.f33638c = i;
    }

    /* renamed from: a */
    public static C10203a m23268a(UUID uuid, int i) {
        synchronized (C10203a.class) {
            try {
                if (C10249a.m23108a(C10203a.class)) {
                    return null;
                }
                C10203a m23267b = m23267b();
                if (m23267b != null && m23267b.m23269a().equals(uuid) && m23267b.m23265d() == i) {
                    m23266c();
                    return m23267b;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static C10203a m23267b() {
        if (C10249a.m23108a(C10203a.class)) {
            return null;
        }
        try {
            return f33636a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10203a.class);
            return null;
        }
    }

    /* renamed from: c */
    private static boolean m23266c() {
        synchronized (C10203a.class) {
            try {
                if (C10249a.m23108a(C10203a.class)) {
                    return false;
                }
                C10203a m23267b = m23267b();
                f33636a = null;
                return m23267b != null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private int m23265d() {
        if (C10249a.m23108a(this)) {
            return 0;
        }
        try {
            return this.f33638c;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return 0;
        }
    }

    /* renamed from: a */
    public final UUID m23269a() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return this.f33637b;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }
}
