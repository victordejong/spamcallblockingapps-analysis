package com.android.contacts.contactpicker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/android/contacts/contactpicker/a.class */
public final class a implements Serializable {
    public static int g;

    /* renamed from: a  reason: collision with root package name */
    public boolean f768a = false;

    /* renamed from: b  reason: collision with root package name */
    public boolean f769b = false;
    public boolean c = false;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;

    public a() {
        g = -1;
    }

    public static void a(Activity activity, a aVar) {
        Intent intent = activity.getIntent();
        if (intent != null) {
            Bundle bundleExtra = intent.getBundleExtra("bundle");
            boolean z = (intent.getAction() == null || !intent.getAction().toString().equals("android.appwidget.action.APPWIDGET_CONFIGURE")) ? intent.getBooleanExtra("WIDGET_PICKER", false) : true;
            if (intent.getAction() != null && intent.getAction().toString().equals("android.intent.action.ASUS_MULTIPLE_PICKER_ADDTOBLOCKLIST")) {
                g = 1;
            }
            if (z) {
                aVar.f = true;
                return;
            }
            if (bundleExtra != null) {
                aVar.f768a = true;
                aVar.f769b = bundleExtra.getBoolean("bDisplayPhone");
                aVar.c = bundleExtra.getBoolean("bDisplayEmail");
                aVar.d = bundleExtra.getBoolean("bDisplayAddress");
                aVar.e = bundleExtra.getBoolean("bVcard");
            } else {
                aVar.f769b = true;
                aVar.c = true;
                aVar.d = true;
                aVar.e = false;
            }
            if (aVar.e) {
                aVar.f769b = true;
                aVar.c = true;
                aVar.d = true;
            }
        }
    }
}
