package com.truecaller.callhero_assistant.deactivate;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1188r3.AbstractC19897a;
import p193e.p194a.p1195s.p1200m.C20035b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/callhero_assistant/deactivate/DeactivateServiceActivity;", "Le/a/r3/a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/deactivate/DeactivateServiceActivity.class */
public final class DeactivateServiceActivity extends AbstractC19897a {
    public void onCreate(Bundle bundle) {
        DeactivateServiceActivity.super.onCreate(bundle);
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.d(supportFragmentManager, "supportFragmentManager");
            C26907a c26907a = new C26907a(supportFragmentManager);
            l.d(c26907a, "beginTransaction()");
            c26907a.f75332p = true;
            c26907a.m1120m(16908290, new C20035b(), null);
            c26907a.mo1127f();
        }
    }
}
