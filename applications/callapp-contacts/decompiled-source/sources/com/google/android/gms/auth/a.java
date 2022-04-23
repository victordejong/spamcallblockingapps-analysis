package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/a.class */
public final class a extends e {

    /* renamed from: c  reason: collision with root package name */
    private static final String f22448c = e.f22530a;

    /* renamed from: d  reason: collision with root package name */
    private static final String f22449d = e.f22531b;

    private a() {
    }

    @Deprecated
    public static String a(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return e.a(context, new Account(str, "com.google"), str2, new Bundle());
    }

    public static void a(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        e.b(context, str);
    }
}
