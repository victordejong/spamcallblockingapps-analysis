package com.truecaller.voip.legacy.incall.p190ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.util.VoipAnalyticsInCallUiAction;
import java.util.Iterator;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11070c;
import p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11075h;
import p193e.p194a.p619d.p622b.p623a.p624a.C11064a;
import p193e.p194a.p619d.p622b.p623a.p624a.C11077j;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/voip/legacy/incall/ui/LegacyVoipActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onBackPressed", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.legacy.incall.ui.LegacyVoipActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/legacy/incall/ui/LegacyVoipActivity.class */
public final class LegacyVoipActivity extends AbstractC11070c {
    /* renamed from: pa */
    public static final Intent m34331pa(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, LegacyVoipActivity.class);
        intent.setFlags(268435456);
        return intent;
    }

    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        Iterator<Fragment> it = supportFragmentManager.m42936Q().iterator();
        while (it.hasNext()) {
            C11064a c11064a = (Fragment) it.next();
            if (c11064a instanceof C11064a) {
                AbstractC11075h abstractC11075h = c11064a.f32703f;
                if (abstractC11075h == null) {
                    l.l("presenter");
                    throw null;
                }
                ((C11077j) abstractC11075h).f32743i.mo24716c(VoipAnalyticsInCallUiAction.BACK);
            }
        }
        LegacyVoipActivity.super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        LegacyVoipActivity.super.onCreate(bundle);
        C12864a2.m22550i0(this);
        View findViewById = findViewById(16908290);
        l.d(findViewById, "findViewById<View>(android.R.id.content)");
        findViewById.setSystemUiVisibility(1280);
        supportPostponeEnterTransition();
        if (bundle != null) {
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, new C11064a(), null);
        c26907a.mo1127f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        LegacyVoipActivity.super.onResume();
        setVolumeControlStream(0);
    }
}
