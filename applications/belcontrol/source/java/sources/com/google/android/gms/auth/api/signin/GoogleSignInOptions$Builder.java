package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.class */
public final class GoogleSignInOptions$Builder {
    private Set<Scope> zaa;
    private boolean zab;
    private boolean zac;
    private boolean zad;
    private String zae;
    private Account zaf;
    private String zag;
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> zah;
    private String zai;

    public GoogleSignInOptions$Builder() {
        this.zaa = new HashSet();
        this.zah = new HashMap();
    }

    public GoogleSignInOptions$Builder(GoogleSignInOptions googleSignInOptions) {
        this.zaa = new HashSet();
        this.zah = new HashMap();
        Preconditions.checkNotNull(googleSignInOptions);
        this.zaa = new HashSet(GoogleSignInOptions.zaa(googleSignInOptions));
        this.zab = GoogleSignInOptions.zab(googleSignInOptions);
        this.zac = GoogleSignInOptions.zac(googleSignInOptions);
        this.zad = GoogleSignInOptions.zad(googleSignInOptions);
        this.zae = GoogleSignInOptions.zae(googleSignInOptions);
        this.zaf = GoogleSignInOptions.zaf(googleSignInOptions);
        this.zag = GoogleSignInOptions.zag(googleSignInOptions);
        this.zah = GoogleSignInOptions.zaa(GoogleSignInOptions.zah(googleSignInOptions));
        this.zai = GoogleSignInOptions.zai(googleSignInOptions);
    }

    private final String zaa(String str) {
        Preconditions.checkNotEmpty(str);
        String str2 = this.zae;
        Preconditions.checkArgument(str2 == null || str2.equals(str), "two different server client ids provided");
        return str;
    }

    public final GoogleSignInOptions$Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        if (!this.zah.containsKey(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()))) {
            List<Scope> impliedScopes = googleSignInOptionsExtension.getImpliedScopes();
            if (impliedScopes != null) {
                this.zaa.addAll(impliedScopes);
            }
            this.zah.put(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(googleSignInOptionsExtension));
            return this;
        }
        throw new IllegalStateException("Only one extension per type may be added");
    }

    public final GoogleSignInOptions build() {
        if (this.zaa.contains(GoogleSignInOptions.zae)) {
            Set<Scope> set = this.zaa;
            Scope scope = GoogleSignInOptions.zad;
            if (set.contains(scope)) {
                this.zaa.remove(scope);
            }
        }
        if (this.zad && (this.zaf == null || !this.zaa.isEmpty())) {
            requestId();
        }
        return new GoogleSignInOptions(3, new ArrayList(this.zaa), this.zaf, this.zad, this.zab, this.zac, this.zae, this.zag, this.zah, this.zai, (zac) null);
    }

    public final GoogleSignInOptions$Builder requestEmail() {
        this.zaa.add(GoogleSignInOptions.zab);
        return this;
    }

    public final GoogleSignInOptions$Builder requestId() {
        this.zaa.add(GoogleSignInOptions.zac);
        return this;
    }

    public final GoogleSignInOptions$Builder requestIdToken(String str) {
        this.zad = true;
        this.zae = zaa(str);
        return this;
    }

    public final GoogleSignInOptions$Builder requestProfile() {
        this.zaa.add(GoogleSignInOptions.zaa);
        return this;
    }

    public final GoogleSignInOptions$Builder requestScopes(Scope scope, Scope... scopeArr) {
        this.zaa.add(scope);
        this.zaa.addAll(Arrays.asList(scopeArr));
        return this;
    }

    public final GoogleSignInOptions$Builder requestServerAuthCode(String str) {
        return requestServerAuthCode(str, false);
    }

    public final GoogleSignInOptions$Builder requestServerAuthCode(String str, boolean z) {
        this.zab = true;
        this.zae = zaa(str);
        this.zac = z;
        return this;
    }

    public final GoogleSignInOptions$Builder setAccountName(String str) {
        this.zaf = new Account(Preconditions.checkNotEmpty(str), "com.google");
        return this;
    }

    public final GoogleSignInOptions$Builder setHostedDomain(String str) {
        this.zag = Preconditions.checkNotEmpty(str);
        return this;
    }

    @KeepForSdk
    public final GoogleSignInOptions$Builder setLogSessionId(String str) {
        this.zai = str;
        return this;
    }
}
