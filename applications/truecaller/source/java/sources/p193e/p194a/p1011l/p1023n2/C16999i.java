package p193e.p194a.p1011l.p1023n2;

import com.razorpay.PaymentData;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.AbstractC17000j;
import p193e.p194a.p1011l.p1023n2.AbstractC17005k;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.n;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.l.n2.i */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/i.class */
public final class C16999i implements AbstractC17005k.AbstractC17006a {

    /* renamed from: a */
    public final /* synthetic */ C16995h f47699a;

    /* renamed from: b */
    public final /* synthetic */ n f47700b;

    public C16999i(C16995h c16995h, n nVar) {
        this.f47699a = c16995h;
        this.f47700b = nVar;
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC17005k.AbstractC17006a
    /* renamed from: a */
    public void mo16648a(String str, PaymentData paymentData) {
        if (paymentData != null) {
            C17192t1 c17192t1 = this.f47699a.f47679d;
            Objects.requireNonNull(c17192t1);
            l.e(paymentData, "paymentData");
            c17192t1.f48231a.mo16402X(true);
            AbstractC17197v0 abstractC17197v0 = c17192t1.f48231a;
            b bVar = new b();
            l.d(bVar, "DateTime.now()");
            abstractC17197v0.mo16401X1(((e) bVar).a);
            AbstractC17197v0 abstractC17197v02 = c17192t1.f48231a;
            l.e(paymentData, "$this$toReport");
            StringBuilder sb = new StringBuilder();
            sb.append("\r\n\r\n======= Premium Razor Pay Report =======");
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
            StringBuilder m8728C = C22128a.m8728C("PaymentId: ");
            m8728C.append(paymentData.getPaymentId());
            sb.append(m8728C.toString());
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
            sb.append("OrderId: " + paymentData.getOrderId());
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
            sb.append("User Contact: " + paymentData.getUserContact());
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
            sb.append("User Email: " + paymentData.getUserEmail());
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
            sb.append("Signature : " + paymentData.getSignature());
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
            String sb2 = sb.toString();
            l.d(sb2, "StringBuilder()\n        …: $signature\").toString()");
            abstractC17197v02.mo16410E1(sb2);
        }
        C10480a.m25878w2(this.f47700b, AbstractC17000j.C17004d.f47704a);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC17005k.AbstractC17006a
    public void onPaymentError(int i, String str) {
        n nVar = this.f47700b;
        Objects.requireNonNull(this.f47699a);
        C10480a.m25878w2(nVar, i != 0 ? (i == 2 || i == 6) ? AbstractC17000j.C17003c.f47703a : AbstractC17000j.C17001a.f47701a : AbstractC17000j.C17002b.f47702a);
    }
}
