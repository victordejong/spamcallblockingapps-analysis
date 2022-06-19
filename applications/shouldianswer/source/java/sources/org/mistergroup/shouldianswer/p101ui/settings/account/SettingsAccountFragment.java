package org.mistergroup.shouldianswer.p101ui.settings.account;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import java.util.Date;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.AbstractC1950y;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.UserAccount;
import org.mistergroup.shouldianswer.p097a.AbstractC2190cy;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment.class */
public final class SettingsAccountFragment extends AbstractC2510b {

    /* renamed from: c */
    private AbstractC2190cy f8554c;

    /* renamed from: d */
    private boolean f8555d;

    /* renamed from: e */
    private boolean f8556e;

    /* renamed from: f */
    private boolean f8557f;

    /* renamed from: b */
    private EnumC2884a f8553b = EnumC2884a.NONE;

    /* renamed from: g */
    private String f8558g = UserAccount.f6828a.m1389a();

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a.class */
    public enum EnumC2884a {
        NONE,
        CREATE,
        CONNECT
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$b.class */
    public static final class View$OnClickListenerC2885b implements View.OnClickListener {

        @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {54, 56, 67}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$b$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$b$1.class */
        public static final class C28861 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8564a;

            /* renamed from: b */
            Object f8565b;

            /* renamed from: c */
            int f8566c;

            /* renamed from: e */
            private AbstractC1786ad f8568e;

            @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$1$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$b$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$b$1$1.class */
            public static final class C28871 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super DialogInterfaceC0090d>, Object> {

                /* renamed from: a */
                int f8569a;

                /* renamed from: c */
                private AbstractC1786ad f8571c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C28871(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C28861.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super DialogInterfaceC0090d> abstractC1641c) {
                    return ((C28871) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C28871 c28871 = new C28871(abstractC1641c);
                    c28871.f8571c = (AbstractC1786ad) obj;
                    return c28871;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8569a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8571c;
                        C2398ai.f6930a.m1274e(SettingsAccountFragment.this.f8558g);
                        SettingsAccountFragment.this.m353d();
                        return new DialogInterfaceC0090d.C0091a(SettingsAccountFragment.this.m859a()).m7920a(SettingsAccountFragment.this.getString(2131755270)).m7913b(SettingsAccountFragment.this.getString(2131755269)).m7919a(SettingsAccountFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$1$1$2")
            /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$b$1$2 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$b$1$2.class */
            public static final class C28882 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8572a;

                /* renamed from: c */
                private AbstractC1786ad f8574c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C28882(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C28861.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C28882) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C28882 c28882 = new C28882(abstractC1641c);
                    c28882.f8574c = (AbstractC1786ad) obj;
                    return c28882;
                }

                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0047 -> B:6:0x0039). Please submit an issue!!! */
                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8572a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8574c;
                        try {
                            Toast.makeText(SettingsAccountFragment.this.m859a(), MyApp.f5480c.m1802a().getString(2131755246), 1).show();
                        } catch (Exception e) {
                        }
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C28861(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2885b.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C28861) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C28861 c28861 = new C28861(abstractC1641c);
                c28861.f8568e = (AbstractC1786ad) obj;
                return c28861;
            }

            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Not initialized variable reg: 11, insn: 0x017b: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:67:0x0155 */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object obj2;
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f8566c;
                try {
                    try {
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                        this.f8564a = obj2;
                        this.f8565b = e;
                        this.f8566c = 3;
                        if (C1890e.m2686a(C3084c.m192b(), new C28882(null), this) == a) {
                            return a;
                        }
                    }
                    if (i == 0) {
                        C1771k.m2979a(obj);
                        abstractC1786ad = this.f8568e;
                        SettingsAccountFragment.this.f8557f = true;
                        UserAccount userAccount = UserAccount.f6828a;
                        String str = SettingsAccountFragment.this.f8558g;
                        BetterEditText betterEditText = SettingsAccountFragment.m354c(SettingsAccountFragment.this).f5932o;
                        C1694h.m3122a((Object) betterEditText, "binding.editAccountCreationPassword");
                        String valueOf = String.valueOf(betterEditText.getText());
                        this.f8564a = abstractC1786ad;
                        this.f8566c = 1;
                        if (userAccount.m1387a("", "", str, valueOf, this) == a) {
                            return a;
                        }
                    } else if (i != 1) {
                        if (i == 2) {
                            AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8564a;
                            C1771k.m2979a(obj);
                        } else if (i != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        } else {
                            Exception exc = (Exception) this.f8565b;
                            AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8564a;
                            C1771k.m2979a(obj);
                        }
                        SettingsAccountFragment.this.f8557f = false;
                        return C1775o.f4450a;
                    } else {
                        AbstractC1786ad abstractC1786ad4 = (AbstractC1786ad) this.f8564a;
                        C1771k.m2979a(obj);
                        abstractC1786ad = abstractC1786ad4;
                    }
                    AbstractC1786ad abstractC1786ad5 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad6 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad7 = abstractC1786ad;
                    C2405c.f6946b.m1177h(new Date().getTime());
                    AbstractC1786ad abstractC1786ad8 = abstractC1786ad;
                    AbstractC1950y m192b = C3084c.m192b();
                    AbstractC1786ad abstractC1786ad9 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad10 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad11 = abstractC1786ad;
                    C28871 c28871 = new C28871(null);
                    AbstractC1786ad abstractC1786ad12 = abstractC1786ad;
                    this.f8564a = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad13 = abstractC1786ad;
                    this.f8566c = 2;
                    AbstractC1786ad abstractC1786ad14 = abstractC1786ad;
                    if (C1890e.m2686a(m192b, c28871, this) == a) {
                        return a;
                    }
                    SettingsAccountFragment.this.f8557f = false;
                    return C1775o.f4450a;
                } catch (Throwable th) {
                    SettingsAccountFragment.this.f8557f = false;
                    throw th;
                }
            }
        }

