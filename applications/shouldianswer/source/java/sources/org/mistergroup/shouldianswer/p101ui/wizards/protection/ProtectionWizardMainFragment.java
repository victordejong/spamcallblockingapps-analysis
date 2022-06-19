package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
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
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.p097a.AbstractC2161bw;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3082b;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment.class */
public final class ProtectionWizardMainFragment extends AbstractC2510b {

    /* renamed from: b */
    public AbstractC2161bw f8922b;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$a.class */
    public static final class View$OnClickListenerC3046a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8924b;

        @AbstractC1634f(m3162b = "ProtectionWizardMainFragment.kt", m3161c = {48, 49}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$a$1.class */
        public static final class C30471 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8925a;

            /* renamed from: b */
            int f8926b;

            /* renamed from: d */
            private AbstractC1786ad f8928d;

            @AbstractC1634f(m3162b = "ProtectionWizardMainFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$1$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$a$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$a$1$1.class */
            public static final class C30481 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8929a;

                /* renamed from: c */
                private AbstractC1786ad f8931c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C30481(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C30471.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C30481) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C30481 c30481 = new C30481(abstractC1641c);
                    c30481.f8931c = (AbstractC1786ad) obj;
                    return c30481;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8929a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8931c;
                        ProtectionWizardActiveSetupActivity.f8899l.m260a(View$OnClickListenerC3046a.this.f8924b);
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30471(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC3046a.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30471) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30471 c30471 = new C30471(abstractC1641c);
                c30471.f8928d = (AbstractC1786ad) obj;
                return c30471;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f8926b;
                try {
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                if (i == 0) {
                    C1771k.m2979a(obj);
                    abstractC1786ad = this.f8928d;
                    this.f8925a = abstractC1786ad;
                    this.f8926b = 1;
                    if (C1798an.m2945a(500L, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8925a;
                    C1771k.m2979a(obj);
                    return C1775o.f4450a;
                } else {
                    AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8925a;
                    C1771k.m2979a(obj);
                    abstractC1786ad = abstractC1786ad3;
                }
                this.f8925a = abstractC1786ad;
                this.f8926b = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C30481(null), this) == a) {
                    return a;
                }
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC3046a(ActivityC2499a activityC2499a) {
            ProtectionWizardMainFragment.this = r4;
            this.f8924b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProtectionWizardMainFragment protectionWizardMainFragment = ProtectionWizardMainFragment.this;
            FrameLayout frameLayout = protectionWizardMainFragment.m249d().f5782f;
            C1694h.m3122a((Object) frameLayout, "binding.flActiveProtection");
            FrameLayout frameLayout2 = ProtectionWizardMainFragment.this.m249d().f5784h;
            C1694h.m3122a((Object) frameLayout2, "binding.flPassiveProtection");
            FrameLayout frameLayout3 = ProtectionWizardMainFragment.this.m249d().f5783g;
            C1694h.m3122a((Object) frameLayout3, "binding.flNoProtection");
            protectionWizardMainFragment.m251a(frameLayout, frameLayout2, frameLayout3);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C30471(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b.class */
    public static final class View$OnClickListenerC3049b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8933b;

        @AbstractC1634f(m3162b = "ProtectionWizardMainFragment.kt", m3161c = {62, 63}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$2$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$b$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1.class */
        public static final class C30501 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8934a;

            /* renamed from: b */
            int f8935b;

            /* renamed from: d */
            private AbstractC1786ad f8937d;

            @AbstractC1634f(m3162b = "ProtectionWizardMainFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$2$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$b$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1$1.class */
            public static final class C30511 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8938a;

                /* renamed from: c */
                private AbstractC1786ad f8940c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C30511(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C30501.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C30511) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C30511 c30511 = new C30511(abstractC1641c);
                    c30511.f8940c = (AbstractC1786ad) obj;
                    return c30511;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8938a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8940c;
                        ProtectionWizardPassiveSetupActivity.f8953l.m248a(View$OnClickListenerC3049b.this.f8933b);
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30501(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC3049b.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30501) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30501 c30501 = new C30501(abstractC1641c);
                c30501.f8937d = (AbstractC1786ad) obj;
                return c30501;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f8935b;
                try {
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                if (i == 0) {
                    C1771k.m2979a(obj);
                    abstractC1786ad = this.f8937d;
                    this.f8934a = abstractC1786ad;
                    this.f8935b = 1;
                    if (C1798an.m2945a(500L, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8934a;
                    C1771k.m2979a(obj);
                    return C1775o.f4450a;
                } else {
                    AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8934a;
                    C1771k.m2979a(obj);
                    abstractC1786ad = abstractC1786ad3;
                }
                this.f8934a = abstractC1786ad;
                this.f8935b = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C30511(null), this) == a) {
                    return a;
                }
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC3049b(ActivityC2499a activityC2499a) {
            ProtectionWizardMainFragment.this = r4;
            this.f8933b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProtectionWizardMainFragment protectionWizardMainFragment = ProtectionWizardMainFragment.this;
            FrameLayout frameLayout = protectionWizardMainFragment.m249d().f5784h;
            C1694h.m3122a((Object) frameLayout, "binding.flPassiveProtection");
            FrameLayout frameLayout2 = ProtectionWizardMainFragment.this.m249d().f5782f;
            C1694h.m3122a((Object) frameLayout2, "binding.flActiveProtection");
            FrameLayout frameLayout3 = ProtectionWizardMainFragment.this.m249d().f5783g;
            C1694h.m3122a((Object) frameLayout3, "binding.flNoProtection");
            protectionWizardMainFragment.m251a(frameLayout, frameLayout2, frameLayout3);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C30501(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c.class */
    public static final class View$OnClickListenerC3052c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8942b;

        @AbstractC1634f(m3162b = "ProtectionWizardMainFragment.kt", m3161c = {77, 78}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$3$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c$1.class */
        public static final class C30531 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8943a;

            /* renamed from: b */
            int f8944b;

            /* renamed from: d */
            private AbstractC1786ad f8946d;

            @AbstractC1634f(m3162b = "ProtectionWizardMainFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$3$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$c$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c$1$1.class */
            public static final class C30541 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8947a;

                /* renamed from: c */
                private AbstractC1786ad f8949c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C30541(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C30531.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C30541) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C30541 c30541 = new C30541(abstractC1641c);
                    c30541.f8949c = (AbstractC1786ad) obj;
                    return c30541;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8947a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8949c;
                        MainFragment.f7560b.m751b(View$OnClickListenerC3052c.this.f8942b);
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30531(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC3052c.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30531) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30531 c30531 = new C30531(abstractC1641c);
                c30531.f8946d = (AbstractC1786ad) obj;
                return c30531;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f8944b;
                try {
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                if (i == 0) {
                    C1771k.m2979a(obj);
                    abstractC1786ad = this.f8946d;
                    this.f8943a = abstractC1786ad;
                    this.f8944b = 1;
                    if (C1798an.m2945a(500L, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8943a;
                    C1771k.m2979a(obj);
                    return C1775o.f4450a;
                } else {
                    AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8943a;
                    C1771k.m2979a(obj);
                    abstractC1786ad = abstractC1786ad3;
                }
                this.f8943a = abstractC1786ad;
                this.f8944b = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C30541(null), this) == a) {
                    return a;
                }
                return C1775o.f4450a;
            }
        }

        View$OnClickListenerC3052c(ActivityC2499a activityC2499a) {
            ProtectionWizardMainFragment.this = r4;
            this.f8942b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2398ai.f6930a.m1291a(EnumC2393af.NONE);
            ProtectionWizardMainFragment protectionWizardMainFragment = ProtectionWizardMainFragment.this;
            FrameLayout frameLayout = protectionWizardMainFragment.m249d().f5783g;
            C1694h.m3122a((Object) frameLayout, "binding.flNoProtection");
            FrameLayout frameLayout2 = ProtectionWizardMainFragment.this.m249d().f5784h;
            C1694h.m3122a((Object) frameLayout2, "binding.flPassiveProtection");
            FrameLayout frameLayout3 = ProtectionWizardMainFragment.this.m249d().f5782f;
            C1694h.m3122a((Object) frameLayout3, "binding.flActiveProtection");
            protectionWizardMainFragment.m251a(frameLayout, frameLayout2, frameLayout3);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C30531(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$d.class */
    static final class View$OnTouchListenerC3055d implements View.OnTouchListener {
        View$OnTouchListenerC3055d() {
            ProtectionWizardMainFragment.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C1694h.m3117b(view, "view");
            C1694h.m3117b(motionEvent, "motionEvent");
            int action = motionEvent.getAction();
            if (action == 0) {
                ProtectionWizardMainFragment.this.m249d().f5785i.animate().scaleX(1.2f).scaleY(1.2f).setDuration(200L).start();
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ProtectionWizardMainFragment.this.m249d().f5785i.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                return false;
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$e.class */
    static final class View$OnTouchListenerC3056e implements View.OnTouchListener {
        View$OnTouchListenerC3056e() {
            ProtectionWizardMainFragment.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C1694h.m3117b(view, "view");
            C1694h.m3117b(motionEvent, "motionEvent");
            int action = motionEvent.getAction();
            if (action == 0) {
                ProtectionWizardMainFragment.this.m249d().f5787k.animate().scaleX(1.2f).scaleY(1.2f).setDuration(200L).start();
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ProtectionWizardMainFragment.this.m249d().f5787k.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                return false;
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$f.class */
    static final class View$OnTouchListenerC3057f implements View.OnTouchListener {
        View$OnTouchListenerC3057f() {
            ProtectionWizardMainFragment.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C1694h.m3117b(view, "view");
            C1694h.m3117b(motionEvent, "motionEvent");
            int action = motionEvent.getAction();
            if (action == 0) {
                ProtectionWizardMainFragment.this.m249d().f5786j.animate().scaleX(1.2f).scaleY(1.2f).setDuration(200L).start();
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ProtectionWizardMainFragment.this.m249d().f5786j.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                return false;
            }
        }
    }

    /* renamed from: a */
    public final void m251a(FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3) {
        new C3082b(frameLayout, 2130771999, 1).m200a();
        frameLayout2.animate().alpha(FlexItem.FLEX_GROW_DEFAULT).setDuration(500L).start();
        frameLayout3.animate().alpha(FlexItem.FLEX_GROW_DEFAULT).setDuration(500L).start();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2161bw abstractC2161bw = this.f8922b;
        if (abstractC2161bw == null) {
            C1694h.m3116b("binding");
        }
        abstractC2161bw.f5779c.setOnClickListener(new View$OnClickListenerC3046a(activityC2499a));
        AbstractC2161bw abstractC2161bw2 = this.f8922b;
        if (abstractC2161bw2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2161bw2.f5781e.setOnClickListener(new View$OnClickListenerC3049b(activityC2499a));
        AbstractC2161bw abstractC2161bw3 = this.f8922b;
        if (abstractC2161bw3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2161bw3.f5780d.setOnClickListener(new View$OnClickListenerC3052c(activityC2499a));
        AbstractC2161bw abstractC2161bw4 = this.f8922b;
        if (abstractC2161bw4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2161bw4.f5779c.setOnTouchListener(new View$OnTouchListenerC3055d());
        AbstractC2161bw abstractC2161bw5 = this.f8922b;
        if (abstractC2161bw5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2161bw5.f5781e.setOnTouchListener(new View$OnTouchListenerC3056e());
        AbstractC2161bw abstractC2161bw6 = this.f8922b;
        if (abstractC2161bw6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2161bw6.f5780d.setOnTouchListener(new View$OnTouchListenerC3057f());
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        return null;
    }

    /* renamed from: d */
    public final AbstractC2161bw m249d() {
        AbstractC2161bw abstractC2161bw = this.f8922b;
        if (abstractC2161bw == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2161bw;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558488, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8922b = (AbstractC2161bw) m5843a;
        AbstractC2161bw abstractC2161bw = this.f8922b;
        if (abstractC2161bw == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2161bw.m5863d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AbstractC2161bw abstractC2161bw = this.f8922b;
        if (abstractC2161bw == null) {
            C1694h.m3116b("binding");
        }
        FrameLayout frameLayout = abstractC2161bw.f5782f;
        C1694h.m3122a((Object) frameLayout, "binding.flActiveProtection");
        frameLayout.setAlpha(1.0f);
        AbstractC2161bw abstractC2161bw2 = this.f8922b;
        if (abstractC2161bw2 == null) {
            C1694h.m3116b("binding");
        }
        FrameLayout frameLayout2 = abstractC2161bw2.f5784h;
        C1694h.m3122a((Object) frameLayout2, "binding.flPassiveProtection");
        frameLayout2.setAlpha(1.0f);
        AbstractC2161bw abstractC2161bw3 = this.f8922b;
        if (abstractC2161bw3 == null) {
            C1694h.m3116b("binding");
        }
        FrameLayout frameLayout3 = abstractC2161bw3.f5783g;
        C1694h.m3122a((Object) frameLayout3, "binding.flNoProtection");
        frameLayout3.setAlpha(1.0f);
    }
}
