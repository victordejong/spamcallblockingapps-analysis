package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.C5921i;
import com.google.android.gms.auth.api.signin.internal.C5928p;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C6107b;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
/* renamed from: com.google.android.gms.auth.api.signin.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/a.class */
public final class C5901a {
    /* renamed from: a */
    public static C5903c m17622a(Activity activity, GoogleSignInOptions googleSignInOptions) {
        return new C5903c(activity, (GoogleSignInOptions) C6155o.m17018j(googleSignInOptions));
    }

    /* renamed from: b */
    public static C5903c m17621b(Context context, GoogleSignInOptions googleSignInOptions) {
        return new C5903c(context, (GoogleSignInOptions) C6155o.m17018j(googleSignInOptions));
    }

    /* renamed from: c */
    public static GoogleSignInAccount m17620c(Context context) {
        return C5928p.m17577c(context).m17575e();
    }

    /* renamed from: d */
    public static AbstractC7966g<GoogleSignInAccount> m17619d(Intent intent) {
        C5906d m17586a = C5921i.m17586a(intent);
        if (m17586a == null) {
            return C7970j.m5799d(C6107b.m17143a(Status.f19169f));
        }
        GoogleSignInAccount m17613a = m17586a.m17613a();
        return (!m17586a.mo5849e().m17486p0() || m17613a == null) ? C7970j.m5799d(C6107b.m17143a(m17586a.mo5849e())) : C7970j.m5798e(m17613a);
    }
}
