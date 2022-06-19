package org.mistergroup.shouldianswer.utils;

import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.aa */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/aa.class */
public final class C3075aa {

    /* renamed from: a */
    private AbstractC1663b<? super String, C1775o> f8977a;

    /* renamed from: org.mistergroup.shouldianswer.utils.aa$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/aa$a.class */
    public static final class C3076a extends ClickableSpan {

        /* renamed from: b */
        final /* synthetic */ URLSpan f8979b;

        C3076a(URLSpan uRLSpan) {
            C3075aa.this = r4;
            this.f8979b = uRLSpan;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            C1694h.m3117b(view, "view");
            AbstractC1663b abstractC1663b = C3075aa.this.f8977a;
            if (abstractC1663b != null) {
                String url = this.f8979b.getURL();
                C1694h.m3122a((Object) url, "span.url");
                C1775o c1775o = (C1775o) abstractC1663b.mo138a(url);
            }
        }
    }

    /* renamed from: a */
    private final void m225a(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan) {
        spannableStringBuilder.setSpan(new C3076a(uRLSpan), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
        spannableStringBuilder.removeSpan(uRLSpan);
    }

    /* renamed from: a */
    public final void m224a(TextView textView, String str) {
        URLSpan[] uRLSpanArr;
        C1694h.m3117b(textView, "text");
        C1694h.m3117b(str, "html");
        Spanned fromHtml = Html.fromHtml(str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fromHtml);
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, fromHtml.length(), URLSpan.class)) {
            C1694h.m3122a((Object) uRLSpan, "span");
            m225a(spannableStringBuilder, uRLSpan);
        }
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: a */
    public final void m223a(AbstractC1663b<? super String, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f8977a = abstractC1663b;
    }
}
