package com.truecaller.details_view;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.razorpay.PaymentData;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC17005k;
import p193e.p194a.p1011l.p1033v2.C17253b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.AbstractC20890g;
import p193e.p194a.p1275v.AbstractC20891h;
import p193e.p194a.p1275v.AbstractC20893j;
import p193e.p194a.p1275v.C20880b;
import p193e.p194a.p1275v.C20889f;
import p193e.p194a.p1275v.p1276a.C20647a;
import p193e.p194a.p682e.p683a.View$OnClickListenerC12752i4;
import p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1;
import p193e.p194a.p773g.p785j.C14295m0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u0007¢\u0006\u0004\bX\u0010\u0011J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0019\u0010\u0015J#\u0010\u001d\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0011J\u000f\u0010\"\u001a\u00020\tH\u0016¢\u0006\u0004\b\"\u0010\u0011J?\u0010&\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\t0#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\t0#H\u0016¢\u0006\u0004\b&\u0010'J)\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u0011J\u000f\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b/\u0010\u0011J\u000f\u00100\u001a\u00020\tH\u0014¢\u0006\u0004\b0\u0010\u0011J\u0019\u00102\u001a\u00020\t2\b\b\u0001\u00101\u001a\u00020(H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\tH\u0016¢\u0006\u0004\b4\u0010\u0011J#\u00108\u001a\u00020\t2\b\u00105\u001a\u0004\u0018\u00010\u001a2\b\u00107\u001a\u0004\u0018\u000106H\u0016¢\u0006\u0004\b8\u00109J+\u0010<\u001a\u00020\t2\u0006\u0010:\u001a\u00020(2\b\u0010;\u001a\u0004\u0018\u00010\u001a2\b\u00107\u001a\u0004\u0018\u000106H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\tH\u0002¢\u0006\u0004\b>\u0010\u0011J\u0017\u0010A\u001a\u00020\t2\u0006\u0010@\u001a\u00020?H\u0002¢\u0006\u0004\bA\u0010BR$\u0010J\u001a\u0004\u0018\u00010C8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010R\u001a\u00020K8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001d\u0010W\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V¨\u0006Y"}, d2 = {"Lcom/truecaller/details_view/DetailsViewActivity;", "Ln3/b/a/h;", "Le/a/v/h;", "Le/a/v/a/a$f;", "Le/a/e/c/s1$o;", "Le/a/e/c/s1$k;", "Le/a/l/n2/k;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "z2", "()V", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "A4", "(Lcom/truecaller/data/entity/Contact;)V", "Q7", "Y", "a8", "u", "", "suggestedName", "normalizedNumber", "N", "(Ljava/lang/String;Ljava/lang/String;)V", "p2", "(Ljava/lang/String;)V", "K1", "y7", "Lkotlin/Function0;", "positiveAction", "negativeAction", "O8", "(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;)V", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "S2", "onBackPressed", "onDestroy", "message", "h", "(I)V", "t", "paymentId", "Lcom/razorpay/PaymentData;", "paymentData", "onPaymentSuccess", "(Ljava/lang/String;Lcom/razorpay/PaymentData;)V", "errorCode", "description", "onPaymentError", "(ILjava/lang/String;Lcom/razorpay/PaymentData;)V", "pa", "Landroidx/fragment/app/Fragment;", "fragment", "qa", "(Landroidx/fragment/app/Fragment;)V", "Le/a/l/n2/k$a;", "e", "Le/a/l/n2/k$a;", "getWebPaymentPurchaseUpdateListener", "()Le/a/l/n2/k$a;", "O", "(Le/a/l/n2/k$a;)V", "webPaymentPurchaseUpdateListener", "Le/a/v/g;", "d", "Le/a/v/g;", "getPresenter", "()Le/a/v/g;", "setPresenter", "(Le/a/v/g;)V", "presenter", "f", "Ls1/g;", "getBackgroundColor", "()I", "backgroundColor", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/DetailsViewActivity.class */
public final class DetailsViewActivity extends AbstractC20893j implements AbstractC20891h, C20647a.AbstractC20663f, View$OnClickListenerC13135s1.AbstractC13151o, View$OnClickListenerC13135s1.AbstractC13147k, AbstractC17005k {
    @Inject

