package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
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
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings.class */
public final class ClientSettings {
    @Nullable
    private final Account zaa;
    private final Set<Scope> zab;
    private final Set<Scope> zac;
    private final Map<Api<?>, zaa> zad;
    private final int zae;
    private final View zaf;
    private final String zag;
    private final String zah;
    private final SignInOptions zai;
    private final boolean zaj;
    private Integer zak;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$Builder.class */
    public static final class Builder {
        @Nullable
        private Account zaa;
        private C0284c4<Scope> zab;
        private String zad;
        private String zae;
        private int zac = 0;
        private SignInOptions zaf = SignInOptions.zaa;

        @KeepForSdk
        public final ClientSettings build() {
            return new ClientSettings(this.zaa, this.zab, null, 0, null, this.zad, this.zae, this.zaf, false);
        }

        @KeepForSdk
        public final Builder setRealClientPackageName(String str) {
            this.zad = str;
            return this;
        }

        public final Builder zaa(@Nullable Account account) {
            this.zaa = account;
            return this;
        }

        public final Builder zaa(String str) {
            this.zae = str;
            return this;
        }

        public final Builder zaa(Collection<Scope> collection) {
            if (this.zab == null) {
                this.zab = new C0284c4<>();
            }
            this.zab.addAll(collection);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$zaa.class */
    public static final class zaa {
        public final Set<Scope> zaa;

        public zaa(Set<Scope> set) {
            Preconditions.checkNotNull(set);
            this.zaa = Collections.unmodifiableSet(set);
        }
    }

    @KeepForSdk
    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, zaa> map, int i, View view, String str, String str2, SignInOptions signInOptions) {
        this(account, set, map, i, view, str, str2, signInOptions, false);
    }

    public ClientSettings(@Nullable Account account, Set<Scope> set, Map<Api<?>, zaa> map, int i, View view, String str, String str2, SignInOptions signInOptions, boolean z) {
        this.zaa = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.zab = emptySet;
        Map<Api<?>, zaa> emptyMap = map == null ? Collections.emptyMap() : map;
        this.zad = emptyMap;
        this.zaf = view;
        this.zae = i;
        this.zag = str;
        this.zah = str2;
        this.zai = signInOptions;
        this.zaj = false;
        HashSet hashSet = new HashSet(emptySet);
        for (zaa zaaVar : emptyMap.values()) {
            hashSet.addAll(zaaVar.zaa);
        }
        this.zac = Collections.unmodifiableSet(hashSet);
    }

    @KeepForSdk
    public static ClientSettings createDefault(Context context) {
        return new GoogleApiClient.Builder(context).buildClientSettings();
    }

    @Nullable
    @KeepForSdk
    public final Account getAccount() {
        return this.zaa;
    }

    @Nullable
    @KeepForSdk
    @Deprecated
    public final String getAccountName() {
        Account account = this.zaa;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @KeepForSdk
    public final Account getAccountOrDefault() {
        Account account = this.zaa;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @KeepForSdk
    public final Set<Scope> getAllRequestedScopes() {
        return this.zac;
    }

    @KeepForSdk
    public final Set<Scope> getApplicableScopes(Api<?> api) {
        zaa zaaVar = this.zad.get(api);
        if (zaaVar == null || zaaVar.zaa.isEmpty()) {
            return this.zab;
        }
        HashSet hashSet = new HashSet(this.zab);
        hashSet.addAll(zaaVar.zaa);
        return hashSet;
    }

    @KeepForSdk
    public final int getGravityForPopups() {
        return this.zae;
    }

    @Nullable
    @KeepForSdk
    public final String getRealClientPackageName() {
        return this.zag;
    }

    @KeepForSdk
    public final Set<Scope> getRequiredScopes() {
        return this.zab;
    }

    @Nullable
    @KeepForSdk
    public final View getViewForPopups() {
        return this.zaf;
    }

    public final Map<Api<?>, zaa> zaa() {
        return this.zad;
    }

    public final void zaa(Integer num) {
        this.zak = num;
    }

    @Nullable
    public final String zab() {
        return this.zah;
    }

    public final SignInOptions zac() {
        return this.zai;
    }

    @Nullable
    public final Integer zad() {
        return this.zak;
    }

    public final boolean zae() {
        return this.zaj;
    }
}
