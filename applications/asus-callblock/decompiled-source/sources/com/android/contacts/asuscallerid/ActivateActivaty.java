package com.android.contacts.asuscallerid;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.f.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/ActivateActivaty.class */
public class ActivateActivaty extends Activity implements c.a {

    /* renamed from: a  reason: collision with root package name */
    static final String f568a = ActivateActivaty.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private c f569b;

    @Override // com.android.contacts.f.c.a
    public final void a_(boolean z) {
        Log.d(f568a, "onClick isAccept:" + z);
        if (z) {
            com.asus.a.c.i(this, true);
            com.asus.a.c.b(getApplicationContext(), true, false);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f569b = c.a(true, 1);
        this.f569b.f1285b = this;
        this.f569b.show(getFragmentManager(), "callguard_act_notice");
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f569b.f1285b = null;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        setVisible(true);
    }
}
