package p193e.p194a.p1275v.p1276a.p1277a0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.C3857R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.PremiumLaunchContext;
import e.f.a.n.q.d.y;
import io.agora.rtc.Constants;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.k;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1275v.p1304k.C20895b;
import p193e.p194a.p1275v.p1305l.AbstractC20914b;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b+\u0010\u000eJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u000eJ!\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u000eJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u000eJ\u0013\u0010\u001d\u001a\u00020\u001c*\u00020\u0014H\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006,"}, d2 = {"Le/a/v/a/a0/b;", "Ln3/r/a/k;", "Le/a/v/a/a0/c;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onDestroyView", "()V", "Landroid/net/Uri;", "avatarUri", "Uh", "(Landroid/net/Uri;)V", "Pe", "Le/a/v/a/a0/a;", "primaryBadge", "secondaryBadge", "Dy", "(Le/a/v/a/a0/a;Le/a/v/a/a0/a;)V", "L5", "Tc", "bi", "Landroid/graphics/drawable/Drawable;", "OA", "(Le/a/v/a/a0/a;)Landroid/graphics/drawable/Drawable;", "Le/a/v/k/b;", "a", "Le/a/v/k/b;", "_binding", "Le/a/l/a2;", AbstractC2405c.f7629a, "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "<init>", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.a0.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/a0/b.class */
public final class C20666b extends k implements AbstractC20670c {

    /* renamed from: a */
    public C20895b f58213a;
    @Inject

    /* renamed from: b */
    public C20671d f58214b;
    @Inject

    /* renamed from: c */
    public AbstractC16613a2 f58215c;

    /* renamed from: e.a.v.a.a0.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a0/b$a.class */
    public static final class C20667a implements AbstractC22590g<Drawable> {
        public C20667a() {
            C20666b.this = r4;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
            C20895b c20895b = C20666b.this.f58213a;
            l.c(c20895b);
            TextView textView = c20895b.f58732c;
            l.d(textView, "binding.primaryBadge");
            C19286f.m13684T(textView);
            C20895b c20895b2 = C20666b.this.f58213a;
            l.c(c20895b2);
            TextView textView2 = c20895b2.f58733d;
            l.d(textView2, "binding.secondaryBadge");
            C19286f.m13684T(textView2);
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
            C20895b c20895b = C20666b.this.f58213a;
            l.c(c20895b);
            TextView textView = c20895b.f58732c;
            l.d(textView, "binding.primaryBadge");
            C19286f.m13684T(textView);
            C20895b c20895b2 = C20666b.this.f58213a;
            l.c(c20895b2);
            TextView textView2 = c20895b2.f58733d;
            l.d(textView2, "binding.secondaryBadge");
            C19286f.m13684T(textView2);
            return false;
        }
    }

    /* renamed from: e.a.v.a.a0.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a0/b$b.class */
    public static final class View$OnClickListenerC20668b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C20665a f58218b;

