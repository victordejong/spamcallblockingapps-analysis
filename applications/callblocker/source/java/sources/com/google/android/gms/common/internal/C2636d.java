package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.p013b.C0375b;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.p127b.C2447a;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.common.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d.class */
public final class C2636d {

    /* renamed from: a */
    private final Account f7361a;

    /* renamed from: b */
    private final Set<Scope> f7362b;

    /* renamed from: c */
    private final Set<Scope> f7363c;

    /* renamed from: d */
    private final Map<C2471a<?>, C2638b> f7364d;

    /* renamed from: e */
    private final int f7365e;

    /* renamed from: f */
    private final View f7366f;

    /* renamed from: g */
    private final String f7367g;

    /* renamed from: h */
    private final String f7368h;

    /* renamed from: i */
    private final C2447a f7369i;

    /* renamed from: j */
    private final boolean f7370j;

    /* renamed from: k */
    private Integer f7371k;

    /* renamed from: com.google.android.gms.common.internal.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$a.class */
    public static final class C2637a {

        /* renamed from: a */
        private Account f7372a;

        /* renamed from: b */
        private C0375b<Scope> f7373b;

        /* renamed from: c */
        private Map<C2471a<?>, C2638b> f7374c;

        /* renamed from: e */
        private View f7376e;

        /* renamed from: f */
        private String f7377f;

        /* renamed from: g */
        private String f7378g;

        /* renamed from: i */
        private boolean f7380i;

        /* renamed from: d */
        private int f7375d = 0;

        /* renamed from: h */
        private C2447a f7379h = C2447a.f6971a;

        /* renamed from: a */
        public final C2637a m14040a(Account account) {
            this.f7372a = account;
            return this;
        }

        /* renamed from: a */
        public final C2637a m14039a(String str) {
            this.f7377f = str;
            return this;
        }

        /* renamed from: a */
        public final C2637a m14038a(Collection<Scope> collection) {
            if (this.f7373b == null) {
                this.f7373b = new C0375b<>();
            }
            this.f7373b.addAll(collection);
            return this;
        }

        /* renamed from: a */
        public final C2636d m14041a() {
            return new C2636d(this.f7372a, this.f7373b, this.f7374c, this.f7375d, this.f7376e, this.f7377f, this.f7378g, this.f7379h, this.f7380i);
        }

        /* renamed from: b */
        public final C2637a m14037b(String str) {
            this.f7378g = str;
            return this;
        }
    }

    /* renamed from: com.google.android.gms.common.internal.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$b.class */
    public static final class C2638b {

        /* renamed from: a */
        public final Set<Scope> f7381a;
    }

    public C2636d(Account account, Set<Scope> set, Map<C2471a<?>, C2638b> map, int i, View view, String str, String str2, C2447a c2447a, boolean z) {
        this.f7361a = account;
        this.f7362b = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f7364d = map == null ? Collections.emptyMap() : map;
        this.f7366f = view;
        this.f7365e = i;
        this.f7367g = str;
        this.f7368h = str2;
        this.f7369i = c2447a;
        this.f7370j = z;
        HashSet hashSet = new HashSet(this.f7362b);
        for (C2638b c2638b : this.f7364d.values()) {
            hashSet.addAll(c2638b.f7381a);
        }
        this.f7363c = Collections.unmodifiableSet(hashSet);
    }

    @Nullable
    @Deprecated
    /* renamed from: a */
    public final String m14052a() {
        return this.f7361a != null ? this.f7361a.name : null;
    }

    /* renamed from: a */
    public final Set<Scope> m14051a(C2471a<?> c2471a) {
        HashSet hashSet;
        C2638b c2638b = this.f7364d.get(c2471a);
        if (c2638b == null || c2638b.f7381a.isEmpty()) {
            hashSet = this.f7362b;
        } else {
            hashSet = new HashSet(this.f7362b);
            hashSet.addAll(c2638b.f7381a);
        }
        return hashSet;
    }

    /* renamed from: a */
    public final void m14050a(Integer num) {
        this.f7371k = num;
    }

    @Nullable
    /* renamed from: b */
    public final Account m14049b() {
        return this.f7361a;
    }

    /* renamed from: c */
    public final Account m14048c() {
        return this.f7361a != null ? this.f7361a : new Account("<<default account>>", "com.google");
    }

    /* renamed from: d */
    public final Set<Scope> m14047d() {
        return this.f7362b;
    }

    /* renamed from: e */
    public final Set<Scope> m14046e() {
        return this.f7363c;
    }

    @Nullable
    /* renamed from: f */
    public final String m14045f() {
        return this.f7367g;
    }

    @Nullable
    /* renamed from: g */
    public final String m14044g() {
        return this.f7368h;
    }

    @Nullable
    /* renamed from: h */
    public final C2447a m14043h() {
        return this.f7369i;
    }

    @Nullable
    /* renamed from: i */
    public final Integer m14042i() {
        return this.f7371k;
    }
}
