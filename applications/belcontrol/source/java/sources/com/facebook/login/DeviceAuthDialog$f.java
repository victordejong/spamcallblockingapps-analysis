package com.facebook.login;

import android.content.DialogInterface;
import fn0;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$f.class */
public class DeviceAuthDialog$f implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f2523a;

    /* renamed from: b */
    public final /* synthetic */ fn0.e f2524b;

    /* renamed from: c */
    public final /* synthetic */ String f2525c;

    /* renamed from: d */
    public final /* synthetic */ Date f2526d;

    /* renamed from: f */
    public final /* synthetic */ Date f2527f;

    /* renamed from: g */
    public final /* synthetic */ DeviceAuthDialog f2528g;

    public DeviceAuthDialog$f(DeviceAuthDialog deviceAuthDialog, String str, fn0.e eVar, String str2, Date date, Date date2) {
        this.f2528g = deviceAuthDialog;
        this.f2523a = str;
        this.f2524b = eVar;
        this.f2525c = str2;
        this.f2526d = date;
        this.f2527f = date2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DeviceAuthDialog.v(this.f2528g, this.f2523a, this.f2524b, this.f2525c, this.f2526d, this.f2527f);
    }
}
