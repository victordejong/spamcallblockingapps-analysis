package org.mistergroup.shouldianswer.p101ui.main;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.C0082b;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.ActivityC0711c;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0925w;
import com.google.android.gms.common.internal.ImagesContract;
import java.lang.ref.WeakReference;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
import org.mistergroup.shouldianswer.p097a.AbstractC2126ao;
import org.mistergroup.shouldianswer.p098b.C2274e;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.wizards.protection.ProtectionWizardMainActivity;
import org.mistergroup.shouldianswer.p101ui.wizards.welcome.WelcomeActivity;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3085d;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.ui.main.MainActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainActivity.class */
public final class MainActivity extends ActivityC2499a {

    /* renamed from: l */
    public C2589a f7555l;

    /* renamed from: m */
    private AbstractC2126ao f7556m;

    /* renamed from: n */
    private WeakReference<C0082b> f7557n = new WeakReference<>(null);

    @AbstractC1634f(m3162b = "MainActivity.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.MainActivity$processStartup$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.MainActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/MainActivity$a.class */
    public static final class C2574a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7558a;

        /* renamed from: b */
        private AbstractC1786ad f7559b;

        C2574a(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2574a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2574a c2574a = new C2574a(abstractC1641c);
            c2574a.f7559b = (AbstractC1786ad) obj;
            return c2574a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7558a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7559b;
                C2408a.f6967a.m1147b(false);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* renamed from: n */
    private final void m766n() {
        if (!C2398ai.f6930a.m1296a()) {
            C1892g.m2677a(C1843bd.f4587a, null, null, new C2574a(null), 3, null);
            finish();
            WelcomeActivity.f8965l.m241a(this);
        } else if (C2398ai.f6930a.m1283c() != EnumC2393af.UNKNOWN && (C2398ai.f6930a.m1283c() == EnumC2393af.NONE || C2398ai.f6930a.m1275e() != EnumC2378a.UNKNOWN)) {
        } else {
            finish();
            ProtectionWizardMainActivity.f8920l.m252a(this);
        }
    }

    /* renamed from: b */
    public final void m768b(WeakReference<C0082b> weakReference) {
        C1694h.m3117b(weakReference, "<set-?>");
        this.f7557n = weakReference;
    }

    /* renamed from: m */
    public final C2589a m767m() {
        C2589a c2589a = this.f7555l;
        if (c2589a == null) {
            C1694h.m3116b("model");
        }
        return c2589a;
    }

    @Override // androidx.activity.ActivityC0046b, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finishAffinity();
    }

    @Override // androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C1694h.m3117b(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        C0082b c0082b = this.f7557n.get();
        if (c0082b != null) {
            c0082b.m7940a(configuration);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        Bundle extras;
        C3104j.m157a(C3104j.f9124a, "MainActivity.onCreate.begin", (String) null, 2, (Object) null);
        long m41a = C3131u.f9265a.m41a();
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558463);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…, R.layout.main_activity)");
        this.f7556m = (AbstractC2126ao) m5845a;
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "MainActivity.onCreate after setContentView " + C3131u.f9265a.m40a(m41a) + " ms", (String) null, 2, (Object) null);
        AbstractC0919u m5061a = C0925w.m5053a((ActivityC0711c) this).m5061a(C2589a.class);
        C1694h.m3122a((Object) m5061a, "ViewModelProviders.of(th…ityViewModel::class.java)");
        this.f7555l = (C2589a) m5061a;
        C3104j c3104j2 = C3104j.f9124a;
        C3104j.m157a(c3104j2, "MainActivity.onCreate after ViewModelProviders " + C3131u.f9265a.m40a(m41a) + " ms", (String) null, 2, (Object) null);
        m766n();
        C3104j c3104j3 = C3104j.f9124a;
        C3104j.m157a(c3104j3, "MainActivity.onCreate after processStartup " + C3131u.f9265a.m40a(m41a) + " ms", (String) null, 2, (Object) null);
        C2274e.f6371a.m1709a();
        C3104j c3104j4 = C3104j.f9124a;
        C3104j.m157a(c3104j4, "MainActivity.onCreate after MissedCallNotification.cancelAll " + C3131u.f9265a.m40a(m41a) + " ms", (String) null, 2, (Object) null);
        Intent intent = getIntent();
        if (intent != null && (extras = intent.getExtras()) != null) {
            try {
                if (extras.containsKey("action")) {
                    C3104j c3104j5 = C3104j.f9124a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("MainActivity.onCreate action bundle is ");
                    C1694h.m3122a((Object) extras, "bundle");
                    sb.append(C3085d.m190a(extras, null, 1, null));
                    C3104j.m157a(c3104j5, sb.toString(), (String) null, 2, (Object) null);
                    if (C1694h.m3123a((Object) extras.getString("action"), (Object) "navigate")) {
                        String string = extras.getString(ImagesContract.URL);
                        C3104j c3104j6 = C3104j.f9124a;
                        C3104j.m157a(c3104j6, "MainActivity.onCreate action navigate to url '" + string + '\'', (String) null, 2, (Object) null);
                        if (string != null) {
                            C3078ac.f8981a.m220a(this, string);
                        }
                    }
                    String string2 = extras.getString("event");
                    if (string2 != null) {
                        C3074a.f8976a.m227c(string2);
                    }
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
        C3104j c3104j7 = C3104j.f9124a;
        C3104j.m157a(c3104j7, "MainActivity.onCreate.end in " + C3131u.f9265a.m40a(m41a) + " ms", (String) null, 2, (Object) null);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C1694h.m3117b(menuItem, "item");
        C0082b c0082b = this.f7557n.get();
        return c0082b != null ? c0082b.m7938a(menuItem) : super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.ActivityC0092e, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        C0082b c0082b = this.f7557n.get();
        if (c0082b != null) {
            c0082b.m7942a();
        }
    }
}
