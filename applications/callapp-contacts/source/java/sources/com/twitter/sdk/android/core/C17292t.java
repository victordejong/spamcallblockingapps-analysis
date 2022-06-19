package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.twitter.sdk.android.core.internal.p486b.AbstractC17247d;
/* renamed from: com.twitter.sdk.android.core.t */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/t.class */
public class C17292t extends C17278l<TwitterAuthToken> {
    @AbstractC15952b(m7988a = "user_name")

    /* renamed from: c */
    public final String f61087c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.core.t$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/t$a.class */
    public static final class C17293a implements AbstractC17247d<C17292t> {

        /* renamed from: a */
        private final C15965f f61088a = new C15965f();

        /* renamed from: a */
        public String mo5618a(C17292t c17292t) {
            if (c17292t == null || c17292t.f61035a == 0) {
                return "";
            }
            try {
                return this.f61088a.m7962b(c17292t);
            } catch (Exception e) {
                C17282n.m5628c().mo5714a("Twitter", e.getMessage());
                return "";
            }
        }

        /* renamed from: b */
        public C17292t mo5617a(String str) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    return (C17292t) this.f61088a.m7964a(str, (Class<Object>) C17292t.class);
                } catch (Exception e) {
                    C17282n.m5628c().mo5714a("Twitter", e.getMessage());
                    return null;
                }
            }
            return null;
        }
    }

    public C17292t(TwitterAuthToken twitterAuthToken, long j, String str) {
        super(twitterAuthToken, j);
        this.f61087c = str;
    }

    @Override // com.twitter.sdk.android.core.C17278l
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.f61087c;
        String str2 = ((C17292t) obj).f61087c;
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Override // com.twitter.sdk.android.core.C17278l
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.f61087c;
        return (hashCode * 31) + (str != null ? str.hashCode() : 0);
    }
}
