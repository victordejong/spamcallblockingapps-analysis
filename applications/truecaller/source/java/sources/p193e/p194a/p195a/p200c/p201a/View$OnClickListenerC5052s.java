package p193e.p194a.p195a.p200c.p201a;

import android.view.View;
import com.truecaller.messaging.data.types.Message;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.z.b.l;
/* renamed from: e.a.a.c.a.s */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/s.class */
public final class View$OnClickListenerC5052s implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C5053t f17310a;

    /* renamed from: b */
    public final /* synthetic */ l f17311b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC10597h f17312c;

    /* renamed from: d */
    public final /* synthetic */ Message f17313d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC10616p f17314e;

    public View$OnClickListenerC5052s(C5053t c5053t, l lVar, AbstractC10597h abstractC10597h, Message message, AbstractC10616p abstractC10616p) {
        this.f17310a = c5053t;
        this.f17311b = lVar;
        this.f17312c = abstractC10597h;
        this.f17313d = message;
        this.f17314e = abstractC10616p;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f17311b.d(this.f17312c.f31609c);
        View m34003b = this.f17310a.m34003b();
        if (m34003b != null) {
            C19286f.m13689O(m34003b);
        }
        AbstractC5013b.m34002c(this.f17310a, this.f17311b, this.f17312c.f31609c, this.f17313d, this.f17314e, true, null, null, 96, null);
    }
}
