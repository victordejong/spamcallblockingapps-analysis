package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.f;
import com.google.gson.g;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/d.class */
public class d extends l<GuestAuthToken> {

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/d$a.class */
    public static final class a implements com.twitter.sdk.android.core.internal.b.d<d> {

        /* renamed from: a  reason: collision with root package name */
        private final f f35091a = new g().a(GuestAuthToken.class, new AuthTokenAdapter()).a();

        /* JADX INFO: Access modifiers changed from: private */
        public String a(d dVar) {
            if (dVar == null || dVar.f35184a == 0) {
                return "";
            }
            try {
                return this.f35091a.b(dVar);
            } catch (Exception e) {
                f c2 = n.c();
                c2.a("Twitter", "Failed to serialize session " + e.getMessage());
                return "";
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public d a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (d) this.f35091a.a(str, (Class<Object>) d.class);
            } catch (Exception e) {
                f c2 = n.c();
                c2.a("Twitter", "Failed to deserialize session " + e.getMessage());
                return null;
            }
        }
    }

    public d(GuestAuthToken guestAuthToken) {
        super(guestAuthToken, 0L);
    }
}
