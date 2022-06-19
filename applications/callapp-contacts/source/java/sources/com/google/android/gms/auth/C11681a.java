package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import java.io.IOException;
/* renamed from: com.google.android.gms.auth.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/a.class */
public final class C11681a extends C11772e {

    /* renamed from: c */
    private static final String f38976c = C11772e.f39084a;

    /* renamed from: d */
    private static final String f38977d = C11772e.f39085b;

    private C11681a() {
    }

    @Deprecated
    /* renamed from: a */
    public static String m19578a(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return C11772e.m19513a(context, new Account(str, "com.google"), str2, new Bundle());
    }

    /* renamed from: a */
    public static void m19579a(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        C11772e.m19510b(context, str);
    }
}
