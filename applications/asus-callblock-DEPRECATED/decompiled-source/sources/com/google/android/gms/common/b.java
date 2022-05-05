package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.common.a.f;
import com.google.android.gms.common.api.GoogleApiActivity;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b.class */
public final class b extends j {
    private static final b c = new b();

    /* renamed from: a  reason: collision with root package name */
    public static final int f3957a = j.f4045b;

    b() {
    }

    public static b a() {
        return c;
    }

    public static boolean a(Activity activity, int i, DialogInterface.OnCancelListener onCancelListener) {
        return e.a(i, activity, onCancelListener);
    }

    @Override // com.google.android.gms.common.j
    public final int a(Context context) {
        return super.a(context);
    }

    @Override // com.google.android.gms.common.j
    public final PendingIntent a(Context context, int i, int i2) {
        return super.a(context, i, i2);
    }

    @Override // com.google.android.gms.common.j
    public final PendingIntent a(Context context, int i, int i2, String str) {
        return super.a(context, i, i2, str);
    }

    @Override // com.google.android.gms.common.j
    public final Intent a(Context context, int i, String str) {
        return super.a(context, i, str);
    }

    public final void a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent a2;
        if (connectionResult.a()) {
            a2 = connectionResult.d;
        } else {
            int i2 = connectionResult.c;
            int i3 = i2;
            if (f.a(context)) {
                i3 = i2;
                if (i2 == 2) {
                    i3 = 42;
                }
            }
            a2 = super.a(context, i3, 0);
        }
        if (a2 != null) {
            e.a(connectionResult.c, context, GoogleApiActivity.a(context, a2, i));
        }
    }

    @Override // com.google.android.gms.common.j
    public final boolean a(int i) {
        return super.a(i);
    }
}
