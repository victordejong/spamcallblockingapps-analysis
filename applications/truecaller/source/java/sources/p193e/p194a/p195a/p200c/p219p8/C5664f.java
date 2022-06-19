package p193e.p194a.p195a.p200c.p219p8;

import android.content.Context;
import android.text.Spannable;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.C4161R;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/f.class */
public final class C5664f implements AbstractC5659a {

    /* renamed from: a */
    public final Context f19021a;

    /* renamed from: b */
    public final Spannable f19022b;

    public C5664f(Context context, Spannable spannable) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(spannable, "spannable");
        this.f19021a = context;
        this.f19022b = spannable;
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: a */
    public void mo29849a(int i, int i2, int i3) {
        this.f19022b.setSpan(C10480a.m25971e(this.f19021a), i - 1, i, 0);
        this.f19022b.setSpan(C10480a.m25971e(this.f19021a), i2 - 2, i2, 0);
        this.f19022b.setSpan(C10480a.m25971e(this.f19021a), i3, i3 + 1, 0);
        this.f19022b.setSpan(new UnderlineSpan(), i2, i3, 0);
        this.f19022b.setSpan(new ForegroundColorSpan(C19291g.m13612L(this.f19021a, C4161R.attr.tcx_brandBackgroundBlue)), i2, i3, 0);
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: b */
    public void mo29848b(FormattingStyle formattingStyle, int i, int i2) {
        l.e(formattingStyle, "style");
        this.f19022b.setSpan(C10480a.m25971e(this.f19021a), i - formattingStyle.getDelimiter().length(), i, 0);
        this.f19022b.setSpan(C10480a.m25971e(this.f19021a), i2, formattingStyle.getDelimiter().length() + i2, 0);
        this.f19022b.setSpan(C10480a.m25906r(formattingStyle), i, i2, 0);
    }
}