        View$OnClickListenerC2885b() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C28861(null), 2, null);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c.class */
    static final class View$OnClickListenerC2889c implements View.OnClickListener {

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1.class */
        static final class DialogInterface$OnClickListenerC28901 implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public static final DialogInterface$OnClickListenerC28901 f8576a = new DialogInterface$OnClickListenerC28901();

            DialogInterface$OnClickListenerC28901() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C1694h.m3117b(dialogInterface, "dialogInterface");
            }
        }

        View$OnClickListenerC2889c() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsAccountFragment.this.m859a()).m7920a(SettingsAccountFragment.this.getString(2131755275)).m7913b(SettingsAccountFragment.this.getString(2131755274)).m7919a(SettingsAccountFragment.this.getString(2131755219), DialogInterface$OnClickListenerC28901.f8576a).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d.class */
    public static final class View$OnClickListenerC2891d implements View.OnClickListener {

        @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {93, 95, 102}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$2$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1.class */
        public static final class C28921 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8578a;

            /* renamed from: b */
            Object f8579b;

            /* renamed from: c */
            int f8580c;

            /* renamed from: e */
            final /* synthetic */ String f8582e;

            /* renamed from: f */
            private AbstractC1786ad f8583f;

            @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$2$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$d$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1.class */
            public static final class C28931 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8584a;

                /* renamed from: c */
                private AbstractC1786ad f8586c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C28931(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C28921.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C28931) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C28931 c28931 = new C28931(abstractC1641c);
                    c28931.f8586c = (AbstractC1786ad) obj;
                    return c28931;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8584a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8586c;
                        C2398ai.f6930a.m1274e(C28921.this.f8582e);
                        SettingsAccountFragment.this.m353d();
                        Toast.makeText(SettingsAccountFragment.this.m859a(), SettingsAccountFragment.this.getString(2131755262), 1).show();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$2$1$2")
            /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$d$1$2 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$2.class */
            public static final class C28942 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8587a;

                /* renamed from: c */
                final /* synthetic */ Exception f8589c;

                /* renamed from: d */
                private AbstractC1786ad f8590d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C28942(Exception exc, AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C28921.this = r5;
                    this.f8589c = exc;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C28942) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C28942 c28942 = new C28942(this.f8589c, abstractC1641c);
                    c28942.f8590d = (AbstractC1786ad) obj;
                    return c28942;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8587a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8590d;
                        if (this.f8589c instanceof UserAccount.EAccessDenied) {
                            Toast.makeText(SettingsAccountFragment.this.m859a(), SettingsAccountFragment.this.getString(2131755344), 1).show();
                        } else {
                            Toast.makeText(SettingsAccountFragment.this.m859a(), SettingsAccountFragment.this.getString(2131755246), 1).show();
                        }
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C28921(String str, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2891d.this = r5;
                this.f8582e = str;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C28921) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C28921 c28921 = new C28921(this.f8582e, abstractC1641c);
                c28921.f8583f = (AbstractC1786ad) obj;
                return c28921;
            }

            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Not initialized variable reg: 11, insn: 0x0177: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:67:0x014f */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object obj2;
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f8580c;
                try {
                    try {
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                        this.f8578a = obj2;
                        this.f8579b = e;
                        this.f8580c = 3;
                        if (C1890e.m2686a(C3084c.m192b(), new C28942(e, null), this) == a) {
                            return a;
                        }
                    }
                    if (i == 0) {
                        C1771k.m2979a(obj);
                        abstractC1786ad = this.f8583f;
                        SettingsAccountFragment.this.f8557f = true;
                        UserAccount userAccount = UserAccount.f6828a;
                        String str = this.f8582e;
                        BetterEditText betterEditText = SettingsAccountFragment.m354c(SettingsAccountFragment.this).f5931n;
                        C1694h.m3122a((Object) betterEditText, "binding.editAccountConnectPassword");
                        String valueOf = String.valueOf(betterEditText.getText());
                        this.f8578a = abstractC1786ad;
                        this.f8580c = 1;
                        if (userAccount.m1387a("", "", str, valueOf, this) == a) {
                            return a;
                        }
                    } else if (i != 1) {
                        if (i == 2) {
                            AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8578a;
                            C1771k.m2979a(obj);
                        } else if (i != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        } else {
                            Exception exc = (Exception) this.f8579b;
                            AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8578a;
                            C1771k.m2979a(obj);
                        }
                        SettingsAccountFragment.this.f8557f = false;
                        return C1775o.f4450a;
                    } else {
                        AbstractC1786ad abstractC1786ad4 = (AbstractC1786ad) this.f8578a;
                        C1771k.m2979a(obj);
                        abstractC1786ad = abstractC1786ad4;
                    }
                    AbstractC1786ad abstractC1786ad5 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad6 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad7 = abstractC1786ad;
                    C2405c.f6946b.m1177h(new Date().getTime());
                    AbstractC1786ad abstractC1786ad8 = abstractC1786ad;
                    AbstractC1950y m192b = C3084c.m192b();
                    AbstractC1786ad abstractC1786ad9 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad10 = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad11 = abstractC1786ad;
                    C28931 c28931 = new C28931(null);
                    AbstractC1786ad abstractC1786ad12 = abstractC1786ad;
                    this.f8578a = abstractC1786ad;
                    AbstractC1786ad abstractC1786ad13 = abstractC1786ad;
                    this.f8580c = 2;
                    AbstractC1786ad abstractC1786ad14 = abstractC1786ad;
                    if (C1890e.m2686a(m192b, c28931, this) == a) {
                        return a;
                    }
                    SettingsAccountFragment.this.f8557f = false;
                    return C1775o.f4450a;
                } catch (Throwable th) {
                    SettingsAccountFragment.this.f8557f = false;
                    throw th;
                }
            }
        }

        View$OnClickListenerC2891d() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!SettingsAccountFragment.this.f8557f) {
                BetterEditText betterEditText = SettingsAccountFragment.m354c(SettingsAccountFragment.this).f5934q;
                C1694h.m3122a((Object) betterEditText, "binding.editUserId");
                String valueOf = String.valueOf(betterEditText.getText());
                if (valueOf == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                }
                String obj = C1747g.m3029a((CharSequence) valueOf).toString();
                if (UserAccount.f6828a.m1388a(obj)) {
                    C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C28921(obj, null), 2, null);
                } else {
                    Toast.makeText(SettingsAccountFragment.this.m859a(), SettingsAccountFragment.this.getString(2131755346), 1).show();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e.class */
    public static final class View$OnClickListenerC2895e implements View.OnClickListener {
        View$OnClickListenerC2895e() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsAccountFragment.this.m859a()).m7920a(SettingsAccountFragment.this.getString(2131755273)).m7913b(SettingsAccountFragment.this.getString(2131755272)).m7919a(SettingsAccountFragment.this.getString(2131755271), new DialogInterface.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment.e.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C1694h.m3117b(dialogInterface, "dialogInterface");
                    C2398ai.f6930a.m1274e("");
                    SettingsAccountFragment.this.f8553b = EnumC2884a.NONE;
                    SettingsAccountFragment.this.m353d();
                }
            }).m7912b(SettingsAccountFragment.this.getString(2131755183), null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$f.class */
    static final class View$OnClickListenerC2897f implements View.OnClickListener {
        View$OnClickListenerC2897f() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String string = SettingsAccountFragment.this.getString(2131755150);
            C1694h.m3122a((Object) string, "getString(R.string.app_name)");
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            String m1303H = C2398ai.f6930a.m1303H();
            intent.putExtra("android.intent.extra.SUBJECT", string);
            intent.putExtra("android.intent.extra.TEXT", m1303H);
            SettingsAccountFragment settingsAccountFragment = SettingsAccountFragment.this;
            settingsAccountFragment.startActivity(Intent.createChooser(intent, settingsAccountFragment.getString(2131755496)));
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$g.class */
    static final class View$OnClickListenerC2898g implements View.OnClickListener {
        View$OnClickListenerC2898g() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsAccountFragment.this.f8553b = EnumC2884a.CONNECT;
            SettingsAccountFragment.this.m353d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$h.class */
    static final class View$OnClickListenerC2899h implements View.OnClickListener {
        View$OnClickListenerC2899h() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsAccountFragment.this.f8553b = EnumC2884a.CREATE;
            SettingsAccountFragment.this.m353d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$i.class */
    static final class View$OnClickListenerC2900i implements View.OnClickListener {
        View$OnClickListenerC2900i() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsAccountFragment.this.f8553b = EnumC2884a.NONE;
            SettingsAccountFragment.this.m353d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$j.class */
    static final class View$OnClickListenerC2901j implements View.OnClickListener {
        View$OnClickListenerC2901j() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsAccountFragment.this.f8553b = EnumC2884a.NONE;
            SettingsAccountFragment.this.m353d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k.class */
    public static final class View$OnClickListenerC2902k implements View.OnClickListener {

        @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {166, 167}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$9$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$k$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k$1.class */
        public static final class C29031 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f8599a;

            /* renamed from: b */
            int f8600b;

            /* renamed from: d */
            private AbstractC1786ad f8602d;

            @AbstractC1634f(m3162b = "SettingsAccountFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$9$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$k$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k$1$1.class */
            public static final class C29041 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f8603a;

                /* renamed from: c */
                private AbstractC1786ad f8605c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C29041(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C29031.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C29041) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C29041 c29041 = new C29041(abstractC1641c);
                    c29041.f8605c = (AbstractC1786ad) obj;
                    return c29041;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8603a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8605c;
                        Toast.makeText(SettingsAccountFragment.this.m859a(), SettingsAccountFragment.this.getString(2131755515), 1).show();
                        SettingsAccountFragment.this.m353d();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C29031(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                View$OnClickListenerC2902k.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C29031) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C29031 c29031 = new C29031(abstractC1641c);
                c29031.f8602d = (AbstractC1786ad) obj;
                return c29031;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f8600b;
                try {
                    try {
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    }
                    if (i == 0) {
                        C1771k.m2979a(obj);
                        abstractC1786ad = this.f8602d;
                        SettingsAccountFragment.this.f8556e = true;
                        C3079ad c3079ad = C3079ad.f8982a;
                        this.f8599a = abstractC1786ad;
                        this.f8600b = 1;
                        if (c3079ad.m215a(true, (AbstractC1641c<? super Boolean>) this) == a) {
                            return a;
                        }
                    } else if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8599a;
                        C1771k.m2979a(obj);
                        return C1775o.f4450a;
                    } else {
                        AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8599a;
                        C1771k.m2979a(obj);
                        abstractC1786ad = abstractC1786ad3;
                    }
                    this.f8599a = abstractC1786ad;
                    this.f8600b = 2;
                    if (C1890e.m2686a(C3084c.m192b(), new C29041(null), this) == a) {
                        return a;
                    }
                    return C1775o.f4450a;
                } finally {
                    SettingsAccountFragment.this.f8556e = false;
                }
            }
        }

        View$OnClickListenerC2902k() {
            SettingsAccountFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!SettingsAccountFragment.this.f8556e) {
                Toast.makeText(SettingsAccountFragment.this.m859a(), SettingsAccountFragment.this.getString(2131755516), 1).show();
                C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C29031(null), 2, null);
            }
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC2190cy m354c(SettingsAccountFragment settingsAccountFragment) {
        AbstractC2190cy abstractC2190cy = settingsAccountFragment.f8554c;
        if (abstractC2190cy == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2190cy;
    }

    /* renamed from: d */
    public final void m353d() {
        long m1206L;
        boolean z = true;
        this.f8555d = true;
        String m1303H = C2398ai.f6930a.m1303H();
        if (m1303H.length() <= 0) {
            z = false;
        }
        AbstractC2190cy abstractC2190cy = this.f8554c;
        if (abstractC2190cy == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2190cy.f5935r;
        C1694h.m3122a((Object) linearLayout, "binding.llAccountInfo");
        linearLayout.setVisibility(z ? 0 : 8);
        AbstractC2190cy abstractC2190cy2 = this.f8554c;
        if (abstractC2190cy2 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout2 = abstractC2190cy2.f5938u;
        C1694h.m3122a((Object) linearLayout2, "binding.llInitialSelection");
        linearLayout2.setVisibility((z || this.f8553b != EnumC2884a.NONE) ? 8 : 0);
        AbstractC2190cy abstractC2190cy3 = this.f8554c;
        if (abstractC2190cy3 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout3 = abstractC2190cy3.f5937t;
        C1694h.m3122a((Object) linearLayout3, "binding.llCreateAccount");
        linearLayout3.setVisibility((z || this.f8553b != EnumC2884a.CREATE) ? 8 : 0);
        AbstractC2190cy abstractC2190cy4 = this.f8554c;
        if (abstractC2190cy4 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout4 = abstractC2190cy4.f5936s;
        C1694h.m3122a((Object) linearLayout4, "binding.llConnectAccount");
        int i = 8;
        if (!z) {
            i = 8;
            if (this.f8553b == EnumC2884a.CONNECT) {
                i = 0;
            }
        }
        linearLayout4.setVisibility(i);
        AbstractC2190cy abstractC2190cy5 = this.f8554c;
        if (abstractC2190cy5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy5.f5933p.setText(this.f8558g);
        AbstractC2190cy abstractC2190cy6 = this.f8554c;
        if (abstractC2190cy6 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout5 = abstractC2190cy6.f5935r;
        C1694h.m3122a((Object) linearLayout5, "binding.llAccountInfo");
        if (linearLayout5.getVisibility() == 0) {
            AbstractC2190cy abstractC2190cy7 = this.f8554c;
            if (abstractC2190cy7 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView = abstractC2190cy7.f5941x;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvUserID");
            appCompatTextView.setText(m1303H);
        }
        if (C2405c.f6946b.m1206L() != 0) {
            String str = MyApp.f5480c.m1802a().m1807a().format(Long.valueOf(m1206L)) + " " + MyApp.f5480c.m1802a().m1805b().format(Long.valueOf(m1206L));
            AbstractC2190cy abstractC2190cy8 = this.f8554c;
            if (abstractC2190cy8 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView2 = abstractC2190cy8.f5940w;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvLastSynchronization");
            appCompatTextView2.setText(str);
        } else {
            AbstractC2190cy abstractC2190cy9 = this.f8554c;
            if (abstractC2190cy9 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView3 = abstractC2190cy9.f5940w;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvLastSynchronization");
            appCompatTextView3.setText(getString(2131755392));
        }
        this.f8555d = false;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2190cy abstractC2190cy = this.f8554c;
        if (abstractC2190cy == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy.f5926i.setOnClickListener(new View$OnClickListenerC2885b());
        AbstractC2190cy abstractC2190cy2 = this.f8554c;
        if (abstractC2190cy2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy2.f5923f.setOnClickListener(new View$OnClickListenerC2891d());
        AbstractC2190cy abstractC2190cy3 = this.f8554c;
        if (abstractC2190cy3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy3.f5928k.setOnClickListener(new View$OnClickListenerC2895e());
        AbstractC2190cy abstractC2190cy4 = this.f8554c;
        if (abstractC2190cy4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy4.f5929l.setOnClickListener(new View$OnClickListenerC2897f());
        AbstractC2190cy abstractC2190cy5 = this.f8554c;
        if (abstractC2190cy5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy5.f5921d.setOnClickListener(new View$OnClickListenerC2898g());
        AbstractC2190cy abstractC2190cy6 = this.f8554c;
        if (abstractC2190cy6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy6.f5924g.setOnClickListener(new View$OnClickListenerC2899h());
        AbstractC2190cy abstractC2190cy7 = this.f8554c;
        if (abstractC2190cy7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy7.f5922e.setOnClickListener(new View$OnClickListenerC2900i());
        AbstractC2190cy abstractC2190cy8 = this.f8554c;
        if (abstractC2190cy8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy8.f5925h.setOnClickListener(new View$OnClickListenerC2901j());
        AbstractC2190cy abstractC2190cy9 = this.f8554c;
        if (abstractC2190cy9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy9.f5930m.setOnClickListener(new View$OnClickListenerC2902k());
        AbstractC2190cy abstractC2190cy10 = this.f8554c;
        if (abstractC2190cy10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2190cy10.f5927j.setOnClickListener(new View$OnClickListenerC2889c());
        m353d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2190cy abstractC2190cy = this.f8554c;
        if (abstractC2190cy == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2190cy.f5920c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623938, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558505, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8554c = (AbstractC2190cy) m5843a;
        AbstractC2190cy abstractC2190cy = this.f8554c;
        if (abstractC2190cy == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2190cy.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Context context;
        C1694h.m3117b(menuItem, "item");
        if (menuItem.getItemId() == 2131361841 && (context = getContext()) != null) {
            C3078ac c3078ac = C3078ac.f8981a;
            C1694h.m3122a((Object) context, "it");
            String string = getString(2131755317);
            C1694h.m3122a((Object) string, "getString(R.string.help_url_data_backup_how_to)");
            c3078ac.m220a(context, string);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m353d();
    }
}
