package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import p226s.C4254c;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings.class */
public final class ClientSettings {
    @Nullable
    private final Account zaa;
    private final Set<Scope> zab;
    private final Set<Scope> zac;
    private final Map<Api<?>, zab> zad;
    private final int zae;
    @Nullable
    private final View zaf;
    private final String zag;
    private final String zah;
    private final SignInOptions zai;
    private Integer zaj;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$Builder.class */
    public static final class Builder {
        @Nullable
        private Account zaa;
        private C4254c<Scope> zab;
        private String zac;
        private String zad;
        private SignInOptions zae = SignInOptions.zaa;

        @RecentlyNonNull
        @KeepForSdk
        public ClientSettings build() {
            return new ClientSettings(this.zaa, this.zab, null, 0, null, this.zac, this.zad, this.zae, false);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setRealClientPackageName(@RecentlyNonNull String str) {
            this.zac = str;
            return this;
        }

        @RecentlyNonNull
        public final Builder zaa(@Nullable Account account) {
            this.zaa = account;
            return this;
        }

        @RecentlyNonNull
        public final Builder zab(@RecentlyNonNull Collection<Scope> collection) {
            if (this.zab == null) {
                this.zab = new C4254c<>(0);
            }
            this.zab.addAll(collection);
            return this;
        }

        @RecentlyNonNull
        public final Builder zac(@RecentlyNonNull String str) {
            this.zad = str;
            return this;
        }
    }

    @KeepForSdk
    public ClientSettings(@RecentlyNonNull Account account, @RecentlyNonNull Set<Scope> set, @RecentlyNonNull Map<Api<?>, zab> map, int i, @Nullable View view, @RecentlyNonNull String str, @RecentlyNonNull String str2, @Nullable SignInOptions signInOptions) {
        this(account, set, map, i, view, str, str2, signInOptions, false);
    }

    public ClientSettings(@Nullable Account account, @RecentlyNonNull Set<Scope> set, @RecentlyNonNull Map<Api<?>, zab> map, int i, @Nullable View view, @RecentlyNonNull String str, @RecentlyNonNull String str2, @Nullable SignInOptions signInOptions, boolean z) {
        this.zaa = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.zab = emptySet;
        Map<Api<?>, zab> emptyMap = map == null ? Collections.emptyMap() : map;
        this.zad = emptyMap;
        this.zaf = view;
        this.zae = i;
        this.zag = str;
        this.zah = str2;
        this.zai = signInOptions == null ? SignInOptions.zaa : signInOptions;
        HashSet hashSet = new HashSet(emptySet);
        for (zab zabVar : emptyMap.values()) {
            hashSet.addAll(zabVar.zaa);
        }
        this.zac = Collections.unmodifiableSet(hashSet);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static ClientSettings createDefault(@RecentlyNonNull Context context) {
        return new GoogleApiClient.Builder(context).buildClientSettings();
    }

    @RecentlyNullable
    @KeepForSdk
    public Account getAccount() {
        return this.zaa;
    }

    @RecentlyNullable
    @KeepForSdk
    @Deprecated
    public String getAccountName() {
        Account account = this.zaa;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Account getAccountOrDefault() {
        Account account = this.zaa;
        return account != null ? account : new Account("<<default account>>", AccountType.GOOGLE);
    }

    @RecentlyNonNull
    @KeepForSdk
    public Set<Scope> getAllRequestedScopes() {
        return this.zac;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Set<Scope> getApplicableScopes(@RecentlyNonNull Api<?> api) {
        zab zabVar = this.zad.get(api);
        if (zabVar == null || zabVar.zaa.isEmpty()) {
            return this.zab;
        }
        HashSet hashSet = new HashSet(this.zab);
        hashSet.addAll(zabVar.zaa);
        return hashSet;
    }

    @KeepForSdk
    public int getGravityForPopups() {
        return this.zae;
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getRealClientPackageName() {
        return this.zag;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Set<Scope> getRequiredScopes() {
        return this.zab;
    }

    @RecentlyNullable
    @KeepForSdk
    public View getViewForPopups() {
        return this.zaf;
    }

    @RecentlyNonNull
    public final Map<Api<?>, zab> zaa() {
        return this.zad;
    }

    @RecentlyNullable
    public final String zab() {
        return this.zah;
    }

    @RecentlyNonNull
    public final SignInOptions zac() {
        return this.zai;
    }

    @RecentlyNullable
    public final Integer zad() {
        return this.zaj;
    }

    public final void zae(@RecentlyNonNull Integer num) {
        this.zaj = num;
    }
}
