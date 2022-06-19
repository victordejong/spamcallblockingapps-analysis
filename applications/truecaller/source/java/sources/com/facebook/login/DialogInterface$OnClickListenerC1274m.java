package com.facebook.login;

import android.content.DialogInterface;
import com.facebook.internal.C1168q0;
import java.util.Date;
/* renamed from: com.facebook.login.m */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/m.class */
public class DialogInterface$OnClickListenerC1274m implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f3458a;

    /* renamed from: b */
    public final /* synthetic */ C1168q0.C1170b f3459b;

    /* renamed from: c */
    public final /* synthetic */ String f3460c;

    /* renamed from: d */
    public final /* synthetic */ Date f3461d;

    /* renamed from: e */
    public final /* synthetic */ Date f3462e;

    /* renamed from: f */
    public final /* synthetic */ DeviceAuthDialog f3463f;

    public DialogInterface$OnClickListenerC1274m(DeviceAuthDialog deviceAuthDialog, String str, C1168q0.C1170b c1170b, String str2, Date date, Date date2) {
        this.f3463f = deviceAuthDialog;
        this.f3458a = str;
        this.f3459b = c1170b;
        this.f3460c = str2;
        this.f3461d = date;
        this.f3462e = date2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DeviceAuthDialog.m41607PA(this.f3463f, this.f3458a, this.f3459b, this.f3460c, this.f3461d, this.f3462e);
    }
}
