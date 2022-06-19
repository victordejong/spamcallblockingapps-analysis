package org.mistergroup.shouldianswer.p101ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.fragment.app.Fragment;
import com.google.android.flexbox.FlexItem;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1798an;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/c.class */
public class C2512c extends Fragment {

    @AbstractC1634f(m3162b = "BaseFragment.kt", m3161c = {64, 65}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.BaseFragment$animateVisibility$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/c$a.class */
    public static final class C2513a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7387a;

        /* renamed from: b */
        int f7388b;

        /* renamed from: c */
        final /* synthetic */ View f7389c;

        /* renamed from: d */
        final /* synthetic */ int f7390d;

        /* renamed from: e */
        final /* synthetic */ C2515b f7391e;

        /* renamed from: f */
        private AbstractC1786ad f7392f;

        @AbstractC1634f(m3162b = "BaseFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.BaseFragment$animateVisibility$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.c$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/c$a$1.class */
        public static final class C25141 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super ViewPropertyAnimator>, Object> {

            /* renamed from: a */
            int f7393a;

            /* renamed from: c */
            private AbstractC1786ad f7395c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C25141(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2513a.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super ViewPropertyAnimator> abstractC1641c) {
                return ((C25141) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C25141 c25141 = new C25141(abstractC1641c);
                c25141.f7395c = (AbstractC1786ad) obj;
                return c25141;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7393a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7395c;
                    C2513a.this.f7389c.setAlpha(FlexItem.FLEX_GROW_DEFAULT);
                    C2513a.this.f7389c.setVisibility(C2513a.this.f7390d);
                    return C2513a.this.f7389c.animate().alpha(1.0f).setDuration(300L).setListener(C2513a.this.f7391e);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2513a(View view, int i, C2515b c2515b, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f7389c = view;
            this.f7390d = i;
            this.f7391e = c2515b;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2513a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2513a c2513a = new C2513a(this.f7389c, this.f7390d, this.f7391e, abstractC1641c);
            c2513a.f7392f = (AbstractC1786ad) obj;
            return c2513a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f7388b;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f7392f;
                this.f7387a = abstractC1786ad;
                this.f7388b = 1;
                if (C1798an.m2945a(300L, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7387a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                C1771k.m2979a(obj);
                abstractC1786ad = (AbstractC1786ad) this.f7387a;
            }
            this.f7387a = abstractC1786ad;
            this.f7388b = 2;
            if (C1890e.m2686a(C3084c.m192b(), new C25141(null), this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.c$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/c$b.class */
    public static final class C2515b extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ View f7396a;

        /* renamed from: b */
        final /* synthetic */ int f7397b;

        C2515b(View view, int i) {
            this.f7396a = view;
            this.f7397b = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1694h.m3117b(animator, "animation");
            super.onAnimationEnd(animator);
            this.f7396a.setVisibility(this.f7397b);
        }
    }

    /* renamed from: a */
    public final void m856a(boolean z, View view, int i) {
        C1694h.m3117b(view, "view");
        if (z) {
            view.setVisibility(i);
        } else if (view.getVisibility() == i) {
        } else {
            C2515b c2515b = new C2515b(view, i);
            if (i == 8) {
                view.animate().alpha(FlexItem.FLEX_GROW_DEFAULT).setDuration(300L).setListener(c2515b);
            } else {
                C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2513a(view, i, c2515b, null), 2, null);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onCreate", (String) null, 2, (Object) null);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onCreateView", (String) null, 2, (Object) null);
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onDestroy", (String) null, 2, (Object) null);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onDestroyView", (String) null, 2, (Object) null);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onPause", (String) null, 2, (Object) null);
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onResume", (String) null, 2, (Object) null);
        super.onResume();
    }
}
