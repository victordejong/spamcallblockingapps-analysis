package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.b.b;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final Account f22881a;

    /* renamed from: b  reason: collision with root package name */
    public final Set<Scope> f22882b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<Scope> f22883c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<com.google.android.gms.common.api.a<?>, x> f22884d;
    public final String e;
    final String f;
    public final com.google.android.gms.signin.a g;
    public Integer h;
    private final int i;
    private final View j;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Account f22885a;

        /* renamed from: b  reason: collision with root package name */
        public b<Scope> f22886b;

        /* renamed from: c  reason: collision with root package name */
        public String f22887c;

        /* renamed from: d  reason: collision with root package name */
        public String f22888d;
        private com.google.android.gms.signin.a e = com.google.android.gms.signin.a.f29979a;

        public final e a() {
            return new e(this.f22885a, this.f22886b, null, 0, null, this.f22887c, this.f22888d, this.e, false);
        }
    }

    public e(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, x> map, int i, View view, String str, String str2, com.google.android.gms.signin.a aVar) {
        this(account, set, map, i, view, str, str2, aVar, false);
    }

    public e(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, x> map, int i, View view, String str, String str2, com.google.android.gms.signin.a aVar, boolean z) {
        this.f22881a = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f22882b = emptySet;
        Map<com.google.android.gms.common.api.a<?>, x> emptyMap = map == null ? Collections.emptyMap() : map;
        this.f22884d = emptyMap;
        this.j = view;
        this.i = i;
        this.e = str;
        this.f = str2;
        this.g = aVar == null ? com.google.android.gms.signin.a.f29979a : aVar;
        HashSet hashSet = new HashSet(emptySet);
        for (x xVar : emptyMap.values()) {
            hashSet.addAll(xVar.f22908a);
        }
        this.f22883c = Collections.unmodifiableSet(hashSet);
    }
}
