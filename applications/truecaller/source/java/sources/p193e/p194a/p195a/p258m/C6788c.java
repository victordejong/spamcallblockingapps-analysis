package p193e.p194a.p195a.p258m;

import android.content.Context;
import android.text.style.ClickableSpan;
import android.view.View;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.a.m.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/c.class */
public final class C6788c extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ a f22333a;

    /* renamed from: b */
    public final /* synthetic */ Context f22334b;

    public C6788c(a aVar, Context context) {
        this.f22333a = aVar;
        this.f22334b = context;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, "p0");
        this.f22333a.invoke();
        C19291g.m13596Q0("https://support.truecaller.com/support/solutions/articles/81000401463-caller-id-and-spam-protection", this.f22334b);
    }
}
