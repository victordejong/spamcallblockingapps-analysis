package com.truecaller.whoviewedme;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import com.razorpay.AnalyticsConstants;
import com.razorpay.PaymentData;
import kotlin.Metadata;
import p193e.p194a.p1011l.p1023n2.AbstractC17005k;
import p193e.p194a.p1193r5.AbstractC19946g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u00012\u00020\u0002:\u0001\"B\u0007¢\u0006\u0004\b \u0010!J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0011\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006#"}, d2 = {"Lcom/truecaller/whoviewedme/WhoViewedMeActivity;", "Ln3/b/a/h;", "Le/a/l/n2/k;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "", "paymentId", "Lcom/razorpay/PaymentData;", "paymentData", "onPaymentSuccess", "(Ljava/lang/String;Lcom/razorpay/PaymentData;)V", "", "errorCode", "description", "onPaymentError", "(ILjava/lang/String;Lcom/razorpay/PaymentData;)V", "Le/a/l/n2/k$a;", "d", "Le/a/l/n2/k$a;", "getWebPaymentPurchaseUpdateListener", "()Le/a/l/n2/k$a;", "O", "(Le/a/l/n2/k$a;)V", "webPaymentPurchaseUpdateListener", "<init>", "()V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/WhoViewedMeActivity.class */
public final class WhoViewedMeActivity extends AbstractC19946g implements AbstractC17005k {

    /* renamed from: d */
    public AbstractC17005k.AbstractC17006a f16517d;

    /* renamed from: com.truecaller.whoviewedme.WhoViewedMeActivity$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/WhoViewedMeActivity$a.class */
    public static final class C4859a {
        /* renamed from: a */
        public static final Intent m34279a(Context context, WhoViewedMeLaunchContext whoViewedMeLaunchContext) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(whoViewedMeLaunchContext, "launchContext");
            Intent putExtra = new Intent(context, WhoViewedMeActivity.class).putExtra("launch_context", whoViewedMeLaunchContext);
            l.d(putExtra, "Intent(context, WhoViewe…H_CONTEXT, launchContext)");
            return putExtra;
        }
    }

    /* renamed from: pa */
    public static final Intent m34280pa(Context context, WhoViewedMeLaunchContext whoViewedMeLaunchContext) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(whoViewedMeLaunchContext, "launchContext");
        Intent putExtra = new Intent(context, WhoViewedMeActivity.class).putExtra("launch_context", whoViewedMeLaunchContext);
        l.d(putExtra, "Intent(context, WhoViewe…H_CONTEXT, launchContext)");
        return putExtra;
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC17005k
    /* renamed from: O */
    public void mo16649O(AbstractC17005k.AbstractC17006a abstractC17006a) {
        this.f16517d = abstractC17006a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        if (r6 != null) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = 1
            p193e.p194a.p1049l4.C17422k.m16066m0(r0, r1)
            r0 = r5
            r1 = r6
            com.truecaller.whoviewedme.WhoViewedMeActivity.super.onCreate(r1)
            r0 = r5
            r1 = 2131558499(0x7f0d0063, float:1.8742316E38)
            r0.setContentView(r1)
            r0 = r5
            r1 = r5
            r2 = 2131366512(0x7f0a1270, float:1.835292E38)
            android.view.View r1 = r1.findViewById(r2)
            androidx.appcompat.widget.Toolbar r1 = (androidx.appcompat.widget.Toolbar) r1
            r0.setSupportActionBar(r1)
            r0 = r5
            n3.b.a.a r0 = r0.getSupportActionBar()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L2b
            r0 = r7
            r1 = 1
            r0.mo3553n(r1)
        L2b:
            r0 = r5
            n3.b.a.a r0 = r0.getSupportActionBar()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L39
            r0 = r7
            r1 = 1
            r0.mo3552o(r1)
        L39:
            r0 = r5
            n3.b.a.a r0 = r0.getSupportActionBar()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L48
            r0 = r7
            r1 = 2131888092(0x7f1207dc, float:1.941081E38)
            r0.mo3543x(r1)
        L48:
            r0 = r6
            if (r0 != 0) goto Lb2
            r0 = r5
            android.content.Intent r0 = r0.getIntent()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            r0 = r6
            java.lang.String r1 = "launch_context"
            java.io.Serializable r0 = r0.getSerializableExtra(r1)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            goto L67
        L63:
            com.truecaller.whoviewedme.WhoViewedMeLaunchContext r0 = com.truecaller.whoviewedme.WhoViewedMeLaunchContext.UNKNOWN
            r6 = r0
        L67:
            r0 = r6
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.whoviewedme.WhoViewedMeLaunchContext"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r6
            com.truecaller.whoviewedme.WhoViewedMeLaunchContext r0 = (com.truecaller.whoviewedme.WhoViewedMeLaunchContext) r0
            r7 = r0
            n3.r.a.a r0 = new n3.r.a.a
            r1 = r0
            r2 = r5
            androidx.fragment.app.FragmentManager r2 = r2.getSupportFragmentManager()
            r1.<init>(r2)
            r6 = r0
            r0 = r7
            java.lang.String r1 = "launchContext"
            s1.z.c.l.e(r0, r1)
            e.a.r5.v r0 = new e.a.r5.v
            r1 = r0
            r1.<init>()
            r8 = r0
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r8
            r1 = r9
            r0.setArguments(r1)
            r0 = r9
            java.lang.String r1 = "launch_context"
            r2 = r7
            r0.putSerializable(r1, r2)
            r0 = r6
            r1 = 2131366955(0x7f0a142b, float:1.8353818E38)
            r2 = r8
            r3 = 0
            n3.r.a.f0 r0 = r0.m1120m(r1, r2, r3)
            r0 = r6
            int r0 = r0.mo1127f()
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.whoviewedme.WhoViewedMeActivity.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() != 16908332) {
            return WhoViewedMeActivity.super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentError(int i, String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f16517d;
        if (abstractC17006a != null) {
            abstractC17006a.onPaymentError(i, str);
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentSuccess(String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f16517d;
        if (abstractC17006a != null) {
            abstractC17006a.mo16648a(str, paymentData);
        }
    }
}
