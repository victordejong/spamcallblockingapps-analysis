package org.mistergroup.shouldianswer.p101ui.dialpad;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.ActivityC0711c;
import androidx.lifecycle.AbstractC0911q;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0925w;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.i18n.phonenumbers.AsYouTypeFormatter;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1798an;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.components.p099a.C2314e;
import org.mistergroup.shouldianswer.components.p099a.C2321g;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2255q;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.C2589a;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3114n;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment.class */
public final class DialpadFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2519a f7404b = new C2519a(null);

    /* renamed from: c */
    private AbstractC2255q f7405c;

    /* renamed from: d */
    private C2314e f7406d;

    /* renamed from: g */
    private AsYouTypeFormatter f7409g;

    /* renamed from: i */
    private C2589a f7411i;

    /* renamed from: e */
    private String f7407e = "";

    /* renamed from: f */
    private String f7408f = "";

    /* renamed from: h */
    private String f7410h = "";

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a.class */
    public static final class C2519a {
        private C2519a() {
        }

        public /* synthetic */ C2519a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final Bundle m843a(String str) {
            C1694h.m3117b(str, "number");
            Bundle bundle = new Bundle();
            bundle.putString("number", str);
            return bundle;
        }

        /* renamed from: a */
        public final void m844a(Context context, String str) {
            C1694h.m3117b(context, "context");
            C1694h.m3117b(str, "number");
            Intent intent = new Intent(context, DialpadActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            intent.putExtras(m843a(str));
            context.startActivity(intent);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b.class */
    public enum EnumC2520b {
        COPY_NUMBER,
        CALL_NUMBER,
        SMS,
        CONTACT_DETAILS,
        EDIT_CONTACT_CREATE,
        EDIT_PASTE
    }

    @AbstractC1634f(m3162b = "DialpadFragment.kt", m3161c = {49, 50}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$finishAfterWhile$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$c.class */
    public static final class C2521c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7419a;

        /* renamed from: b */
        int f7420b;

        /* renamed from: d */
        private AbstractC1786ad f7422d;

        @AbstractC1634f(m3162b = "DialpadFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$finishAfterWhile$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$c$1.class */
        public static final class C25221 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7423a;

            /* renamed from: c */
            private AbstractC1786ad f7425c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C25221(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2521c.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C25221) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C25221 c25221 = new C25221(abstractC1641c);
                c25221.f7425c = (AbstractC1786ad) obj;
                return c25221;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7423a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7425c;
                    C1775o c1775o = null;
                    try {
                        ActivityC0711c activity = DialpadFragment.this.getActivity();
                        if (activity != null) {
                            activity.finish();
                            c1775o = C1775o.f4450a;
                        }
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                        c1775o = C1775o.f4450a;
                    }
                    return c1775o;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2521c(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            DialpadFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2521c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2521c c2521c = new C2521c(abstractC1641c);
            c2521c.f7422d = (AbstractC1786ad) obj;
            return c2521c;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f7420b;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f7422d;
                this.f7419a = abstractC1786ad;
                this.f7420b = 1;
                if (C1798an.m2945a(1000L, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7419a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                C1771k.m2979a(obj);
                abstractC1786ad = (AbstractC1786ad) this.f7419a;
            }
            this.f7419a = abstractC1786ad;
            this.f7420b = 2;
            if (C1890e.m2686a(C3084c.m192b(), new C25221(null), this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$d.class */
    static final class View$OnClickListenerC2523d implements View.OnClickListener {
        View$OnClickListenerC2523d() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "8";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$e.class */
    static final class View$OnClickListenerC2524e implements View.OnClickListener {
        View$OnClickListenerC2524e() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "9";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$f.class */
    static final class View$OnClickListenerC2525f implements View.OnClickListener {
        View$OnClickListenerC2525f() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "*";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$g.class */
    static final class View$OnClickListenerC2526g implements View.OnClickListener {
        View$OnClickListenerC2526g() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "0";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h.class */
    static final class View$OnLongClickListenerC2527h implements View.OnLongClickListener {
        View$OnLongClickListenerC2527h() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "+";
            DialpadFragment dialpadFragment2 = DialpadFragment.this;
            AsYouTypeFormatter asYouTypeFormatter = dialpadFragment2.f7409g;
            if (asYouTypeFormatter == null) {
                C1694h.m3124a();
            }
            String inputDigit = asYouTypeFormatter.inputDigit('+');
            C1694h.m3122a((Object) inputDigit, "formatter!!.inputDigit('+')");
            dialpadFragment2.f7408f = inputDigit;
            DialpadFragment.this.m846f();
            return true;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$i.class */
    static final class View$OnClickListenerC2528i implements View.OnClickListener {
        View$OnClickListenerC2528i() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "#";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j.class */
    static final class View$OnClickListenerC2529j implements View.OnClickListener {
        View$OnClickListenerC2529j() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (DialpadFragment.this.f7407e.length() > 0) {
                DialpadFragment dialpadFragment = DialpadFragment.this;
                String str = dialpadFragment.f7407e;
                int length = DialpadFragment.this.f7407e.length();
                if (str == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String substring = str.substring(0, length - 1);
                C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                dialpadFragment.f7407e = substring;
            }
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k.class */
    public static final class View$OnClickListenerC2530k implements View.OnClickListener {

        /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$k$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1.class */
        static final class C25311 extends AbstractC1695i implements AbstractC1663b<Boolean, C1775o> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C25311() {
                super(1);
                View$OnClickListenerC2530k.this = r4;
            }

            @Override // kotlin.p081e.p082a.AbstractC1663b
            /* renamed from: a */
            public /* synthetic */ C1775o mo138a(Boolean bool) {
                m842a(bool.booleanValue());
                return C1775o.f4450a;
            }

            /* renamed from: a */
            public final void m842a(boolean z) {
                if (z) {
                    DialpadFragment.this.m850d();
                }
            }
        }

        View$OnClickListenerC2530k() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3086e c3086e = C3086e.f9028a;
            Context context = DialpadFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c3086e.m187a(context, DialpadFragment.this.f7407e, new C25311());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$l.class */
    static final class C2532l extends AbstractC1695i implements AbstractC1674m<ContextMenu, C2302a, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2532l() {
            super(2);
            DialpadFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo44a(ContextMenu contextMenu, C2302a c2302a) {
            m841a(contextMenu, c2302a);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m841a(ContextMenu contextMenu, C2302a c2302a) {
            C1694h.m3117b(contextMenu, "menu");
            C1694h.m3117b(c2302a, "item");
            DialpadFragment.m847e(DialpadFragment.this).m747a(c2302a);
            C2385ac m1658f = c2302a.m1658f();
            if (m1658f == null) {
                C1694h.m3124a();
            }
            contextMenu.setHeaderTitle(m1658f.m1360b());
            contextMenu.add(0, EnumC2520b.COPY_NUMBER.ordinal(), 0, 2131755254);
            contextMenu.add(0, EnumC2520b.CALL_NUMBER.ordinal(), 0, 2131755252);
            contextMenu.add(0, EnumC2520b.SMS.ordinal(), 0, 2131755258);
            contextMenu.add(0, EnumC2520b.CONTACT_DETAILS.ordinal(), 0, 2131755253);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m.class */
    static final class C2533m<T> implements AbstractC0911q<List<C2302a>> {
        C2533m() {
            DialpadFragment.this = r4;
        }

        /* renamed from: a */
        public final void mo431a(List<C2302a> list) {
            if (list != null) {
                DialpadFragment.m847e(DialpadFragment.this).m743b(list);
                C2314e.m1637a(DialpadFragment.m845f(DialpadFragment.this), list, false, 2, null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$n */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$n.class */
    static final class View$OnClickListenerC2534n implements View.OnClickListener {
        View$OnClickListenerC2534n() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "1";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$o */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o.class */
    static final class C2535o extends AbstractC1695i implements AbstractC1663b<C2302a, C1775o> {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f7439b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2535o(ActivityC2499a activityC2499a) {
            super(1);
            DialpadFragment.this = r4;
            this.f7439b = activityC2499a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2302a c2302a) {
            m839a(c2302a);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m839a(C2302a c2302a) {
            C1694h.m3117b(c2302a, "contactItem");
            if (c2302a.m1658f() != null) {
                C2385ac m1658f = c2302a.m1658f();
                Context context = DialpadFragment.this.getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context, "context!!");
                m1658f.m1358b(context);
            } else {
                try {
                    Intent intent = new Intent("android.intent.action.INSERT");
                    intent.setType("vnd.android.cursor.dir/contact");
                    intent.putExtra("phone", DialpadFragment.this.f7407e);
                    DialpadFragment.this.startActivity(intent);
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
            }
            this.f7439b.finish();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$p */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p.class */
    public static final class View$OnLongClickListenerC2536p implements View.OnLongClickListener {

        /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$p$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p$a.class */
        static final class C2537a extends AbstractC1695i implements AbstractC1663b<Boolean, C1775o> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2537a() {
                super(1);
                View$OnLongClickListenerC2536p.this = r4;
            }

            @Override // kotlin.p081e.p082a.AbstractC1663b
            /* renamed from: a */
            public /* synthetic */ C1775o mo138a(Boolean bool) {
                m838a(bool.booleanValue());
                return C1775o.f4450a;
            }

            /* renamed from: a */
            public final void m838a(boolean z) {
                if (z) {
                    DialpadFragment.this.m850d();
                }
            }
        }

        View$OnLongClickListenerC2536p() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            try {
                String m1203O = C2405c.f6946b.m1203O();
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "voicemail number is '" + m1203O + '\'', (String) null, 2, (Object) null);
                if (m1203O == null) {
                    return true;
                }
                C3086e c3086e = C3086e.f9028a;
                Context context = DialpadFragment.this.getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context, "context!!");
                c3086e.m187a(context, m1203O, new C2537a());
                return true;
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                return true;
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$q */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$q.class */
    static final class View$OnClickListenerC2538q implements View.OnClickListener {
        View$OnClickListenerC2538q() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "2";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$r */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$r.class */
    static final class View$OnClickListenerC2539r implements View.OnClickListener {
        View$OnClickListenerC2539r() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "3";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$s */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$s.class */
    static final class View$OnClickListenerC2540s implements View.OnClickListener {
        View$OnClickListenerC2540s() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "4";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$t */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$t.class */
    static final class View$OnClickListenerC2541t implements View.OnClickListener {
        View$OnClickListenerC2541t() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "5";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$u */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$u.class */
    static final class View$OnClickListenerC2542u implements View.OnClickListener {
        View$OnClickListenerC2542u() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "6";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$v */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$v.class */
    static final class View$OnClickListenerC2543v implements View.OnClickListener {
        View$OnClickListenerC2543v() {
            DialpadFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialpadFragment dialpadFragment = DialpadFragment.this;
            String str = dialpadFragment.f7407e;
            dialpadFragment.f7407e = str + "7";
            DialpadFragment.this.m846f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadFragment$w */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$w.class */
    static final class C2544w extends AbstractC1695i implements AbstractC1663b<Boolean, C1775o> {

        /* renamed from: b */
        final /* synthetic */ MenuItem f7449b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2544w(MenuItem menuItem) {
            super(1);
            DialpadFragment.this = r4;
            this.f7449b = menuItem;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* synthetic */ C1775o mo138a(Boolean bool) {
            m837a(bool.booleanValue());
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m837a(boolean z) {
            if (z) {
                DialpadFragment.this.m850d();
            }
        }
    }

    /* renamed from: d */
    public final void m850d() {
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2521c(null), 2, null);
    }

    /* renamed from: e */
    public static final /* synthetic */ C2589a m847e(DialpadFragment dialpadFragment) {
        C2589a c2589a = dialpadFragment.f7411i;
        if (c2589a == null) {
            C1694h.m3116b("model");
        }
        return c2589a;
    }

    /* renamed from: e */
    private final void m848e() {
    }

    /* renamed from: f */
    public static final /* synthetic */ C2314e m845f(DialpadFragment dialpadFragment) {
        C2314e c2314e = dialpadFragment.f7406d;
        if (c2314e == null) {
            C1694h.m3116b("contactsAdapter");
        }
        return c2314e;
    }

    /* renamed from: f */
    public final void m846f() {
        AsYouTypeFormatter asYouTypeFormatter = this.f7409g;
        if (asYouTypeFormatter == null) {
            C1694h.m3124a();
        }
        asYouTypeFormatter.clear();
        this.f7408f = "";
        int length = this.f7407e.length();
        for (int i = 0; i < length; i++) {
            AsYouTypeFormatter asYouTypeFormatter2 = this.f7409g;
            if (asYouTypeFormatter2 == null) {
                C1694h.m3124a();
            }
            String inputDigit = asYouTypeFormatter2.inputDigit(this.f7407e.charAt(i));
            C1694h.m3122a((Object) inputDigit, "formatter!!.inputDigit(number[i])");
            this.f7408f = inputDigit;
        }
        AbstractC2255q abstractC2255q = this.f7405c;
        if (abstractC2255q == null) {
            C1694h.m3116b("binding");
        }
        TextView textView = abstractC2255q.f6259s;
        C1694h.m3122a((Object) textView, "binding.tvNumber");
        textView.setText(this.f7408f);
        C2314e c2314e = this.f7406d;
        if (c2314e == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e.m1644a(this.f7407e);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        Uri data;
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC0919u m5061a = C0925w.m5055a(this).m5061a(C2589a.class);
        C1694h.m3122a((Object) m5061a, "ViewModelProviders.of(th…ityViewModel::class.java)");
        this.f7411i = (C2589a) m5061a;
        try {
            Intent intent = activityC2499a.getIntent();
            if (intent != null) {
                if (C1694h.m3123a((Object) intent.getAction(), (Object) "android.intent.action.VIEW") && (data = intent.getData()) != null) {
                    C1694h.m3122a((Object) data, "uri");
                    String str = data.getPathSegments().get(1);
                    C1694h.m3122a((Object) str, "uri.pathSegments[1]");
                    this.f7407e = str;
                }
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    String string = extras.getString("number", null);
                    C1694h.m3122a((Object) string, "it.getString(\"number\", null)");
                    this.f7407e = string;
                    this.f7407e = C3114n.f9174a.m128a(this.f7407e);
                }
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        this.f7409g = PhoneNumberUtil.getInstance().getAsYouTypeFormatter(C2405c.f6946b.m1171n().m982a());
        AbstractC2255q abstractC2255q = this.f7405c;
        if (abstractC2255q == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q.f6248h.setOnClickListener(new View$OnClickListenerC2534n());
        AbstractC2255q abstractC2255q2 = this.f7405c;
        if (abstractC2255q2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q2.f6248h.setOnLongClickListener(new View$OnLongClickListenerC2536p());
        AbstractC2255q abstractC2255q3 = this.f7405c;
        if (abstractC2255q3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q3.f6249i.setOnClickListener(new View$OnClickListenerC2538q());
        AbstractC2255q abstractC2255q4 = this.f7405c;
        if (abstractC2255q4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q4.f6250j.setOnClickListener(new View$OnClickListenerC2539r());
        AbstractC2255q abstractC2255q5 = this.f7405c;
        if (abstractC2255q5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q5.f6251k.setOnClickListener(new View$OnClickListenerC2540s());
        AbstractC2255q abstractC2255q6 = this.f7405c;
        if (abstractC2255q6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q6.f6252l.setOnClickListener(new View$OnClickListenerC2541t());
        AbstractC2255q abstractC2255q7 = this.f7405c;
        if (abstractC2255q7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q7.f6253m.setOnClickListener(new View$OnClickListenerC2542u());
        AbstractC2255q abstractC2255q8 = this.f7405c;
        if (abstractC2255q8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q8.f6254n.setOnClickListener(new View$OnClickListenerC2543v());
        AbstractC2255q abstractC2255q9 = this.f7405c;
        if (abstractC2255q9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q9.f6255o.setOnClickListener(new View$OnClickListenerC2523d());
        AbstractC2255q abstractC2255q10 = this.f7405c;
        if (abstractC2255q10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q10.f6256p.setOnClickListener(new View$OnClickListenerC2524e());
        AbstractC2255q abstractC2255q11 = this.f7405c;
        if (abstractC2255q11 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q11.f6258r.setOnClickListener(new View$OnClickListenerC2525f());
        AbstractC2255q abstractC2255q12 = this.f7405c;
        if (abstractC2255q12 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q12.f6247g.setOnClickListener(new View$OnClickListenerC2526g());
        AbstractC2255q abstractC2255q13 = this.f7405c;
        if (abstractC2255q13 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q13.f6247g.setOnLongClickListener(new View$OnLongClickListenerC2527h());
        AbstractC2255q abstractC2255q14 = this.f7405c;
        if (abstractC2255q14 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q14.f6257q.setOnClickListener(new View$OnClickListenerC2528i());
        AbstractC2255q abstractC2255q15 = this.f7405c;
        if (abstractC2255q15 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q15.f6243c.setOnClickListener(new View$OnClickListenerC2529j());
        AbstractC2255q abstractC2255q16 = this.f7405c;
        if (abstractC2255q16 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q16.f6244d.setOnClickListener(new View$OnClickListenerC2530k());
        AbstractC2255q abstractC2255q17 = this.f7405c;
        if (abstractC2255q17 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2255q17.f6246f;
        C1694h.m3122a((Object) linearLayout, "binding.llNumberContainer");
        linearLayout.setClickable(true);
        AbstractC2255q abstractC2255q18 = this.f7405c;
        if (abstractC2255q18 == null) {
            C1694h.m3116b("binding");
        }
        registerForContextMenu(abstractC2255q18.f6246f);
        C2589a c2589a = this.f7411i;
        if (c2589a == null) {
            C1694h.m3116b("model");
        }
        this.f7406d = new C2314e(c2589a.m742c());
        C2314e c2314e = this.f7406d;
        if (c2314e == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e.m1634b(false);
        C2314e c2314e2 = this.f7406d;
        if (c2314e2 == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e2.m1630d(true);
        C2314e c2314e3 = this.f7406d;
        if (c2314e3 == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e3.m1632c(true);
        C2314e c2314e4 = this.f7406d;
        if (c2314e4 == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e4.m1640a(new C2532l());
        C2321g.f6563e.m5137a(this, new C2533m());
        Context context = getContext();
        if (context == null) {
            C1694h.m3124a();
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        AbstractC2255q abstractC2255q19 = this.f7405c;
        if (abstractC2255q19 == null) {
            C1694h.m3116b("binding");
        }
        RecyclerView recyclerView = abstractC2255q19.f6245e;
        C1694h.m3122a((Object) recyclerView, "binding.listView");
        recyclerView.setLayoutManager(linearLayoutManager);
        AbstractC2255q abstractC2255q20 = this.f7405c;
        if (abstractC2255q20 == null) {
            C1694h.m3116b("binding");
        }
        RecyclerView recyclerView2 = abstractC2255q20.f6245e;
        C1694h.m3122a((Object) recyclerView2, "binding.listView");
        C2314e c2314e5 = this.f7406d;
        if (c2314e5 == null) {
            C1694h.m3116b("contactsAdapter");
        }
        recyclerView2.setAdapter(c2314e5);
        C2314e c2314e6 = this.f7406d;
        if (c2314e6 == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e6.m1641a(new C2535o(activityC2499a));
        AbstractC2255q abstractC2255q21 = this.f7405c;
        if (abstractC2255q21 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2255q21.f6245e.setOnCreateContextMenuListener(this);
        m846f();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C2385ac m1658f;
        NumberInfo m1346j;
        C2385ac m1658f2;
        C1694h.m3117b(menuItem, "item");
        try {
            int i = C2545a.f7450a[EnumC2520b.values()[menuItem.getItemId()].ordinal()];
            if (i == 1) {
                if (!(this.f7410h.length() > 0)) {
                    return true;
                }
                this.f7407e = C3114n.f9174a.m128a(this.f7410h);
                m846f();
                return true;
            } else if (i == 2) {
                try {
                    Intent intent = new Intent("android.intent.action.INSERT");
                    intent.setType("vnd.android.cursor.dir/contact");
                    intent.putExtra("phone", this.f7407e);
                    startActivity(intent);
                    return true;
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    return true;
                }
            } else {
                C2589a c2589a = this.f7411i;
                if (c2589a == null) {
                    C1694h.m3116b("model");
                }
                C2302a m739f = c2589a.m739f();
                if (m739f == null || (m1658f = m739f.m1658f()) == null || (m1346j = m1658f.m1346j()) == null || m1346j.m1479b() == null) {
                    return true;
                }
                int i2 = C2545a.f7451b[EnumC2520b.values()[menuItem.getItemId()].ordinal()];
                if (i2 == 1) {
                    C3135y.f9272b.m23a().setPrimaryClip(ClipData.newPlainText("phone number", this.f7407e));
                    return true;
                } else if (i2 == 2) {
                    C3086e c3086e = C3086e.f9028a;
                    Context context = getContext();
                    if (context == null) {
                        C1694h.m3124a();
                    }
                    C1694h.m3122a((Object) context, "context!!");
                    c3086e.m187a(context, this.f7407e, new C2544w(menuItem));
                    return true;
                } else if (i2 == 3) {
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setData(Uri.parse("sms: " + this.f7407e));
                    startActivity(intent2);
                    return true;
                } else if (i2 != 4) {
                    return true;
                } else {
                    C2589a c2589a2 = this.f7411i;
                    if (c2589a2 == null) {
                        C1694h.m3116b("model");
                    }
                    C2302a m739f2 = c2589a2.m739f();
                    if (m739f2 == null || (m1658f2 = m739f2.m1658f()) == null) {
                        return true;
                    }
                    Context context2 = getContext();
                    if (context2 == null) {
                        C1694h.m3124a();
                    }
                    C1694h.m3122a((Object) context2, "context!!");
                    m1658f2.m1366a(context2);
                    return true;
                }
            }
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            return true;
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        C1694h.m3117b(contextMenu, "menu");
        C1694h.m3117b(view, "v");
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (view.getId() == 2131362211) {
            try {
                Object systemService = m859a().getSystemService("clipboard");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
                }
                CharSequence text = ((ClipboardManager) systemService).getText();
                if (text != null) {
                    if (text.length() > 0) {
                        this.f7410h = C1747g.m3037a(C1747g.m3037a(text.toString(), "\n", "", false, 4, (Object) null), " ", "", false, 4, (Object) null);
                        int length = this.f7410h.length();
                        if (1 <= length && 20 >= length) {
                            contextMenu.add(0, EnumC2520b.EDIT_PASTE.ordinal(), 0, 2131755257);
                        }
                    }
                }
                if (!(this.f7407e.length() > 0)) {
                    return;
                }
                contextMenu.add(0, EnumC2520b.EDIT_CONTACT_CREATE.ordinal(), 0, 2131755256);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558451, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f7405c = (AbstractC2255q) m5843a;
        AbstractC2255q abstractC2255q = this.f7405c;
        if (abstractC2255q == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2255q.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C2314e c2314e = this.f7406d;
        if (c2314e == null) {
            C1694h.m3116b("contactsAdapter");
        }
        c2314e.m1644a("");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        m848e();
        super.onResume();
    }
}
