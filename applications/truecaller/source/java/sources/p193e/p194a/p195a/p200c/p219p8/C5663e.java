package p193e.p194a.p195a.p200c.p219p8;

import android.content.Context;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.C4161R;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.d0.j;
import s1.o;
import s1.u.z;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/e.class */
public final class C5663e implements AbstractC5659a {

    /* renamed from: a */
    public final char[] f19017a;

    /* renamed from: b */
    public final List<o<CharacterStyle, Integer, Integer>> f19018b = new ArrayList();

    /* renamed from: c */
    public final Context f19019c;

    /* renamed from: d */
    public final CharSequence f19020d;

    public C5663e(Context context, CharSequence charSequence) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(charSequence, "text");
        this.f19019c = context;
        this.f19020d = charSequence;
        String obj = charSequence.toString();
        Objects.requireNonNull(obj, "null cannot be cast to non-null type java.lang.String");
        char[] charArray = obj.toCharArray();
        l.d(charArray, "(this as java.lang.String).toCharArray()");
        this.f19017a = charArray;
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: a */
    public void mo29849a(int i, int i2, int i3) {
        int i4 = i2 - 2;
        this.f19018b.add(new o<>(new UnderlineSpan(), Integer.valueOf(i), Integer.valueOf(i4)));
        this.f19018b.add(new o<>(new ForegroundColorSpan(C19291g.m13612L(this.f19019c, C4161R.attr.tcx_brandBackgroundBlue)), Integer.valueOf(i), Integer.valueOf(i4)));
        this.f19017a[i - 1] = (char) 0;
        z it = j.j(i4, i3 + 1).iterator();
        while (it.hasNext()) {
            this.f19017a[it.a()] = (char) 0;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: b */
    public void mo29848b(FormattingStyle formattingStyle, int i, int i2) {
        l.e(formattingStyle, "style");
        this.f19018b.add(new o<>(C10480a.m25906r(formattingStyle), Integer.valueOf(i), Integer.valueOf(i2)));
        z it = j.j(i - formattingStyle.getDelimiter().length(), i).iterator();
        while (it.hasNext()) {
            this.f19017a[it.a()] = (char) 0;
        }
        z it2 = j.j(i2, formattingStyle.getDelimiter().length() + i2).iterator();
        while (it2.hasNext()) {
            this.f19017a[it2.a()] = (char) 0;
        }
    }
}
