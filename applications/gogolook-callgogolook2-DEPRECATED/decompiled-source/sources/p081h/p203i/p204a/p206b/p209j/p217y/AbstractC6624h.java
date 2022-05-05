package p081h.p203i.p204a.p206b.p209j.p217y;

import android.content.Context;
import android.os.Build;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6626a;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6632e;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
/* renamed from: h.i.a.b.j.y.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/h.class */
public abstract class AbstractC6624h {
    /* renamed from: a */
    public static AbstractC6650s m22219a(Context context, AbstractC6661c cVar, AbstractC6634g gVar, AbstractC6550a aVar) {
        return Build.VERSION.SDK_INT >= 21 ? new C6632e(context, cVar, gVar) : new C6626a(context, cVar, aVar, gVar);
    }
}
