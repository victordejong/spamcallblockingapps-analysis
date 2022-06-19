package p193e.p194a.p1313v3.p1314c;

import android.os.Build;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.feedback.network.Feedback;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1313v3.AbstractC21011b;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import s1.f0.n;
import s1.f0.r;
import s1.z.c.l;
import x3.b;
import x3.h0.a;
import x3.h0.o;
/* renamed from: e.a.v3.c.c */
/* loaded from: classes9-dex2jar.jar:e/a/v3/c/c.class */
public final class C21015c {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"e/a/v3/c/c$a", "", "Lcom/truecaller/feedback/network/Feedback;", "feedback", "Lx3/b;", "", "a", "(Lcom/truecaller/feedback/network/Feedback;)Lx3/b;", "feedback_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.v3.c.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/v3/c/c$a.class */
    public interface AbstractC21016a {
        @o("/v0/feedback")
        /* renamed from: a */
        b<String> m10415a(@a Feedback feedback);
    }

    /* renamed from: a */
    public static final b<String> m10416a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, String str, String str2, String str3, AbstractC21011b abstractC21011b, String str4) {
        l.e(charSequence, AnalyticsConstants.NAME);
        l.e(charSequence2, AnalyticsConstants.EMAIL);
        l.e(charSequence3, "subject");
        l.e(charSequence4, "content");
        l.e(str, "premiumLevel");
        l.e(str3, "deviceName");
        l.e(abstractC21011b, "appInfoProvider");
        StringBuilder sb = new StringBuilder();
        sb.append("\n            |FEEDBACK FORM ANDROID ");
        sb.append(str);
        sb.append("\n            |Name: ");
        sb.append(charSequence);
        sb.append("\n            |Subject: ");
        sb.append(charSequence3);
        sb.append("\n            |Device Name: ");
        sb.append(str3);
        sb.append("\n            |Android OS Version: ");
        sb.append(Build.VERSION.RELEASE);
        sb.append("\n            |");
        sb.append(abstractC21011b.mo10422p());
        sb.append(" Version: ");
        sb.append(abstractC21011b.mo10421t());
        sb.append("\n            |Feedback:\n            |\n            |");
        sb.append(charSequence4);
        sb.append(' ');
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        sb.append("\n            |");
        Feedback feedback = new Feedback(charSequence2.toString(), r.t(n.d(sb.toString(), (String) null, 1), StringConstant.NEW_LINE, "\r\n", false, 4));
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.FEEDBACK, AbstractC21016a.class);
        m8568t1.m28628b(AuthRequirement.REQUIRED, str4);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        return ((AbstractC21016a) c8365b.m28637c(AbstractC21016a.class)).m10415a(feedback);
    }
}
