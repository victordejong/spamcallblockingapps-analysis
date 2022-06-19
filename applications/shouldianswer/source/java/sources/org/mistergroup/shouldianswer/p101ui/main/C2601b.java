package org.mistergroup.shouldianswer.p101ui.main;

import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import java.util.Date;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
import org.mistergroup.shouldianswer.p097a.AbstractC2263y;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.p101ui.settings.protection.SettingsProtectionActivity;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3118r;
/* renamed from: org.mistergroup.shouldianswer.ui.main.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b.class */
public final class C2601b {

    /* renamed from: a */
    public static final C2603b f7636a = new C2603b(null);

    /* renamed from: d */
    private static int f7637d;

    /* renamed from: b */
    private final MainActivity f7638b;

    /* renamed from: c */
    private final AbstractC2263y f7639c;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$a.class */
    public static final class C2602a {

        /* renamed from: a */
        private boolean f7640a;

        /* renamed from: b */
        private boolean f7641b;

        /* renamed from: c */
        private final long f7642c;

        /* renamed from: d */
        private boolean f7643d;

        /* renamed from: e */
        private MainFragment.EnumC2575a f7644e;

        /* renamed from: f */
        private int f7645f;

        public C2602a() {
            this(false, false, 0L, false, null, 0, 63, null);
        }

        public C2602a(boolean z, boolean z2, long j, boolean z3, MainFragment.EnumC2575a enumC2575a, int i) {
            C1694h.m3117b(enumC2575a, "bannerType");
            this.f7640a = z;
            this.f7641b = z2;
            this.f7642c = j;
            this.f7643d = z3;
            this.f7644e = enumC2575a;
            this.f7645f = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        public /* synthetic */ C2602a(boolean z, boolean z2, long j, boolean z3, MainFragment.EnumC2575a enumC2575a, int i, int i2, C1691e c1691e) {
            this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? new Date().getTime() : j, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? MainFragment.EnumC2575a.None : enumC2575a, (i2 & 32) != 0 ? 1440 : i);
        }

        /* renamed from: a */
        public final void m706a(int i) {
            this.f7645f = i;
        }

        /* renamed from: a */
        public final void m704a(MainFragment.EnumC2575a enumC2575a) {
            C1694h.m3117b(enumC2575a, "<set-?>");
            this.f7644e = enumC2575a;
        }

        /* renamed from: a */
        public final void m702a(boolean z) {
            this.f7640a = z;
        }

        /* renamed from: a */
        public final boolean m707a() {
            return this.f7640a;
        }

        /* renamed from: b */
        public final void m699b(boolean z) {
            this.f7641b = z;
        }

        /* renamed from: b */
        public final boolean m701b() {
            return this.f7641b;
        }

        /* renamed from: c */
        public final long m698c() {
            return this.f7642c;
        }

        /* renamed from: c */
        public final void m697c(boolean z) {
            this.f7643d = z;
        }

        /* renamed from: d */
        public final boolean m696d() {
            return this.f7643d;
        }

