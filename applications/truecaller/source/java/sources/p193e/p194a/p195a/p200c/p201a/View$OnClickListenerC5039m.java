package p193e.p194a.p195a.p200c.p201a;

import android.view.View;
import com.truecaller.messaging.data.types.Message;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import s1.k;
/* renamed from: e.a.a.c.a.m */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/m.class */
public final class View$OnClickListenerC5039m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Message f17273a;

    /* renamed from: b */
    public final /* synthetic */ C5036k.AbstractC5037a f17274b;

    /* renamed from: c */
    public final /* synthetic */ k f17275c;

    /* renamed from: d */
    public final /* synthetic */ boolean f17276d;

    public View$OnClickListenerC5039m(Message message, C5036k.AbstractC5037a abstractC5037a, k kVar, boolean z) {
        this.f17273a = message;
        this.f17274b = abstractC5037a;
        this.f17275c = kVar;
        this.f17276d = z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message message = this.f17273a;
        if (message != null) {
            this.f17274b.mo32677w7(message, this.f17275c, this.f17276d);
        }
    }
}
