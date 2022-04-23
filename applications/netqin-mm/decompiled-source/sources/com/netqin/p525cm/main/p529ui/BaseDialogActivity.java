package com.netqin.p525cm.main.p529ui;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import p131c.p431l.p432a.p459h.p460a.C6815b;
import p131c.p431l.p432a.p468n.C6840b;
import p131c.p431l.p432a.p468n.C6846g;
import p131c.p431l.p432a.p468n.C6860r;
/* renamed from: com.netqin.cm.main.ui.BaseDialogActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/BaseDialogActivity.class */
public abstract class BaseDialogActivity extends BaseActivity {

    /* renamed from: t */
    public View f35628t;

    /* renamed from: u */
    public final Runnable f35629u = new RunnableC9147a();

    /* renamed from: v */
    public Animator f35630v;

    /* renamed from: com.netqin.cm.main.ui.BaseDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/BaseDialogActivity$a.class */
    public class RunnableC9147a implements Runnable {
        public RunnableC9147a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseDialogActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.main.ui.BaseDialogActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/BaseDialogActivity$b.class */
    public class C9148b implements C6840b.AbstractC6841a {
        public C9148b() {
        }

        @Override // p131c.p431l.p432a.p468n.C6840b.AbstractC6841a
        /* renamed from: a */
        public float mo3311a(int i, float f) {
            r6 = 0.0f;
            float f2 = ((((f - 0.0f) * (39 - i)) * 1.0f) / 39.0f) + 0.0f;
            if (i % 2 != 0 && (i - 1) % 4 == 0) {
                f2 = -f2;
            }
            return f2;
        }
    }

    /* renamed from: a */
    public final Animator m3320a(View view) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofKeyframe(View.ROTATION, C6840b.m19610a(39, 2.0f, new C9148b())));
        ofPropertyValuesHolder.setInterpolator(null);
        ofPropertyValuesHolder.setDuration(1200L);
        return ofPropertyValuesHolder;
    }

    /* renamed from: b */
    public Animator m3319b(View view) {
        return m3320a(view);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    /* renamed from: n */
    public int mo3282n() {
        return 16973825;
    }

    /* renamed from: o */
    public long mo3281o() {
        return 0L;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (m3318p()) {
            super.onBackPressed();
            return;
        }
        if (this.f35630v == null) {
            this.f35630v = m3319b(this.f35628t);
        }
        if (!this.f35630v.isRunning()) {
            this.f35630v.start();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!m3313y() || !C6815b.m19684c()) {
            View w = mo3277w();
            this.f35628t = w;
            setContentView(w);
            m3312z();
            long o = mo3281o();
            if (o > 0) {
                C6846g.m19586a(this.f35629u, o);
            }
            m3314x();
            return;
        }
        finish();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        C6846g.m19585b(this.f35629u);
        super.onDestroy();
    }

    /* renamed from: p */
    public final boolean m3318p() {
        return true;
    }

    /* renamed from: q */
    public boolean m3317q() {
        return true;
    }

    /* renamed from: r */
    public float mo3280r() {
        return 0.0f;
    }

    /* renamed from: s */
    public int m3316s() {
        return 1;
    }

    /* renamed from: t */
    public int mo3279t() {
        return 17;
    }

    /* renamed from: u */
    public int m3315u() {
        return 0;
    }

    /* renamed from: v */
    public boolean mo3278v() {
        return false;
    }

    /* renamed from: w */
    public abstract View mo3277w();

    /* renamed from: x */
    public void m3314x() {
    }

    /* renamed from: y */
    public boolean m3313y() {
        return false;
    }

    /* renamed from: z */
    public final void m3312z() {
        Window window = getWindow();
        window.setLayout(C6860r.m19536b() - (m3315u() << 1), mo3278v() ? -1 : -2);
        window.setGravity(mo3279t());
        window.setFormat(m3316s());
        window.setWindowAnimations(mo3282n());
        window.setDimAmount(mo3280r());
        setFinishOnTouchOutside(m3317q());
    }
}