        /* renamed from: e */
        public final MainFragment.EnumC2575a m695e() {
            return this.f7644e;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C2602a)) {
                    return false;
                }
                C2602a c2602a = (C2602a) obj;
                if (!(this.f7640a == c2602a.f7640a)) {
                    return false;
                }
                if (!(this.f7641b == c2602a.f7641b)) {
                    return false;
                }
                if (!(this.f7642c == c2602a.f7642c)) {
                    return false;
                }
                if (!(this.f7643d == c2602a.f7643d) || !C1694h.m3123a(this.f7644e, c2602a.f7644e)) {
                    return false;
                }
                return this.f7645f == c2602a.f7645f;
            }
            return true;
        }

        /* renamed from: f */
        public final int m694f() {
            return this.f7645f;
        }

        public int hashCode() {
            boolean z = this.f7640a;
            int i = 1;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            boolean z3 = this.f7641b;
            boolean z4 = z3;
            if (z3) {
                z4 = true;
            }
            long j = this.f7642c;
            int i2 = (int) (j ^ (j >>> 32));
            boolean z5 = this.f7643d;
            if (!z5) {
                i = z5 ? 1 : 0;
            }
            MainFragment.EnumC2575a enumC2575a = this.f7644e;
            return ((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + i2) * 31) + i) * 31) + (enumC2575a != null ? enumC2575a.hashCode() : 0)) * 31) + this.f7645f;
        }

        public String toString() {
            return "BState(canShow=" + this.f7640a + ", force=" + this.f7641b + ", actTime=" + this.f7642c + ", preparedBanner=" + this.f7643d + ", bannerType=" + this.f7644e + ", snoozeMinutes=" + this.f7645f + ")";
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$b.class */
    public static final class C2603b {
        private C2603b() {
        }

        public /* synthetic */ C2603b(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final int m693a() {
            return C2601b.f7637d;
        }

        /* renamed from: a */
        public final void m691a(int i) {
            C2601b.f7637d = i;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$c.class */
    public static final class View$OnClickListenerC2604c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ C2602a f7647b;

        View$OnClickListenerC2604c(C2602a c2602a) {
            C2601b.this = r4;
            this.f7647b = c2602a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2601b.this.m722a();
            C2405c.f6946b.m1196a(this.f7647b.m695e(), this.f7647b.m694f());
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {53, 54, 56, 57, 58, 60, 62}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$check$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$d.class */
    public static final class C2605d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7648a;

        /* renamed from: b */
        long f7649b;

        /* renamed from: c */
        int f7650c;

        /* renamed from: e */
        final /* synthetic */ C2602a f7652e;

        /* renamed from: f */
        private AbstractC1786ad f7653f;

        @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$check$2$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.b$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$d$1.class */
        public static final class C26061 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7654a;

            /* renamed from: c */
            private AbstractC1786ad f7656c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26061(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2605d.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26061) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26061 c26061 = new C26061(abstractC1641c);
                c26061.f7656c = (AbstractC1786ad) obj;
                return c26061;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7654a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7656c;
                    MaterialCardView materialCardView = C2601b.this.m713d().f6328l;
                    C1694h.m3122a((Object) materialCardView, "binding.cardBanner");
                    materialCardView.setVisibility(0);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2605d(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7652e = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2605d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2605d c2605d = new C2605d(this.f7652e, abstractC1641c);
            c2605d.f7653f = (AbstractC1786ad) obj;
            return c2605d;
        }

        /* JADX WARN: Removed duplicated region for block: B:108:0x02ca  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x032d  */
        /* JADX WARN: Removed duplicated region for block: B:146:0x0380  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x019b  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x01f0  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x026e  */
        /* JADX WARN: Type inference failed for: r0v171, types: [long] */
        /* JADX WARN: Type inference failed for: r0v199, types: [long] */
        /* JADX WARN: Type inference failed for: r0v207, types: [long] */
        /* JADX WARN: Type inference failed for: r0v214, types: [long] */
        /* JADX WARN: Type inference failed for: r0v222, types: [long] */
        /* JADX WARN: Type inference failed for: r0v229, types: [long] */
        /* JADX WARN: Type inference failed for: r0v237, types: [long] */
        /* JADX WARN: Type inference failed for: r0v244, types: [long] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 1059
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.C2601b.C2605d.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {104, 108}, m3160d = "checkBlockingNotActive", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$e.class */
    public static final class C2607e extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7657a;

        /* renamed from: b */
        int f7658b;

        /* renamed from: d */
        Object f7660d;

        /* renamed from: e */
        Object f7661e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2607e(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2601b.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7657a = obj;
            this.f7658b |= AbstractC0610a.INVALID_ID;
            return C2601b.this.m716b(null, this);
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkBlockingNotActive$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$f.class */
    public static final class C2608f extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7662a;

        /* renamed from: c */
        final /* synthetic */ C2602a f7664c;

        /* renamed from: d */
        private AbstractC1786ad f7665d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2608f(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7664c = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2608f) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2608f c2608f = new C2608f(this.f7664c, abstractC1641c);
            c2608f.f7665d = (AbstractC1786ad) obj;
            return c2608f;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7662a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7665d;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MainBanners.checkBlockingNotActive show banner force=" + String.valueOf(this.f7664c.m701b()), (String) null, 2, (Object) null);
                AppCompatTextView appCompatTextView = C2601b.this.m713d().f6334r;
                C1694h.m3122a((Object) appCompatTextView, "binding.tvBannerTitle");
                appCompatTextView.setText(MyApp.f5480c.m1802a().getString(2131755174));
                AppCompatTextView appCompatTextView2 = C2601b.this.m713d().f6333q;
                C1694h.m3122a((Object) appCompatTextView2, "binding.tvBannerText");
                appCompatTextView2.setText(MyApp.f5480c.m1802a().getString(2131755175));
                MaterialButton materialButton = C2601b.this.m713d().f6322f;
                C1694h.m3122a((Object) materialButton, "binding.butBannerPrimary");
                materialButton.setText(MyApp.f5480c.m1802a().getString(2131755419));
                C2601b.this.m713d().f6322f.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.main.b.f.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingsProtectionActivity.f8801l.m301a(C2601b.this.m715c());
                        C2405c.f6946b.m1196a(C2608f.this.f7664c.m695e(), 0);
                        C2601b.this.m722a();
                    }
                });
                this.f7664c.m697c(true);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkOldAppVersions$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$g.class */
    public static final class C2610g extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7667a;

        /* renamed from: c */
        final /* synthetic */ C2602a f7669c;

        /* renamed from: d */
        private AbstractC1786ad f7670d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2610g(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7669c = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2610g) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2610g c2610g = new C2610g(this.f7669c, abstractC1641c);
            c2610g.f7670d = (AbstractC1786ad) obj;
            return c2610g;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7667a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7670d;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MainBanners.checkOldAppVersions show banner force=" + String.valueOf(this.f7669c.m701b()), (String) null, 2, (Object) null);
                AppCompatTextView appCompatTextView = C2601b.this.m713d().f6334r;
                C1694h.m3122a((Object) appCompatTextView, "binding.tvBannerTitle");
                appCompatTextView.setText(MyApp.f5480c.m1802a().getString(2131755416));
                AppCompatTextView appCompatTextView2 = C2601b.this.m713d().f6333q;
                C1694h.m3122a((Object) appCompatTextView2, "binding.tvBannerText");
                appCompatTextView2.setText(MyApp.f5480c.m1802a().getString(2131755417));
                MaterialButton materialButton = C2601b.this.m713d().f6322f;
                C1694h.m3122a((Object) materialButton, "binding.butBannerPrimary");
                materialButton.setText(MyApp.f5480c.m1802a().getString(2131755282));
                C2601b.this.m713d().f6322f.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.main.b.g.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        C2405c.f6946b.m1196a(C2610g.this.f7669c.m695e(), 525600);
                        C2601b.this.m722a();
                    }
                });
                this.f7669c.m697c(true);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkOutdatedDatabase$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$h.class */
    public static final class C2612h extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7672a;

        /* renamed from: c */
        final /* synthetic */ C2602a f7674c;

        /* renamed from: d */
        private AbstractC1786ad f7675d;

        /* renamed from: org.mistergroup.shouldianswer.ui.main.b$h$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$h$1.class */
        public static final class View$OnClickListenerC26131 implements View.OnClickListener {

            @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {138}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkOutdatedDatabase$2$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.main.b$h$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$h$1$1.class */
            public static final class C26141 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                Object f7677a;

                /* renamed from: b */
                int f7678b;

                /* renamed from: d */
                private AbstractC1786ad f7680d;

                @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkOutdatedDatabase$2$1$1$1")
                /* renamed from: org.mistergroup.shouldianswer.ui.main.b$h$1$1$1 */
                /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$h$1$1$1.class */
                public static final class C26151 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                    /* renamed from: a */
                    int f7681a;

                    /* renamed from: c */
                    private AbstractC1786ad f7683c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C26151(AbstractC1641c abstractC1641c) {
                        super(2, abstractC1641c);
                        C26141.this = r5;
                    }

                    @Override // kotlin.p081e.p082a.AbstractC1674m
                    /* renamed from: a */
                    public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                        return ((C26151) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: a */
                    public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                        C1694h.m3117b(abstractC1641c, "completion");
                        C26151 c26151 = new C26151(abstractC1641c);
                        c26151.f7683c = (AbstractC1786ad) obj;
                        return c26151;
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: b */
                    public final Object mo42b(Object obj) {
                        C1622b.m3174a();
                        if (this.f7681a == 0) {
                            C1771k.m2979a(obj);
                            AbstractC1786ad abstractC1786ad = this.f7683c;
                            Toast.makeText(C2601b.this.m715c(), 2131755062, 0).show();
                            return C1775o.f4450a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C26141(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    View$OnClickListenerC26131.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C26141) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C26141 c26141 = new C26141(abstractC1641c);
                    c26141.f7680d = (AbstractC1786ad) obj;
                    return c26141;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    Object a = C1622b.m3174a();
                    int i = this.f7678b;
                    try {
                        if (i == 0) {
                            C1771k.m2979a(obj);
                            AbstractC1786ad abstractC1786ad = this.f7680d;
                            C2408a.f6967a.m1147b(true);
                            this.f7677a = abstractC1786ad;
                            this.f7678b = 1;
                            if (C1890e.m2686a(C3084c.m192b(), new C26151(null), this) == a) {
                                return a;
                            }
                        } else if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        } else {
                            AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7677a;
                            C1771k.m2979a(obj);
                        }
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    }
                    return C1775o.f4450a;
                }
            }

            View$OnClickListenerC26131() {
                C2612h.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2601b.this.m722a();
                Toast.makeText(C2601b.this.m715c(), 2131755063, 0).show();
                C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C26141(null), 2, null);
                C2405c.f6946b.m1196a(MainFragment.EnumC2575a.OutdatedDatabase, 0);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2612h(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7674c = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2612h) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2612h c2612h = new C2612h(this.f7674c, abstractC1641c);
            c2612h.f7675d = (AbstractC1786ad) obj;
            return c2612h;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7672a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7675d;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MainBanners.checkOutdatedDatabase show banner force=" + String.valueOf(this.f7674c.m701b()), (String) null, 2, (Object) null);
                AppCompatTextView appCompatTextView = C2601b.this.m713d().f6334r;
                C1694h.m3122a((Object) appCompatTextView, "binding.tvBannerTitle");
                appCompatTextView.setText(MyApp.f5480c.m1802a().getString(2131755263));
                AppCompatTextView appCompatTextView2 = C2601b.this.m713d().f6333q;
                C1694h.m3122a((Object) appCompatTextView2, "binding.tvBannerText");
                appCompatTextView2.setText(MyApp.f5480c.m1802a().getString(2131755264));
                MaterialButton materialButton = C2601b.this.m713d().f6322f;
                C1694h.m3122a((Object) materialButton, "binding.butBannerPrimary");
                materialButton.setText(MyApp.f5480c.m1802a().getString(2131755552));
                C2601b.this.m713d().f6322f.setOnClickListener(new View$OnClickListenerC26131());
                this.f7674c.m697c(true);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkProtectionNotActive$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$i.class */
    public static final class C2616i extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7684a;

        /* renamed from: c */
        final /* synthetic */ C2602a f7686c;

        /* renamed from: d */
        private AbstractC1786ad f7687d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2616i(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7686c = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2616i) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2616i c2616i = new C2616i(this.f7686c, abstractC1641c);
            c2616i.f7687d = (AbstractC1786ad) obj;
            return c2616i;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7684a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7687d;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MainBanners.checkProtectionNotActive show banner force=" + String.valueOf(this.f7686c.m701b()), (String) null, 2, (Object) null);
                this.f7686c.m706a(20160);
                AppCompatTextView appCompatTextView = C2601b.this.m713d().f6334r;
                C1694h.m3122a((Object) appCompatTextView, "binding.tvBannerTitle");
                appCompatTextView.setText(MyApp.f5480c.m1802a().getString(2131755388));
                AppCompatTextView appCompatTextView2 = C2601b.this.m713d().f6333q;
                C1694h.m3122a((Object) appCompatTextView2, "binding.tvBannerText");
                appCompatTextView2.setText(MyApp.f5480c.m1802a().getString(2131755389));
                MaterialButton materialButton = C2601b.this.m713d().f6322f;
                C1694h.m3122a((Object) materialButton, "binding.butBannerPrimary");
                materialButton.setText(MyApp.f5480c.m1802a().getString(2131755494));
                C2601b.this.m713d().f6322f.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.main.b.i.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingsProtectionActivity.f8801l.m301a(C2601b.this.m715c());
                        C2405c.f6946b.m1196a(C2616i.this.f7686c.m695e(), 0);
                        C2601b.this.m722a();
                    }
                });
                this.f7686c.m697c(true);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {79, 80}, m3160d = "checkProtectionNotWork", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$j.class */
    public static final class C2618j extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7689a;

        /* renamed from: b */
        int f7690b;

        /* renamed from: d */
        Object f7692d;

        /* renamed from: e */
        Object f7693e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2618j(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2601b.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7689a = obj;
            this.f7690b |= AbstractC0610a.INVALID_ID;
            return C2601b.this.m719a((C2602a) null, this);
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkProtectionNotWork$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$k.class */
    public static final class C2619k extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7694a;

        /* renamed from: c */
        final /* synthetic */ C2602a f7696c;

        /* renamed from: d */
        private AbstractC1786ad f7697d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2619k(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7696c = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2619k) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2619k c2619k = new C2619k(this.f7696c, abstractC1641c);
            c2619k.f7697d = (AbstractC1786ad) obj;
            return c2619k;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7694a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7697d;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MainBanners.checkProtectionNotWork show banner force=" + String.valueOf(this.f7696c.m701b()), (String) null, 2, (Object) null);
                AppCompatTextView appCompatTextView = C2601b.this.m713d().f6334r;
                C1694h.m3122a((Object) appCompatTextView, "binding.tvBannerTitle");
                appCompatTextView.setText(MyApp.f5480c.m1802a().getString(2131755448));
                AppCompatTextView appCompatTextView2 = C2601b.this.m713d().f6333q;
                C1694h.m3122a((Object) appCompatTextView2, "binding.tvBannerText");
                appCompatTextView2.setText(MyApp.f5480c.m1802a().getString(2131755449));
                MaterialButton materialButton = C2601b.this.m713d().f6322f;
                C1694h.m3122a((Object) materialButton, "binding.butBannerPrimary");
                materialButton.setText(MyApp.f5480c.m1802a().getString(2131755419));
                C2601b.this.m713d().f6322f.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.main.b.k.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingsProtectionActivity.f8801l.m301a(C2601b.this.m715c());
                        C2405c.f6946b.m1196a(C2619k.this.f7696c.m695e(), 0);
                        C2601b.this.m722a();
                    }
                });
                this.f7696c.m697c(true);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "MainBanners.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainBanners$checkUnaccessibleContacts$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.b$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b$l.class */
    public static final class C2621l extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7699a;

        /* renamed from: c */
        final /* synthetic */ C2602a f7701c;

        /* renamed from: d */
        private AbstractC1786ad f7702d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2621l(C2602a c2602a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2601b.this = r5;
            this.f7701c = c2602a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2621l) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2621l c2621l = new C2621l(this.f7701c, abstractC1641c);
            c2621l.f7702d = (AbstractC1786ad) obj;
            return c2621l;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7699a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7702d;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MainBanners.checkUnaccessibleContacts show banner force=" + String.valueOf(this.f7701c.m701b()), (String) null, 2, (Object) null);
                AppCompatTextView appCompatTextView = C2601b.this.m713d().f6334r;
                C1694h.m3122a((Object) appCompatTextView, "binding.tvBannerTitle");
                appCompatTextView.setText(MyApp.f5480c.m1802a().getString(2131755249));
                AppCompatTextView appCompatTextView2 = C2601b.this.m713d().f6333q;
                C1694h.m3122a((Object) appCompatTextView2, "binding.tvBannerText");
                appCompatTextView2.setText(MyApp.f5480c.m1802a().getString(2131755250));
                MaterialButton materialButton = C2601b.this.m713d().f6322f;
                C1694h.m3122a((Object) materialButton, "binding.butBannerPrimary");
                materialButton.setText("Allow Access");
                C2601b.this.m713d().f6322f.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.main.b.l.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        C2601b.this.m715c().requestPermissions(new String[]{"android.permission.READ_CONTACTS"}, 0);
                        C2405c.f6946b.m1196a(C2621l.this.f7701c.m695e(), 0);
                        C2601b.this.m722a();
                    }
                });
                this.f7701c.m697c(true);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public C2601b(MainActivity mainActivity, AbstractC2263y abstractC2263y) {
        C1694h.m3117b(mainActivity, "mainActivity");
        C1694h.m3117b(abstractC2263y, "binding");
        this.f7638b = mainActivity;
        this.f7639c = abstractC2263y;
    }

    /* renamed from: a */
    public final boolean m720a(MainFragment.EnumC2575a enumC2575a, C2602a c2602a) {
        if (c2602a.m696d()) {
            return false;
        }
        c2602a.m704a(enumC2575a);
        long m1197a = C2405c.f6946b.m1197a(enumC2575a);
        boolean z = true;
        if (m1197a == -1) {
            c2602a.m702a(true);
            c2602a.m699b(true);
            return true;
        }
        if (c2602a.m698c() - m1197a <= 0) {
            z = false;
        }
        c2602a.m702a(z);
        return c2602a.m707a();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0113  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m719a(org.mistergroup.shouldianswer.p101ui.main.C2601b.C2602a r7, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.C2601b.m719a(org.mistergroup.shouldianswer.ui.main.b$a, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final void m722a() {
        MaterialCardView materialCardView = this.f7639c.f6328l;
        C1694h.m3122a((Object) materialCardView, "binding.cardBanner");
        materialCardView.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0108, code lost:
        if (((java.lang.Boolean) r10).booleanValue() == false) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m716b(org.mistergroup.shouldianswer.p101ui.main.C2601b.C2602a r7, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.C2601b.m716b(org.mistergroup.shouldianswer.ui.main.b$a, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: b */
    public final void m717b() {
        C3104j.m157a(C3104j.f9124a, "MainBanners.check", (String) null, 2, (Object) null);
        C2602a c2602a = new C2602a(false, false, 0L, false, null, 0, 63, null);
        MaterialCardView materialCardView = this.f7639c.f6328l;
        C1694h.m3122a((Object) materialCardView, "binding.cardBanner");
        materialCardView.setVisibility(8);
        MaterialButton materialButton = this.f7639c.f6323g;
        C1694h.m3122a((Object) materialButton, "binding.butBannerSecondary");
        materialButton.setText(this.f7638b.getString(2131755504));
        this.f7639c.f6323g.setOnClickListener(new View$OnClickListenerC2604c(c2602a));
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2605d(c2602a, null), 2, null);
    }

    /* renamed from: c */
    final /* synthetic */ Object m714c(C2602a c2602a, AbstractC1641c<? super C1775o> abstractC1641c) {
        if (c2602a.m701b() || c2602a.m698c() - C2405c.f6946b.m1209I() > 345600000) {
            C3104j.m157a(C3104j.f9124a, "MainBanners.checkOutdatedDatabase", (String) null, 2, (Object) null);
            return C1890e.m2686a(C3084c.m192b(), new C2612h(c2602a, null), abstractC1641c);
        }
        return C1775o.f4450a;
    }

    /* renamed from: c */
    public final MainActivity m715c() {
        return this.f7638b;
    }

    /* renamed from: d */
    final /* synthetic */ Object m712d(C2602a c2602a, AbstractC1641c<? super C1775o> abstractC1641c) {
        C3104j.m157a(C3104j.f9124a, "MainBanners.checkUnaccessibleContacts", (String) null, 2, (Object) null);
        return (c2602a.m701b() || (C2398ai.f6930a.m1283c() == EnumC2393af.PASSIVE && !C3115o.f9175a.m113j())) ? C1890e.m2686a(C3084c.m192b(), new C2621l(c2602a, null), abstractC1641c) : C1775o.f4450a;
    }

    /* renamed from: d */
    public final AbstractC2263y m713d() {
        return this.f7639c;
    }

    /* renamed from: e */
    final /* synthetic */ Object m710e(C2602a c2602a, AbstractC1641c<? super C1775o> abstractC1641c) {
        C3104j.m157a(C3104j.f9124a, "MainBanners.checkOldAppVersions", (String) null, 2, (Object) null);
        return (c2602a.m701b() || (C2405c.f6946b.m1169p() > 3 && (C3118r.f9187a.m98a("org.mistergroup.muzutozvednout", this.f7638b) || C3118r.f9187a.m98a("org.mistergroup.shouldianswerpersonal", this.f7638b)))) ? C1890e.m2686a(C3084c.m192b(), new C2610g(c2602a, null), abstractC1641c) : C1775o.f4450a;
    }

    /* renamed from: f */
    final /* synthetic */ Object m709f(C2602a c2602a, AbstractC1641c<? super C1775o> abstractC1641c) {
        return (c2602a.m701b() || (C2405c.f6946b.m1169p() > 7 && C2398ai.f6930a.m1283c() == EnumC2393af.NONE)) ? C1890e.m2686a(C3084c.m192b(), new C2616i(c2602a, null), abstractC1641c) : C1775o.f4450a;
    }
}
