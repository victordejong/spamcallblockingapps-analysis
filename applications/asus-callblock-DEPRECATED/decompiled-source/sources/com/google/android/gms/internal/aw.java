package com.google.android.gms.internal;

import android.content.DialogInterface;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/aw.class */
public abstract class aw extends ba implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f4129a;

    /* renamed from: b  reason: collision with root package name */
    private ConnectionResult f4130b;
    private int c;

    protected abstract void a();

    protected abstract void a(ConnectionResult connectionResult, int i);

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), this.c);
        this.c = -1;
        this.f4129a = false;
        this.f4130b = null;
        a();
    }
}
