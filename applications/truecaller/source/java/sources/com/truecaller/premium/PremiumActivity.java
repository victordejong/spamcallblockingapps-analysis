package com.truecaller.premium;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.PaymentData;
import com.truecaller.C2752R;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1011l.AbstractC17231t;
import p193e.p194a.p1011l.C16614b;
import p193e.p194a.p1011l.p1023n2.AbstractC17005k;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b \u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0011\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/truecaller/premium/PremiumActivity;", "Ln3/b/a/h;", "Le/a/l/n2/k;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "()V", "Le/a/l/b$e;", "qa", "()Le/a/l/b$e;", "", "paymentId", "Lcom/razorpay/PaymentData;", "paymentData", "onPaymentSuccess", "(Ljava/lang/String;Lcom/razorpay/PaymentData;)V", "", "errorCode", "errorDescription", "onPaymentError", "(ILjava/lang/String;Lcom/razorpay/PaymentData;)V", "Le/a/l/n2/k$a;", "d", "Le/a/l/n2/k$a;", "getWebPaymentPurchaseUpdateListener", "()Le/a/l/n2/k$a;", "O", "(Le/a/l/n2/k$a;)V", "webPaymentPurchaseUpdateListener", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/PremiumActivity.class */
public class PremiumActivity extends AbstractC17231t implements AbstractC17005k {

    /* renamed from: d */
    public AbstractC17005k.AbstractC17006a f14194d;

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC17005k
    /* renamed from: O */
    public void mo16649O(AbstractC17005k.AbstractC17006a abstractC17006a) {
        this.f14194d = abstractC17006a;
    }

    public void onBackPressed() {
        FragmentManager childFragmentManager;
        Fragment m42943J = getSupportFragmentManager().m42943J(C2752R.C2754id.fragmentContainer);
        if (m42943J == null || (childFragmentManager = m42943J.getChildFragmentManager()) == null) {
            PremiumActivity.super.onBackPressed();
        } else if (childFragmentManager.m42940M() > 0) {
            childFragmentManager.m42921c0();
        } else {
            PremiumActivity.super.onBackPressed();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        PremiumActivity.super.onCreate(bundle);
        C15571h.m18652D(this);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        setContentView((int) C2752R.layout.activity_premium);
        Intent intent = getIntent();
        l.d(intent, "intent");
        Bundle extras = intent.getExtras();
        String string = extras != null ? extras.getString("launchContext") : null;
        l.c(string);
        l.d(string, "intent.extras?.getString…iew.KEY_LAUNCH_CONTEXT)!!");
        PremiumLaunchContext valueOf = PremiumLaunchContext.valueOf(string);
        Intent intent2 = getIntent();
        l.d(intent2, "intent");
        Bundle extras2 = intent2.getExtras();
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = extras2 != null ? (SubscriptionPromoEventMetaData) extras2.getParcelable("analyticsMetadata") : null;
        Intent intent3 = getIntent();
        l.d(intent3, "intent");
        Bundle extras3 = intent3.getExtras();
        String string2 = extras3 != null ? extras3.getString("selectedPage") : null;
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(C2752R.C2754id.fragmentContainer, C16614b.C16617d.m17172a(valueOf, subscriptionPromoEventMetaData, string2, mo34825qa()), null);
            c26907a.mo1124i();
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentError(int i, String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f14194d;
        if (abstractC17006a != null) {
            abstractC17006a.onPaymentError(i, str);
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentSuccess(String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f14194d;
        if (abstractC17006a != null) {
            abstractC17006a.mo16648a(str, paymentData);
        }
    }

    /* renamed from: qa */
    public C16614b.C16618e mo34825qa() {
        return new C16614b.C16618e(Integer.valueOf((int) C2752R.C2753drawable.oval_white_with_arrow), 0, false, 6);
    }
}
