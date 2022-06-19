package p193e.p194a.p1164r.p1166a0;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import p193e.p194a.p372b0.p417k.C8494c;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.r.a0.s */
/* loaded from: classes16-dex2jar.jar:e/a/r/a0/s.class */
public final class C19723s extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ URLSpan f54758a;

    /* renamed from: b */
    public final /* synthetic */ r f54759b;

    public C19723s(URLSpan uRLSpan, r rVar, SpannableStringBuilder spannableStringBuilder) {
        this.f54758a = uRLSpan;
        this.f54759b = rVar;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, "widget");
        if (!this.f54759b.isAdded()) {
            return;
        }
        URLSpan uRLSpan = this.f54758a;
        l.d(uRLSpan, "span");
        String url = uRLSpan.getURL();
        l.d(url, "span.url");
        boolean z = false;
        if (!v.B(url, "language", false, 2)) {
            URLSpan uRLSpan2 = this.f54758a;
            l.d(uRLSpan2, "span");
            String url2 = uRLSpan2.getURL();
            l.d(url2, "span.url");
            if (!v.B(url2, "options", false, 2)) {
                return;
            }
            z RA = this.f54759b.RA();
            x xVar = (x) RA.f57683a;
            if (xVar == null) {
                return;
            }
            xVar.tz(RA.q.f54743b.m28448a());
            return;
        }
        z RA2 = this.f54759b.RA();
        C8494c c8494c = RA2.d;
        if (c8494c != null) {
            z = true;
        }
        if (!z) {
            return;
        }
        if (c8494c == null) {
            l.l("altLanguage");
            throw null;
        }
        RA2.Jj(c8494c.f26267b);
        x xVar2 = (x) RA2.f57683a;
        if (xVar2 == null) {
            return;
        }
        xVar2.yr();
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        l.e(textPaint, "ds");
        super.updateDrawState(textPaint);
        textPaint.setColor(-1);
    }
}
