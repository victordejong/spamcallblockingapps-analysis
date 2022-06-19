package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p020b.p036e.C1491b;
import p078c.p084c.p085a.p086a.p095c.C1878a;
/* renamed from: com.google.android.gms.common.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e.class */
public final class C6121e {

    /* renamed from: a */
    private final Account f19531a;

    /* renamed from: b */
    private final Set<Scope> f19532b;

    /* renamed from: c */
    private final Set<Scope> f19533c;

    /* renamed from: d */
    private final Map<C5984a<?>, C6189y> f19534d;

    /* renamed from: e */
    private final int f19535e;

    /* renamed from: f */
    private final View f19536f;

    /* renamed from: g */
    private final String f19537g;

    /* renamed from: h */
    private final String f19538h;

    /* renamed from: i */
    private final C1878a f19539i;

    /* renamed from: j */
    private Integer f19540j;

    /* renamed from: com.google.android.gms.common.internal.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e$a.class */
    public static final class C6122a {

        /* renamed from: a */
        private Account f19541a;

        /* renamed from: b */
        private C1491b<Scope> f19542b;

        /* renamed from: c */
        private String f19543c;

        /* renamed from: d */
        private String f19544d;

        /* renamed from: e */
        private C1878a f19545e = C1878a.f6775d;

        @RecentlyNonNull
        /* renamed from: a */
        public C6121e m17074a() {
            return new C6121e(this.f19541a, this.f19542b, null, 0, null, this.f19543c, this.f19544d, this.f19545e, false);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C6122a m17073b(@RecentlyNonNull String str) {
            this.f19543c = str;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public final C6122a m17072c(Account account) {
            this.f19541a = account;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public final C6122a m17071d(@RecentlyNonNull Collection<Scope> collection) {
            if (this.f19542b == null) {
                this.f19542b = new C1491b<>();
            }
            this.f19542b.addAll(collection);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public final C6122a m17070e(@RecentlyNonNull String str) {
            this.f19544d = str;
            return this;
        }
    }

    public C6121e(Account account, @RecentlyNonNull Set<Scope> set, @RecentlyNonNull Map<C5984a<?>, C6189y> map, int i, View view, @RecentlyNonNull String str, @RecentlyNonNull String str2, C1878a c1878a, boolean z) {
        this.f19531a = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f19532b = emptySet;
        Map<C5984a<?>, C6189y> emptyMap = map == null ? Collections.emptyMap() : map;
        this.f19534d = emptyMap;
        this.f19536f = view;
        this.f19535e = i;
        this.f19537g = str;
        this.f19538h = str2;
        this.f19539i = c1878a == null ? C1878a.f6775d : c1878a;
        HashSet hashSet = new HashSet(emptySet);
        for (C6189y c6189y : emptyMap.values()) {
            hashSet.addAll(c6189y.f19616a);
        }
        this.f19533c = Collections.unmodifiableSet(hashSet);
    }

    @RecentlyNullable
    /* renamed from: a */
    public Account m17085a() {
        return this.f19531a;
    }

    @RecentlyNullable
    @Deprecated
    /* renamed from: b */
    public String m17084b() {
        Account account = this.f19531a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public Account m17083c() {
        Account account = this.f19531a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @RecentlyNonNull
    /* renamed from: d */
    public Set<Scope> m17082d() {
        return this.f19533c;
    }

    @RecentlyNonNull
    /* renamed from: e */
    public Set<Scope> m17081e(@RecentlyNonNull C5984a<?> c5984a) {
        C6189y c6189y = this.f19534d.get(c5984a);
        if (c6189y == null || c6189y.f19616a.isEmpty()) {
            return this.f19532b;
        }
        HashSet hashSet = new HashSet(this.f19532b);
        hashSet.addAll(c6189y.f19616a);
        return hashSet;
    }

    @RecentlyNonNull
    /* renamed from: f */
    public String m17080f() {
        return this.f19537g;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public Set<Scope> m17079g() {
        return this.f19532b;
    }

    @RecentlyNullable
    /* renamed from: h */
    public final String m17078h() {
        return this.f19538h;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public final C1878a m17077i() {
        return this.f19539i;
    }

    @RecentlyNullable
    /* renamed from: j */
    public final Integer m17076j() {
        return this.f19540j;
    }

    /* renamed from: k */
    public final void m17075k(@RecentlyNonNull Integer num) {
        this.f19540j = num;
    }
}
