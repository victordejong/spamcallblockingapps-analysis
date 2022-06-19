package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1788g.C26177c;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings.class */
public final class ClientSettings {

    /* renamed from: a */
    public final Account f5942a;

    /* renamed from: b */
    public final Set<Scope> f5943b;

    /* renamed from: c */
    public final Set<Scope> f5944c;

    /* renamed from: d */
    public final Map<Api<?>, zab> f5945d;

    /* renamed from: e */
    public final String f5946e;

    /* renamed from: f */
    public final String f5947f;

    /* renamed from: g */
    public final SignInOptions f5948g;

    /* renamed from: h */
    public Integer f5949h;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public Account f5950a;

        /* renamed from: b */
        public C26177c<Scope> f5951b;

        /* renamed from: c */
        public String f5952c;

        /* renamed from: d */
        public String f5953d;

        /* renamed from: e */
        public SignInOptions f5954e = SignInOptions.a;

        @RecentlyNonNull
        @KeepForSdk
        /* renamed from: a */
        public ClientSettings m38919a() {
            return new ClientSettings(this.f5950a, this.f5951b, null, 0, null, this.f5952c, this.f5953d, this.f5954e);
        }
    }

    public ClientSettings(Account account, @RecentlyNonNull Set set, @RecentlyNonNull Map map, int i, View view, @RecentlyNonNull String str, @RecentlyNonNull String str2, SignInOptions signInOptions) {
        this.f5942a = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f5943b = emptySet;
        Map emptyMap = map == null ? Collections.emptyMap() : map;
        this.f5945d = emptyMap;
        this.f5946e = str;
        this.f5947f = str2;
        this.f5948g = signInOptions == null ? SignInOptions.a : signInOptions;
        HashSet hashSet = new HashSet(emptySet);
        for (zab zabVar : emptyMap.values()) {
            Objects.requireNonNull(zabVar);
            hashSet.addAll(null);
        }
        this.f5944c = Collections.unmodifiableSet(hashSet);
    }
}
