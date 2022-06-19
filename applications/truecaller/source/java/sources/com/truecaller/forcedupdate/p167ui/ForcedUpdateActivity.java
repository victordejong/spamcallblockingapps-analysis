package com.truecaller.forcedupdate.p167ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.truecaller.forcedupdate.UpdateType;
import com.truecaller.log.AssertionUtil;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p1357x3.p1358h.AbstractC21411i;
import p193e.p194a.p1357x3.p1358h.C21403c;
import p193e.p194a.p1357x3.p1358h.View$OnClickListenerC21407e;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
/* renamed from: com.truecaller.forcedupdate.ui.ForcedUpdateActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/forcedupdate/ui/ForcedUpdateActivity.class */
public class ForcedUpdateActivity extends AbstractC21411i {

    /* renamed from: com.truecaller.forcedupdate.ui.ForcedUpdateActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/forcedupdate/ui/ForcedUpdateActivity$a.class */
    public interface AbstractC3992a {
        /* renamed from: Q */
        AbstractC21396c mo9765Q();
    }

    /* renamed from: pa */
    public static boolean m35318pa(Context context, boolean z) {
        UpdateType mo9772d = ((AbstractC3992a) C25225a.m3820x0(context.getApplicationContext(), AbstractC3992a.class)).mo9765Q().mo9772d(z);
        if (mo9772d != UpdateType.NONE) {
            Intent intent = new Intent(context, ForcedUpdateActivity.class);
            intent.addFlags(268533760);
            intent.putExtra("updateType", mo9772d.name());
            intent.putExtra("compactMode", z);
            context.startActivity(intent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Fragment fragment;
        ForcedUpdateActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        if (bundle != null || getIntent() == null) {
            return;
        }
        Intent intent = getIntent();
        UpdateType m35319a = UpdateType.Companion.m35319a(intent.getStringExtra("updateType"));
        if (m35319a == UpdateType.NONE) {
            AssertionUtil.report("No update type specified");
            fragment = null;
        } else {
            fragment = (!intent.getBooleanExtra("compactMode", false) || !m35319a.getSupportsCompactMode()) ? Fragment.instantiate(this, View$OnClickListenerC21407e.class.getName(), intent.getExtras()) : Fragment.instantiate(this, C21403c.class.getName(), intent.getExtras());
        }
        if (fragment == null) {
            finish();
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, fragment, null);
        c26907a.mo1127f();
    }
}
