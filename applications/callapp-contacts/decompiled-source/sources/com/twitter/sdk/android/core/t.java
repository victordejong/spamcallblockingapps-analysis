package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.twitter.sdk.android.core.internal.b.d;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/t.class */
public class t extends l<TwitterAuthToken> {
    @b(a = "user_name")

    /* renamed from: c  reason: collision with root package name */
    public final String f35213c;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/t$a.class */
    static final class a implements d<t> {

        /* renamed from: a  reason: collision with root package name */
        private final f f35214a = new f();

        /* JADX INFO: Access modifiers changed from: private */
        public String a(t tVar) {
            if (tVar == null || tVar.f35184a == 0) {
                return "";
            }
            try {
                return this.f35214a.b(tVar);
            } catch (Exception e) {
                n.c().a("Twitter", e.getMessage());
                return "";
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public t a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (t) this.f35214a.a(str, (Class<Object>) t.class);
            } catch (Exception e) {
                n.c().a("Twitter", e.getMessage());
                return null;
            }
        }
    }

    public t(TwitterAuthToken twitterAuthToken, long j, String str) {
        super(twitterAuthToken, j);
        this.f35213c = str;
    }

    @Override // com.twitter.sdk.android.core.l
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.f35213c;
        String str2 = ((t) obj).f35213c;
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Override // com.twitter.sdk.android.core.l
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.f35213c;
        return (hashCode * 31) + (str != null ? str.hashCode() : 0);
    }
}
