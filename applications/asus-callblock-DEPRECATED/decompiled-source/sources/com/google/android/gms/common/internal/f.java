package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.b.b;
import com.google.android.gms.b.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ab;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f.class */
public final class f extends c<ab> {

    /* renamed from: a  reason: collision with root package name */
    private static final f f4004a = new f();

    private f() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i, int i2, Scope[] scopeArr) {
        return f4004a.b(context, i, i2, scopeArr);
    }

    private View b(Context context, int i, int i2, Scope[] scopeArr) {
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2, scopeArr);
            return (View) b.a(a(context).a(b.a(context), signInButtonConfig));
        } catch (Exception e) {
            throw new c.a(new StringBuilder(64).append("Could not get button with size ").append(i).append(" and color ").append(i2).toString(), e);
        }
    }

    @Override // com.google.android.gms.b.c
    public final /* synthetic */ ab a(IBinder iBinder) {
        return ab.a.a(iBinder);
    }
}
