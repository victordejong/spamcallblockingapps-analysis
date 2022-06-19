package org.mistergroup.shouldianswer.p101ui.incall;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import com.google.android.flexbox.FlexItem;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.p097a.AbstractC2122ak;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallDialpadFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment.class */
public final class InCallDialpadFragment extends Fragment {

    /* renamed from: a */
    private AbstractC2568a f7538a;

    /* renamed from: b */
    private String f7539b = "";

    /* renamed from: c */
    private AbstractC2122ak f7540c;

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallDialpadFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a.class */
    public interface AbstractC2568a {
        /* renamed from: a */
        void mo775a();

        /* renamed from: a */
        void mo774a(char c);
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallDialpadFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$b.class */
    static final class View$OnClickListenerC2569b implements View.OnClickListener {
        View$OnClickListenerC2569b() {
            InCallDialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InCallDialpadFragment.this.m780a(4);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallDialpadFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c.class */
    public static final class View$OnTouchListenerC2570c implements View.OnTouchListener {
        View$OnTouchListenerC2570c() {
            InCallDialpadFragment.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Integer valueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
            if (valueOf != null && valueOf.intValue() == 0) {
                InCallDialpadFragment inCallDialpadFragment = InCallDialpadFragment.this;
                String str = null;
                if (view != null) {
                    str = view.getTag();
                }
                if (str == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
                }
                inCallDialpadFragment.m781a(str.charAt(0));
                return true;
            } else if (valueOf == null || valueOf.intValue() != 1) {
                return false;
            } else {
                AbstractC2568a abstractC2568a = InCallDialpadFragment.this.f7538a;
                if (abstractC2568a == null) {
                    C1694h.m3124a();
                }
                abstractC2568a.mo775a();
                if (view == null) {
                    return true;
                }
                view.performClick();
                return true;
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.InCallDialpadFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$d.class */
    public static final class C2571d extends AnimatorListenerAdapter {
        C2571d() {
            InCallDialpadFragment.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1694h.m3117b(animator, "animation");
            super.onAnimationEnd(animator);
            LinearLayout linearLayout = InCallDialpadFragment.m778a(InCallDialpadFragment.this).f5581d;
            C1694h.m3122a((Object) linearLayout, "binding.llDialer");
            linearLayout.setVisibility(4);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC2122ak m778a(InCallDialpadFragment inCallDialpadFragment) {
        AbstractC2122ak abstractC2122ak = inCallDialpadFragment.f7540c;
        if (abstractC2122ak == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2122ak;
    }

    /* renamed from: a */
    public final void m781a(char c) {
        String str = this.f7539b;
        this.f7539b = str + c;
        AbstractC2122ak abstractC2122ak = this.f7540c;
        if (abstractC2122ak == null) {
            C1694h.m3116b("binding");
        }
        TextView textView = abstractC2122ak.f5595r;
        C1694h.m3122a((Object) textView, "binding.tvDialpadNumber");
        textView.setText(this.f7539b);
        AbstractC2568a abstractC2568a = this.f7538a;
        if (abstractC2568a != null) {
            if (abstractC2568a == null) {
                C1694h.m3124a();
            }
            abstractC2568a.mo774a(c);
        }
    }

    /* renamed from: a */
    public final void m780a(int i) {
        AbstractC2122ak abstractC2122ak = this.f7540c;
        if (abstractC2122ak == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2122ak.f5581d;
        C1694h.m3122a((Object) linearLayout, "binding.llDialer");
        int height = linearLayout.getHeight();
        if (i != 0) {
            AbstractC2122ak abstractC2122ak2 = this.f7540c;
            if (abstractC2122ak2 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak2.f5581d.animate().translationY(height).setDuration(300L).setListener(new C2571d());
            return;
        }
        AbstractC2122ak abstractC2122ak3 = this.f7540c;
        if (abstractC2122ak3 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout2 = abstractC2122ak3.f5581d;
        C1694h.m3122a((Object) linearLayout2, "binding.llDialer");
        linearLayout2.setTranslationY(height);
        AbstractC2122ak abstractC2122ak4 = this.f7540c;
        if (abstractC2122ak4 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout3 = abstractC2122ak4.f5581d;
        C1694h.m3122a((Object) linearLayout3, "binding.llDialer");
        linearLayout3.setVisibility(i);
        AbstractC2122ak abstractC2122ak5 = this.f7540c;
        if (abstractC2122ak5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2122ak5.f5581d.animate().translationY(FlexItem.FLEX_GROW_DEFAULT).setDuration(300L).setListener(null);
    }

    /* renamed from: a */
    public final void m779a(AbstractC2568a abstractC2568a) {
        C1694h.m3117b(abstractC2568a, "inCallDialpadFragmentCallback");
        this.f7538a = abstractC2568a;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            C3104j.m157a(C3104j.f9124a, "InCallDialpadFragment.onCreate", (String) null, 2, (Object) null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater.cloneInContext(new ContextThemeWrapper(getActivity(), C2398ai.f6930a.m1309B() ? 2131820774 : 2131820773)), 2131558461, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f7540c = (AbstractC2122ak) m5843a;
        try {
            View$OnTouchListenerC2570c view$OnTouchListenerC2570c = new View$OnTouchListenerC2570c();
            AbstractC2122ak abstractC2122ak = this.f7540c;
            if (abstractC2122ak == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak.f5580c.setOnClickListener(new View$OnClickListenerC2569b());
            AbstractC2122ak abstractC2122ak2 = this.f7540c;
            if (abstractC2122ak2 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak2.f5584g.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak3 = this.f7540c;
            if (abstractC2122ak3 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2122ak3.f5584g;
            C1694h.m3122a((Object) linearLayout, "binding.tvDial1");
            linearLayout.setTag("1");
            AbstractC2122ak abstractC2122ak4 = this.f7540c;
            if (abstractC2122ak4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak4.f5585h.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak5 = this.f7540c;
            if (abstractC2122ak5 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout2 = abstractC2122ak5.f5585h;
            C1694h.m3122a((Object) linearLayout2, "binding.tvDial2");
            linearLayout2.setTag("2");
            AbstractC2122ak abstractC2122ak6 = this.f7540c;
            if (abstractC2122ak6 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak6.f5586i.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak7 = this.f7540c;
            if (abstractC2122ak7 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout3 = abstractC2122ak7.f5586i;
            C1694h.m3122a((Object) linearLayout3, "binding.tvDial3");
            linearLayout3.setTag("3");
            AbstractC2122ak abstractC2122ak8 = this.f7540c;
            if (abstractC2122ak8 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak8.f5587j.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak9 = this.f7540c;
            if (abstractC2122ak9 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout4 = abstractC2122ak9.f5587j;
            C1694h.m3122a((Object) linearLayout4, "binding.tvDial4");
            linearLayout4.setTag("4");
            AbstractC2122ak abstractC2122ak10 = this.f7540c;
            if (abstractC2122ak10 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak10.f5588k.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak11 = this.f7540c;
            if (abstractC2122ak11 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout5 = abstractC2122ak11.f5588k;
            C1694h.m3122a((Object) linearLayout5, "binding.tvDial5");
            linearLayout5.setTag("5");
            AbstractC2122ak abstractC2122ak12 = this.f7540c;
            if (abstractC2122ak12 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak12.f5589l.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak13 = this.f7540c;
            if (abstractC2122ak13 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout6 = abstractC2122ak13.f5589l;
            C1694h.m3122a((Object) linearLayout6, "binding.tvDial6");
            linearLayout6.setTag("6");
            AbstractC2122ak abstractC2122ak14 = this.f7540c;
            if (abstractC2122ak14 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak14.f5590m.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak15 = this.f7540c;
            if (abstractC2122ak15 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout7 = abstractC2122ak15.f5590m;
            C1694h.m3122a((Object) linearLayout7, "binding.tvDial7");
            linearLayout7.setTag("7");
            AbstractC2122ak abstractC2122ak16 = this.f7540c;
            if (abstractC2122ak16 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak16.f5591n.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak17 = this.f7540c;
            if (abstractC2122ak17 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout8 = abstractC2122ak17.f5591n;
            C1694h.m3122a((Object) linearLayout8, "binding.tvDial8");
            linearLayout8.setTag("8");
            AbstractC2122ak abstractC2122ak18 = this.f7540c;
            if (abstractC2122ak18 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak18.f5592o.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak19 = this.f7540c;
            if (abstractC2122ak19 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout9 = abstractC2122ak19.f5592o;
            C1694h.m3122a((Object) linearLayout9, "binding.tvDial9");
            linearLayout9.setTag("9");
            AbstractC2122ak abstractC2122ak20 = this.f7540c;
            if (abstractC2122ak20 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak20.f5583f.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak21 = this.f7540c;
            if (abstractC2122ak21 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout10 = abstractC2122ak21.f5583f;
            C1694h.m3122a((Object) linearLayout10, "binding.tvDial0");
            linearLayout10.setTag("0");
            AbstractC2122ak abstractC2122ak22 = this.f7540c;
            if (abstractC2122ak22 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak22.f5594q.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak23 = this.f7540c;
            if (abstractC2122ak23 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout11 = abstractC2122ak23.f5594q;
            C1694h.m3122a((Object) linearLayout11, "binding.tvDialStar");
            linearLayout11.setTag("*");
            AbstractC2122ak abstractC2122ak24 = this.f7540c;
            if (abstractC2122ak24 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2122ak24.f5593p.setOnTouchListener(view$OnTouchListenerC2570c);
            AbstractC2122ak abstractC2122ak25 = this.f7540c;
            if (abstractC2122ak25 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout12 = abstractC2122ak25.f5593p;
            C1694h.m3122a((Object) linearLayout12, "binding.tvDialHash");
            linearLayout12.setTag("#");
            AbstractC2122ak abstractC2122ak26 = this.f7540c;
            if (abstractC2122ak26 == null) {
                C1694h.m3116b("binding");
            }
            TextView textView = abstractC2122ak26.f5595r;
            C1694h.m3122a((Object) textView, "binding.tvDialpadNumber");
            textView.setText(this.f7539b);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        AbstractC2122ak abstractC2122ak27 = this.f7540c;
        if (abstractC2122ak27 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout13 = abstractC2122ak27.f5581d;
        C1694h.m3122a((Object) linearLayout13, "binding.llDialer");
        linearLayout13.setVisibility(4);
        AbstractC2122ak abstractC2122ak28 = this.f7540c;
        if (abstractC2122ak28 == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2122ak28.m5863d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
