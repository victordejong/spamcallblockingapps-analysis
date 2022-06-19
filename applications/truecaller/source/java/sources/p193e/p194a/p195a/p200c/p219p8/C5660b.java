package p193e.p194a.p195a.p200c.p219p8;

import android.text.style.ClickableSpan;
import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/b.class */
public final class C5660b extends ClickableSpan {

    /* renamed from: a */
    public final String f19015a;

    public C5660b(String str) {
        l.e(str, "link");
        this.f19015a = str;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, "widget");
    }
}
