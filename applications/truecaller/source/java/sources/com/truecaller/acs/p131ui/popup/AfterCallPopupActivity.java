package com.truecaller.acs.p131ui.popup;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p773g.p774a.AbstractC14183d;
import p193e.p194a.p773g.p774a.C14184d0;
import p193e.p194a.p773g.p774a.p775a.AbstractC14115l;
import p193e.p194a.p773g.p774a.p775a.C14074a;
import p193e.p194a.p773g.p774a.p775a.animationAnimation$AnimationListenerC14098b;
import s1.g;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018�� &2\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b%\u0010\fJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\fJ\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\fR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R%\u0010\u001d\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R%\u0010$\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010\u001c¨\u0006("}, d2 = {"Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onStart", "()V", "", "hasFocus", "onWindowFocusChanged", "(Z)V", "finish", "ra", "Landroid/view/View;", "qa", "()Landroid/view/View;", "acsContainer", "Landroid/view/animation/Animation;", "kotlin.jvm.PlatformType", "e", "Ls1/g;", "getEnterAnimation", "()Landroid/view/animation/Animation;", "enterAnimation", "Landroid/graphics/drawable/TransitionDrawable;", "d", "Landroid/graphics/drawable/TransitionDrawable;", "windowBackgroundColor", "f", "getExitAnimation", "exitAnimation", "<init>", "g", C22021b.f61237c, "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.acs.ui.popup.AfterCallPopupActivity */
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/popup/AfterCallPopupActivity.class */
public final class AfterCallPopupActivity extends AbstractC14115l {

    /* renamed from: g */
    public static final C2800b f9723g = new C2800b(null);

    /* renamed from: d */
    public TransitionDrawable f9724d;

    /* renamed from: e */
    public final g f9725e = C25225a.m3978P1(new a(0, this));

    /* renamed from: f */
    public final g f9726f = C25225a.m3978P1(new a(1, this));

    /* renamed from: com.truecaller.acs.ui.popup.AfterCallPopupActivity$b */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/popup/AfterCallPopupActivity$b.class */
    public static final class C2800b extends C14184d0 {
        public C2800b() {
        }

        public C2800b(f fVar) {
        }

        /* renamed from: a */
        public final Intent m35998a(Context context, HistoryEvent historyEvent, FilterMatch filterMatch, boolean z) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(historyEvent, "historyEvent");
            Intent intent = new Intent(context, AfterCallPopupActivity.class);
            intent.setFlags(268435456);
            n.T0(intent, "ARG_ACS_HISTORY_EVENT", new AfterCallHistoryEvent(historyEvent, false, false, filterMatch, z));
            return intent;
        }

        /* renamed from: b */
        public final void m35997b(Context context, HistoryEvent historyEvent, FilterMatch filterMatch, boolean z) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(historyEvent, "historyEvent");
            try {
                context.startActivity(m35998a(context, historyEvent, filterMatch, z));
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }

    public void finish() {
        Animation animation = (Animation) this.f9726f.getValue();
        animation.setFillAfter(true);
        animation.setAnimationListener(new animationAnimation$AnimationListenerC14098b(this));
        View m36000qa = m36000qa();
        if (m36000qa != null) {
            m36000qa.startAnimation(animation);
        }
        TransitionDrawable transitionDrawable = this.f9724d;
        if (transitionDrawable != null) {
            transitionDrawable.reverseTransition(getResources().getInteger(17694720));
        } else {
            l.l("windowBackgroundColor");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Drawable m13597Q;
        AfterCallPopupActivity.super.onCreate(bundle);
        Resources resources = getResources();
        l.d(resources, "resources");
        m13597Q = C19291g.m13597Q(resources, C2778R.C2779drawable.background_popup_window, null);
        this.f9724d = (TransitionDrawable) m13597Q;
        Window window = getWindow();
        TransitionDrawable transitionDrawable = this.f9724d;
        if (transitionDrawable == null) {
            l.l("windowBackgroundColor");
            throw null;
        }
        window.setBackgroundDrawable(transitionDrawable);
        if (bundle != null) {
            return;
        }
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        m35999ra();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onNewIntent(Intent intent) {
        AfterCallPopupActivity.super.onNewIntent(intent);
        setIntent(intent);
        m35999ra();
    }

    public void onStart() {
        AfterCallPopupActivity.super.onStart();
        if (((Animation) this.f9725e.getValue()).hasStarted()) {
            return;
        }
        View m36000qa = m36000qa();
        if (m36000qa != null) {
            m36000qa.startAnimation((Animation) this.f9725e.getValue());
        }
        TransitionDrawable transitionDrawable = this.f9724d;
        if (transitionDrawable != null) {
            transitionDrawable.startTransition(getResources().getInteger(17694722));
        } else {
            l.l("windowBackgroundColor");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onWindowFocusChanged(boolean z) {
        AfterCallPopupActivity.super.onWindowFocusChanged(z);
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

    /* renamed from: qa */
    public final View m36000qa() {
        View view;
        Fragment m42943J = getSupportFragmentManager().m42943J(16908290);
        return (m42943J == null || (view = m42943J.getView()) == null) ? null : view.findViewById(C2778R.C2780id.acsContainer);
    }

    /* renamed from: ra */
    public final void m35999ra() {
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        Objects.requireNonNull(C14074a.f40697M);
        c26907a.m1120m(16908290, new C14074a(), null);
        c26907a.mo1127f();
    }
}
