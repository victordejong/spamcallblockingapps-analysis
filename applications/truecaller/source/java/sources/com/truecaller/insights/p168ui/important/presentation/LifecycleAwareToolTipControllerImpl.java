package com.truecaller.insights.p168ui.important.presentation;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import p193e.p194a.p372b0.p373a.p383e0.C8304c;
import p193e.p194a.p437c.p438a.p446c.p450g.C8834d;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\tR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;", "Le/a/c/a/c/h/j;", "Le/a/c/a/c/g/d;", "toolTipData", "Ls1/s;", "aa", "(Le/a/c/a/c/g/d;)V", "bj", "onResume", "()V", "onPause", "", "a", "Ljava/util/List;", "toolTipCache", C22021b.f61237c, "runningToolTips", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.important.presentation.LifecycleAwareToolTipControllerImpl */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl.class */
public final class LifecycleAwareToolTipControllerImpl implements AbstractC8852j {

    /* renamed from: a */
    public final List<C8834d> f12789a = new ArrayList();

    /* renamed from: b */
    public final List<C8834d> f12790b = new ArrayList();

    /* renamed from: com.truecaller.insights.ui.important.presentation.LifecycleAwareToolTipControllerImpl$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a.class */
    public static final class RunnableC4093a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f12792b;

        /* renamed from: c */
        public final /* synthetic */ C8834d f12793c;

        /* renamed from: d */
        public final /* synthetic */ View f12794d;

        /* renamed from: com.truecaller.insights.ui.important.presentation.LifecycleAwareToolTipControllerImpl$a$a */
        /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a$a.class */
        public static final class RunnableC4094a implements Runnable {
            public RunnableC4094a() {
                RunnableC4093a.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ViewGroup viewGroup = RunnableC4093a.this.f12792b;
                l.e(viewGroup, "parent");
                Object tag = viewGroup.getTag();
                Object obj = tag;
                if (!(tag instanceof C8304c)) {
                    obj = null;
                }
                C8304c c8304c = (C8304c) obj;
                if (c8304c != null) {
                    viewGroup.removeOnLayoutChangeListener(c8304c.f25583b);
                    viewGroup.removeView(c8304c.f25582a);
                    viewGroup.setTag(null);
                    try {
                        Context context = viewGroup.getContext();
                        l.d(context, "parent.context");
                        C19291g.m13529n0(context).removeView(c8304c.f25584c);
                    } catch (Exception e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
            }
        }

        public RunnableC4093a(ViewGroup viewGroup, C8834d c8834d, View view) {
            LifecycleAwareToolTipControllerImpl.this = r4;
            this.f12792b = viewGroup;
            this.f12793c = c8834d;
            this.f12794d = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C8301a c8301a = C8301a.f25570a;
            ViewGroup viewGroup = this.f12792b;
            C8834d c8834d = this.f12793c;
            C8301a.m28681c(c8301a, viewGroup, c8834d.f26930b, c8834d.f26931c, this.f12794d, c8834d.f26933e, null, 0, false, c8834d.f26935g, 224);
            LifecycleAwareToolTipControllerImpl.this.f12790b.add(this.f12793c);
            Long l = this.f12793c.f26934f;
            if (l != null) {
                if (!(l.longValue() > 0)) {
                    l = null;
                }
                if (l == null) {
                    return;
                }
                this.f12792b.postDelayed(new RunnableC4094a(), l.longValue());
            }
        }
    }

    @Override // p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j
    /* renamed from: aa */
    public void mo28005aa(C8834d c8834d) {
        l.e(c8834d, "toolTipData");
        this.f12789a.add(c8834d);
    }

    @Override // p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j
    /* renamed from: bj */
    public void mo28004bj(C8834d c8834d) {
        l.e(c8834d, "toolTipData");
        ViewGroup viewGroup = c8834d.f26929a.get();
        if (viewGroup != null) {
            l.d(viewGroup, "toolTipData.parent.get() ?: return");
            View view = c8834d.f26932d.get();
            if (view == null) {
                return;
            }
            l.d(view, "toolTipData.anchor.get() ?: return");
            viewGroup.post(new RunnableC4093a(viewGroup, c8834d, view));
        }
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    public final void onPause() {
        for (C8834d c8834d : this.f12790b) {
            ViewGroup viewGroup = c8834d.f26929a.get();
            if (viewGroup != null) {
                l.d(viewGroup, ViewAction.VIEW);
                l.e(viewGroup, "parent");
                Object tag = viewGroup.getTag();
                Object obj = tag;
                if (!(tag instanceof C8304c)) {
                    obj = null;
                }
                C8304c c8304c = (C8304c) obj;
                if (c8304c != null) {
                    viewGroup.removeOnLayoutChangeListener(c8304c.f25583b);
                    viewGroup.removeView(c8304c.f25582a);
                    viewGroup.setTag(null);
                    try {
                        Context context = viewGroup.getContext();
                        l.d(context, "parent.context");
                        C19291g.m13529n0(context).removeView(c8304c.f25584c);
                    } catch (Exception e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
                Handler handler = viewGroup.getHandler();
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
            }
        }
        this.f12790b.clear();
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_RESUME)
    public final void onResume() {
        for (C8834d c8834d : this.f12789a) {
            mo28004bj(c8834d);
        }
        this.f12789a.clear();
    }
}
