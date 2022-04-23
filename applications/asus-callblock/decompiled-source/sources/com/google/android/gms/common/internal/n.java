package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.bo;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final Account f4022a;

    /* renamed from: b  reason: collision with root package name */
    final Set<Scope> f4023b;
    public final String c;
    final String d;
    public final bo e;
    public Integer f;
    private final Set<Scope> g;
    private final Map<com.google.android.gms.common.api.a<?>, a> h;
    private final int i;
    private final View j;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Scope> f4024a;
    }

    public n(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, a> map, int i, View view, String str, String str2, bo boVar) {
        this.f4022a = account;
        this.g = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.h = map == null ? Collections.EMPTY_MAP : map;
        this.j = view;
        this.i = i;
        this.c = str;
        this.d = str2;
        this.e = boVar;
        HashSet hashSet = new HashSet(this.g);
        for (a aVar : this.h.values()) {
            hashSet.addAll(aVar.f4024a);
        }
        this.f4023b = Collections.unmodifiableSet(hashSet);
    }
}