    /* renamed from: d */
    public AbstractC20890g f11622d;

    /* renamed from: e */
    public AbstractC17005k.AbstractC17006a f11623e;

    /* renamed from: f */
    public final g f11624f = C25225a.m3978P1(new C3855b());

    /* renamed from: com.truecaller.details_view.DetailsViewActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/details_view/DetailsViewActivity$a.class */
    public static final class DialogInterface$OnClickListenerC3854a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f11625a;

        /* renamed from: b */
        public final /* synthetic */ Object f11626b;

        public DialogInterface$OnClickListenerC3854a(int i, Object obj) {
            this.f11625a = i;
            this.f11626b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f11625a;
            if (i2 == 0) {
                AbstractC20890g abstractC20890g = ((DetailsViewActivity) this.f11626b).f11622d;
                if (abstractC20890g == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC20891h abstractC20891h = (AbstractC20891h) ((C20880b) abstractC20890g).f57683a;
                if (abstractC20891h == null) {
                    return;
                }
                abstractC20891h.mo10558K1();
            } else if (i2 != 1) {
                throw null;
            } else {
                AbstractC20890g abstractC20890g2 = ((DetailsViewActivity) this.f11626b).f11622d;
                if (abstractC20890g2 == null) {
                    l.l("presenter");
                    throw null;
                }
                C20880b c20880b = (C20880b) abstractC20890g2;
                if (!c20880b.f58680l.m16335a()) {
                    if (!((C14295m0) c20880b.f58681m).m20284a()) {
                        return;
                    }
                    c20880b.m10589Kj();
                    return;
                }
                AbstractC20891h abstractC20891h2 = (AbstractC20891h) c20880b.f57683a;
                if (abstractC20891h2 == null) {
                    return;
                }
                abstractC20891h2.mo10552y7();
            }
        }
    }

