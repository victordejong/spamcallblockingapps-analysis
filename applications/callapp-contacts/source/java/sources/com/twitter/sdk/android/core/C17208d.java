package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.C15965f;
import com.google.gson.C15972g;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.p486b.AbstractC17247d;
/* renamed from: com.twitter.sdk.android.core.d */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/d.class */
public class C17208d extends C17278l<GuestAuthToken> {

    /* renamed from: com.twitter.sdk.android.core.d$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/d$a.class */
    public static final class C17209a implements AbstractC17247d<C17208d> {

        /* renamed from: a */
        private final C15965f f60932a = new C15972g().m7957a(GuestAuthToken.class, new AuthTokenAdapter()).m7960a();

        /* renamed from: a */
        public String mo5618a(C17208d c17208d) {
            if (c17208d == null || c17208d.f61035a == 0) {
                return "";
            }
            try {
                return this.f60932a.m7962b(c17208d);
            } catch (Exception e) {
                AbstractC17212f m5628c = C17282n.m5628c();
                m5628c.mo5714a("Twitter", "Failed to serialize session " + e.getMessage());
                return "";
            }
        }

        /* renamed from: b */
        public C17208d mo5617a(String str) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    return (C17208d) this.f60932a.m7964a(str, (Class<Object>) C17208d.class);
                } catch (Exception e) {
                    AbstractC17212f m5628c = C17282n.m5628c();
                    m5628c.mo5714a("Twitter", "Failed to deserialize session " + e.getMessage());
                    return null;
                }
            }
            return null;
        }
    }

    public C17208d(GuestAuthToken guestAuthToken) {
        super(guestAuthToken, 0L);
    }
}