        public View$OnClickListenerC20668b(C20665a c20665a) {
            C20666b.this = r4;
            this.f58218b = c20665a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20671d c20671d = C20666b.this.f58214b;
            if (c20671d == null) {
                l.l("presenter");
                throw null;
            }
            int i = this.f58218b.f58209a;
            if (i == 4) {
                AbstractC20670c abstractC20670c = (AbstractC20670c) c20671d.f57683a;
                if (abstractC20670c == null) {
                    return;
                }
                abstractC20670c.mo10864bi();
            } else if (i != 32) {
                AssertionUtil.reportWeirdnessButNeverCrash("Unexpected badge of type " + i);
            } else {
                AbstractC20670c abstractC20670c2 = (AbstractC20670c) c20671d.f57683a;
                if (abstractC20670c2 == null) {
                    return;
                }
                abstractC20670c2.mo10866Tc();
            }
        }
    }

    /* renamed from: e.a.v.a.a0.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a0/b$c.class */
    public static final class C20669c implements AbstractC22590g<Drawable> {
        public C20669c() {
            C20666b.this = r4;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
            C20895b c20895b = C20666b.this.f58213a;
            l.c(c20895b);
            TextView textView = c20895b.f58732c;
            l.d(textView, "binding.primaryBadge");
            C19286f.m13684T(textView);
            C20895b c20895b2 = C20666b.this.f58213a;
            l.c(c20895b2);
            TextView textView2 = c20895b2.f58733d;
            l.d(textView2, "binding.secondaryBadge");
            C19286f.m13684T(textView2);
            return false;
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1277a0.AbstractC20670c
    /* renamed from: Dy */
    public void mo10869Dy(C20665a c20665a, C20665a c20665a2) {
        Drawable drawable;
        l.e(c20665a, "primaryBadge");
        C20895b c20895b = this.f58213a;
        l.c(c20895b);
        TextView textView = c20895b.f58732c;
        l.d(textView, "binding.primaryBadge");
        textView.setText(c20665a.f58211c);
        C20895b c20895b2 = this.f58213a;
        l.c(c20895b2);
        TextView textView2 = c20895b2.f58733d;
        l.d(textView2, "binding.secondaryBadge");
        textView2.setText(c20665a2 != null ? c20665a2.f58211c : null);
        C20895b c20895b3 = this.f58213a;
        l.c(c20895b3);
        TextView textView3 = c20895b3.f58732c;
        Drawable m10870OA = m10870OA(c20665a);
        if (c20665a.f58212d) {
            Context requireContext = requireContext();
            int i = C3857R.C3858drawable.ic_premium_questionmark;
            Object obj = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(requireContext, i);
            if (m1789b == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            drawable = m1789b.mutate();
            l.d(drawable, "requireNotNull(ContextCo…m_questionmark)).mutate()");
            drawable.setTint(C26467a.C26471d.m1787a(requireContext(), C3857R.color.white));
            drawable.setBounds(C19291g.m13603O(0), C19291g.m13603O(0), C19291g.m13603O(16), C19291g.m13603O(16));
        } else {
            drawable = null;
        }
        textView3.setCompoundDrawablesRelative(m10870OA, null, drawable, null);
        if (c20665a2 != null) {
            C20895b c20895b4 = this.f58213a;
            l.c(c20895b4);
            c20895b4.f58733d.setCompoundDrawablesRelative(m10870OA(c20665a2), null, null, null);
        }
        if (c20665a.f58212d) {
            C20895b c20895b5 = this.f58213a;
            l.c(c20895b5);
            c20895b5.f58732c.setOnClickListener(new View$OnClickListenerC20668b(c20665a));
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1277a0.AbstractC20670c
    /* renamed from: L5 */
    public void mo10868L5() {
        C20895b c20895b = this.f58213a;
        l.c(c20895b);
        TextView textView = c20895b.f58732c;
        l.d(textView, "binding.primaryBadge");
        C19286f.m13689O(textView);
        C20895b c20895b2 = this.f58213a;
        l.c(c20895b2);
        TextView textView2 = c20895b2.f58733d;
        l.d(textView2, "binding.secondaryBadge");
        C19286f.m13689O(textView2);
    }

    /* renamed from: OA */
    public final Drawable m10870OA(C20665a c20665a) {
        Drawable mutate = c20665a.f58210b.mutate();
        l.d(mutate, "icon.mutate()");
        mutate.setBounds(0, 0, C19291g.m13603O(24), C19291g.m13603O(24));
        return mutate;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1277a0.AbstractC20670c
    /* renamed from: Pe */
    public void mo10867Pe() {
        C21853e m15658M1 = C17891a1.C17902k.m15658M1(this);
        C20895b c20895b = this.f58213a;
        l.c(c20895b);
        ImageView imageView = c20895b.f58731b;
        l.d(imageView, "binding.avatar");
        C21852d<Drawable> m8983a0 = m15658M1.m8961y(C19291g.m13600P(imageView.getContext(), C3857R.attr.ic_empty_avatar)).m8983a0(new C22591h().m8111C(new y(60), true));
        C20669c c20669c = new C20669c();
        m8983a0.f61768K = null;
        m8983a0.mo8433H(c20669c);
        C20895b c20895b2 = this.f58213a;
        l.c(c20895b2);
        m8983a0.m8427O(c20895b2.f58731b);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1277a0.AbstractC20670c
    /* renamed from: Tc */
    public void mo10866Tc() {
        AbstractC16613a2 abstractC16613a2 = this.f58215c;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        abstractC16613a2.mo17168a(requireContext, PremiumLaunchContext.GOLD_BADGE, "gold");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1277a0.AbstractC20670c
    /* renamed from: Uh */
    public void mo10865Uh(Uri uri) {
        l.e(uri, "avatarUri");
        C22234h mo8414k = C17891a1.C17902k.m15658M1(this).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = uri;
        c21852d.f61771N = true;
        C21852d c21852d2 = (C21852d) mo8414k;
        C20895b c20895b = this.f58213a;
        l.c(c20895b);
        ImageView imageView = c20895b.f58731b;
        l.d(imageView, "binding.avatar");
        C21852d m8983a0 = c21852d2.mo8096l(C19291g.m13600P(imageView.getContext(), C3857R.attr.ic_empty_avatar)).m8983a0(new C22591h().m8111C(new y((int) Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED), true));
        C20667a c20667a = new C20667a();
        m8983a0.f61768K = null;
        m8983a0.mo8433H(c20667a);
        C20895b c20895b2 = this.f58213a;
        l.c(c20895b2);
        m8983a0.m8427O(c20895b2.f58731b);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1277a0.AbstractC20670c
    /* renamed from: bi */
    public void mo10864bi() {
        AbstractC16613a2 abstractC16613a2 = this.f58215c;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        abstractC16613a2.mo17168a(requireContext, PremiumLaunchContext.PREMIUM_BADGE, "premium");
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C20666b.super.onAttach(context);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider");
        ((AbstractC20914b) applicationContext).mo10529v().mo10543g(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x01c9, code lost:
        if (r13 != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02b5, code lost:
        if (r11 != null) goto L95;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Dialog onCreateDialog(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1277a0.C20666b.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }

    public void onDestroyView() {
        C20671d c20671d = this.f58214b;
        if (c20671d == null) {
            l.l("presenter");
            throw null;
        }
        c20671d.f57683a = null;
        this.f58213a = null;
        C20666b.super.onDestroyView();
    }
}