    /* renamed from: com.truecaller.details_view.DetailsViewActivity$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/DetailsViewActivity$b.class */
    public static final class C3855b extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3855b() {
            super(0);
            DetailsViewActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.details_view.DetailsViewActivity, android.content.Context] */
        public Object invoke() {
            return Integer.valueOf(C19291g.m13612L(DetailsViewActivity.this, 2130970348));
        }
    }

    /* renamed from: com.truecaller.details_view.DetailsViewActivity$c */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/DetailsViewActivity$c.class */
    public static final class DialogInterface$OnDismissListenerC3856c implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ a f11628a;

        /* renamed from: b */
        public final /* synthetic */ a f11629b;

        public DialogInterface$OnDismissListenerC3856c(a aVar, a aVar2) {
            this.f11628a = aVar;
            this.f11629b = aVar2;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            Objects.requireNonNull(dialogInterface, "null cannot be cast to non-null type com.truecaller.ui.dialogs.WarnYourFriendsDialog");
            if (((View$OnClickListenerC12752i4) dialogInterface).f37136e) {
                this.f11628a.invoke();
            } else {
                this.f11629b.invoke();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: A4 */
    public void mo10559A4(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        int intExtra = getIntent().getIntExtra("SEARCH_TYPE", 4);
        int intExtra2 = getIntent().getIntExtra("ARG_SOURCE_TYPE", -1);
        boolean booleanExtra = getIntent().getBooleanExtra("SHOULD_SAVE", false);
        Objects.requireNonNull(C20647a.f58173o);
        l.e(contact, AnalyticsConstants.CONTACT);
        C20647a c20647a = new C20647a();
        Bundle bundle = new Bundle();
        bundle.putParcelable(AnalyticsConstants.CONTACT, contact);
        bundle.putBoolean("save_to_history", booleanExtra);
        bundle.putInt("search_type", intExtra);
        bundle.putInt("source_type", intExtra2);
        c20647a.setArguments(bundle);
        m35439qa(c20647a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: K1 */
    public void mo10558K1() {
        startActivityForResult(DefaultSmsActivity.m34991pa(this, "detailView-blockUser"), 532);
    }

    @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractC13147k
    /* renamed from: N */
    public void mo22008N(String str, String str2) {
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        C20880b c20880b = (C20880b) abstractC20890g;
        c20880b.f58672d = str;
        c20880b.f58673e = str2;
        if (c20880b.f58679k.mo30444a()) {
            AbstractC20891h abstractC20891h = (AbstractC20891h) c20880b.f57683a;
            if (abstractC20891h == null) {
                return;
            }
            abstractC20891h.mo10554p2(c20880b.f58672d);
        } else if (!c20880b.f58680l.m16335a()) {
            if (!((C14295m0) c20880b.f58681m).m20284a()) {
                return;
            }
            c20880b.m10589Kj();
        } else {
            AbstractC20891h abstractC20891h2 = (AbstractC20891h) c20880b.f57683a;
            if (abstractC20891h2 == null) {
                return;
            }
            abstractC20891h2.mo10552y7();
        }
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC17005k
    /* renamed from: O */
    public void mo16649O(AbstractC17005k.AbstractC17006a abstractC17006a) {
        this.f11623e = abstractC17006a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: O8 */
    public void mo10557O8(String str, String str2, a<s> aVar, a<s> aVar2) {
        l.e(aVar, "positiveAction");
        l.e(aVar2, "negativeAction");
        View$OnClickListenerC12752i4 view$OnClickListenerC12752i4 = new View$OnClickListenerC12752i4(this, str, str2, null);
        view$OnClickListenerC12752i4.setOnDismissListener(new DialogInterface$OnDismissListenerC3856c(aVar, aVar2));
        view$OnClickListenerC12752i4.show();
    }

    @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractC13151o
    /* renamed from: Q7 */
    public void mo22006Q7() {
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC20891h abstractC20891h = (AbstractC20891h) ((C20880b) abstractC20890g).f57683a;
        if (abstractC20891h == null) {
            return;
        }
        abstractC20891h.mo10556S2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: S2 */
    public void mo10556S2() {
        Window window = getWindow();
        l.d(window, "window");
        window.getDecorView().setBackgroundResource(2131231310);
    }

    @Override // p193e.p194a.p1275v.p1276a.C20647a.AbstractC20663f
    /* renamed from: Y */
    public void mo10872Y(Contact contact) {
        AbstractC20891h abstractC20891h;
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        C20880b c20880b = (C20880b) abstractC20890g;
        l.e(contact, AnalyticsConstants.CONTACT);
        if (c20880b.m10590Jj(contact) || c20880b.f58678j.m10989P().isEnabled() || (abstractC20891h = (AbstractC20891h) c20880b.f57683a) == null) {
            return;
        }
        abstractC20891h.mo10551z2();
    }

    @Override // p193e.p194a.p1275v.p1276a.C20647a.AbstractC20663f
    /* renamed from: a8 */
    public void mo10871a8() {
        AbstractC20891h abstractC20891h;
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        C20880b c20880b = (C20880b) abstractC20890g;
        c20880b.f58682n.mo11854a().mo14072i().mo11828g();
        if (c20880b.f58678j.m10989P().isEnabled() || (abstractC20891h = (AbstractC20891h) c20880b.f57683a) == null) {
            return;
        }
        abstractC20891h.mo10551z2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: h */
    public void mo10555h(int i) {
        Toast.makeText((Context) this, (CharSequence) getString(i), 1).show();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        DetailsViewActivity.super.onActivityResult(i, i2, intent);
        if (i == 532) {
            AbstractC20890g abstractC20890g = this.f11622d;
            if (abstractC20890g == null) {
                l.l("presenter");
                throw null;
            }
            C20880b c20880b = (C20880b) abstractC20890g;
            if (!c20880b.f58680l.m16335a()) {
                if (!((C14295m0) c20880b.f58681m).m20284a()) {
                    return;
                }
                c20880b.m10589Kj();
                return;
            }
            AbstractC20891h abstractC20891h = (AbstractC20891h) c20880b.f57683a;
            if (abstractC20891h == null) {
                return;
            }
            abstractC20891h.mo10552y7();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onBackPressed() {
        DetailsViewActivity.super.onBackPressed();
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        DetailsViewActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, false);
        Window window = getWindow();
        l.d(window, "window");
        window.getDecorView().setBackgroundColor(((Number) this.f11624f.getValue()).intValue());
        Window window2 = getWindow();
        l.d(window2, "window");
        View decorView = window2.getDecorView();
        l.d(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        Window window3 = getWindow();
        l.d(window3, "window");
        Object obj = C26467a.f74235a;
        window3.setStatusBarColor(C26467a.C26471d.m1787a(this, 17170445));
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20890g).f57683a = this;
        m35440pa();
    }

    public void onDestroy() {
        DetailsViewActivity.super.onDestroy();
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g != null) {
            ((AbstractC20574a) abstractC20890g).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onNewIntent(Intent intent) {
        DetailsViewActivity.super.onNewIntent(intent);
        setIntent(intent);
        m35440pa();
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentError(int i, String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f11623e;
        if (abstractC17006a != null) {
            abstractC17006a.onPaymentError(i, str);
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentSuccess(String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f11623e;
        if (abstractC17006a != null) {
            abstractC17006a.mo16648a(str, paymentData);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: p2 */
    public void mo10554p2(String str) {
        g$a g_a = new g$a(this);
        g_a.f70854a.f156f = getString(2131886133, new Object[]{str});
        g_a.m3660i(2131887135, new DialogInterface$OnClickListenerC3854a(0, this));
        g_a.m3662g(2131887909, new DialogInterface$OnClickListenerC3854a(1, this));
        g_a.m3652q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final void m35440pa() {
        Contact contact = (Contact) getIntent().getParcelableExtra("ARG_CONTACT");
        String stringExtra = getIntent().getStringExtra("ARG_TC_ID");
        String stringExtra2 = getIntent().getStringExtra("RAW_NUMBER");
        String stringExtra3 = getIntent().getStringExtra("NAME");
        String stringExtra4 = getIntent().getStringExtra("NORMALIZED_NUMBER");
        String stringExtra5 = getIntent().getStringExtra("COUNTRY_CODE");
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        C20880b c20880b = (C20880b) abstractC20890g;
        Objects.requireNonNull(c20880b);
        d.w2(c20880b, (f) null, (j0) null, new C20889f(c20880b, contact, stringExtra, stringExtra2, stringExtra4, stringExtra3, stringExtra5, null), 3, (Object) null);
    }

    /* renamed from: qa */
    public final void m35439qa(Fragment fragment) {
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1119n(C2752R.anim.details_view_enter_animation, C2752R.anim.details_view_exit_animation);
        c26907a.m1120m(16908290, fragment, null);
        c26907a.mo1126g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: t */
    public void mo10553t() {
        finish();
    }

    @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractC13147k
    /* renamed from: u */
    public void mo22007u(Contact contact) {
        AbstractC20891h abstractC20891h;
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC20890g abstractC20890g = this.f11622d;
        if (abstractC20890g == null) {
            l.l("presenter");
            throw null;
        }
        C20880b c20880b = (C20880b) abstractC20890g;
        Objects.requireNonNull(c20880b);
        l.e(contact, AnalyticsConstants.CONTACT);
        if (contact.m35495t0()) {
            return;
        }
        C20592g c20592g = c20880b.f58678j;
        if (!c20592g.f57899c4.m10941a(c20592g, C20592g.f57695p6[266]).isEnabled() || (abstractC20891h = (AbstractC20891h) c20880b.f57683a) == null) {
            return;
        }
        abstractC20891h.mo10559A4(contact);
    }

    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: y7 */
    public void mo10552y7() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        C17253b.C17254a.m16323a(supportFragmentManager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1275v.AbstractC20891h
    /* renamed from: z2 */
    public void mo10551z2() {
        Window window = getWindow();
        l.d(window, "window");
        View decorView = window.getDecorView();
        l.d(decorView, "window.decorView");
        decorView.setSystemUiVisibility(0);
        Window window2 = getWindow();
        l.d(window2, "window");
        C17422k.m16071k(window2);
        m35439qa(new View$OnClickListenerC13135s1());
    }
}
