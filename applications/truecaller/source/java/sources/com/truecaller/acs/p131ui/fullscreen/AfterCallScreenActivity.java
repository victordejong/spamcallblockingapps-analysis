package com.truecaller.acs.p131ui.fullscreen;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p773g.p774a.AbstractC14183d;
import p193e.p194a.p773g.p774a.C14184d0;
import p193e.p194a.p773g.p774a.p776b.AbstractC14165q;
import p193e.p194a.p773g.p774a.p776b.C14118a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018�� \r2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "hasFocus", "onWindowFocusChanged", "(Z)V", "<init>", "()V", "d", "a", "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.acs.ui.fullscreen.AfterCallScreenActivity */
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/fullscreen/AfterCallScreenActivity.class */
public final class AfterCallScreenActivity extends AbstractC14165q {

    /* renamed from: d */
    public static final C2799a f9719d = new C2799a(null);

    /* renamed from: com.truecaller.acs.ui.fullscreen.AfterCallScreenActivity$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/fullscreen/AfterCallScreenActivity$a.class */
    public static final class C2799a extends C14184d0 {
        public C2799a() {
        }

        public C2799a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m36005a(Context context) {
            Intent addFlags = new Intent(context, AfterCallScreenActivity.class).addFlags(268435456).addFlags(32768);
            l.d(addFlags, "Intent(context, AfterCal…FLAG_ACTIVITY_CLEAR_TASK)");
            return addFlags;
        }

        /* renamed from: b */
        public final void m36004b(Context context, AfterCallHistoryEvent afterCallHistoryEvent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(afterCallHistoryEvent, "afterCallHistoryEvent");
            Intent m36005a = m36005a(context);
            n.T0(m36005a, "ARG_ACS_HISTORY_EVENT", afterCallHistoryEvent);
            try {
                context.startActivity(m36005a);
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AfterCallScreenActivity.super.onCreate(bundle);
        Window window = getWindow();
        l.d(window, "window");
        View decorView = window.getDecorView();
        l.d(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        if (bundle != null) {
            return;
        }
        if (getIntent().getBooleanExtra("ARG_CLOSE_FACS", false)) {
            finish();
            overridePendingTransition(0, 0);
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        Objects.requireNonNull(C14118a.f40796B);
        c26907a.m1120m(16908290, new C14118a(), null);
        c26907a.mo1127f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onWindowFocusChanged(boolean z) {
        AfterCallScreenActivity.super.onWindowFocusChanged(z);
        Fragment m42943J = getSupportFragmentManager().m42943J(16908290);
        if (m42943J != null) {
            if (!(m42943J instanceof AbstractC14183d)) {
                m42943J = null;
            }
            if (m42943J == null) {
                return;
            }
            m42943J.mo20432d8(z);
        }
    }
}
