package p193e.p194a.p1114o5;

import android.content.Context;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import p193e.p194a.p682e.C12864a2;
/* renamed from: e.a.o5.a1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a1.class */
public class C18936a1 implements AbstractC19127x0 {

    /* renamed from: a */
    public final Context f53078a;

    /* renamed from: b */
    public final String f53079b;

    /* renamed from: c */
    public final boolean f53080c;

    public C18936a1(Context context, InternalTruecallerNotification internalTruecallerNotification) {
        this.f53078a = context;
        this.f53079b = internalTruecallerNotification.m34840s();
        this.f53080c = true;
    }

    public C18936a1(Context context, InternalTruecallerNotification internalTruecallerNotification, boolean z) {
        this.f53078a = context;
        this.f53079b = internalTruecallerNotification.m34840s();
        this.f53080c = z;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19127x0
    public void execute() {
        C12864a2.m22575S(this.f53078a, this.f53079b, this.f53080c);
    }
}
