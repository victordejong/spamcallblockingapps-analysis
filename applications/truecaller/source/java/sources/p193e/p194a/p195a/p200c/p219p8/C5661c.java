package p193e.p194a.p195a.p200c.p219p8;

import android.text.Spannable;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.c */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/c.class */
public final class C5661c implements AbstractC5659a {

    /* renamed from: a */
    public final Spannable f19016a;

    public C5661c(Spannable spannable) {
        l.e(spannable, "spannable");
        this.f19016a = spannable;
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: a */
    public void mo29849a(int i, int i2, int i3) {
        int i4 = i - 1;
        this.f19016a.setSpan(new C5662d(), i4, i, 0);
        int i5 = i3 + 1;
        this.f19016a.setSpan(new C5662d(), i2 - 2, i5, 0);
        this.f19016a.setSpan(new C5660b(this.f19016a.subSequence(i2, i3).toString()), i4, i5, 0);
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: b */
    public void mo29848b(FormattingStyle formattingStyle, int i, int i2) {
        l.e(formattingStyle, "style");
        this.f19016a.setSpan(new C5662d(), i - formattingStyle.getDelimiter().length(), i, 0);
        this.f19016a.setSpan(new C5662d(), i2, formattingStyle.getDelimiter().length() + i2, 0);
        this.f19016a.setSpan(C10480a.m25906r(formattingStyle), i, i2, 0);
    }
}
