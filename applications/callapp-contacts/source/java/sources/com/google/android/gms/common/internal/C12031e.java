package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.p023b.C0430b;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.C14149a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.internal.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/e.class */
public final class C12031e {

    /* renamed from: a */
    public final Account f39540a;

    /* renamed from: b */
    public final Set<Scope> f39541b;

    /* renamed from: c */
    public final Set<Scope> f39542c;

    /* renamed from: d */
    public final Map<C11808a<?>, C12057x> f39543d;

    /* renamed from: e */
    public final String f39544e;

    /* renamed from: f */
    final String f39545f;

    /* renamed from: g */
    public final C14149a f39546g;

    /* renamed from: h */
    public Integer f39547h;

    /* renamed from: i */
    private final int f39548i;

    /* renamed from: j */
    private final View f39549j;

    /* renamed from: com.google.android.gms.common.internal.e$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/e$a.class */
    public static final class C12032a {

        /* renamed from: a */
        public Account f39550a;

        /* renamed from: b */
        public C0430b<Scope> f39551b;

        /* renamed from: c */
        public String f39552c;

        /* renamed from: d */
        public String f39553d;

        /* renamed from: e */
        private C14149a f39554e = C14149a.f52084a;

        /* renamed from: a */
        public final C12031e m19186a() {
            return new C12031e(this.f39550a, this.f39551b, null, 0, null, this.f39552c, this.f39553d, this.f39554e, false);
        }
    }

    public C12031e(Account account, Set<Scope> set, Map<C11808a<?>, C12057x> map, int i, View view, String str, String str2, C14149a c14149a) {
        this(account, set, map, i, view, str, str2, c14149a, false);
    }

    public C12031e(Account account, Set<Scope> set, Map<C11808a<?>, C12057x> map, int i, View view, String str, String str2, C14149a c14149a, boolean z) {
        this.f39540a = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f39541b = emptySet;
        Map<C11808a<?>, C12057x> emptyMap = map == null ? Collections.emptyMap() : map;
        this.f39543d = emptyMap;
        this.f39549j = view;
        this.f39548i = i;
        this.f39544e = str;
        this.f39545f = str2;
        this.f39546g = c14149a == null ? C14149a.f52084a : c14149a;
        HashSet hashSet = new HashSet(emptySet);
        for (C12057x c12057x : emptyMap.values()) {
            hashSet.addAll(c12057x.f39574a);
        }
        this.f39542c = Collections.unmodifiableSet(hashSet);
    }
}
