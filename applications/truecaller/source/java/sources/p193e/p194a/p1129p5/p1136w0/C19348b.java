package p193e.p194a.p1129p5.p1136w0;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.p5.w0.b */
/* loaded from: classes15-dex2jar.jar:e/a/p5/w0/b.class */
public final class C19348b extends ClickableSpan {

    /* renamed from: a */
    public final int f53817a;

    /* renamed from: b */
    public final a<s> f53818b;

    public C19348b(int i, a<s> aVar) {
        this.f53817a = i;
        this.f53818b = aVar;
    }

    public C19348b(int i, a aVar, int i2) {
        this.f53817a = i;
        this.f53818b = null;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, "widget");
        a<s> aVar = this.f53818b;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        l.e(textPaint, "ds");
        textPaint.setColor(this.f53817a);
        textPaint.setUnderlineText(false);
    }
}
