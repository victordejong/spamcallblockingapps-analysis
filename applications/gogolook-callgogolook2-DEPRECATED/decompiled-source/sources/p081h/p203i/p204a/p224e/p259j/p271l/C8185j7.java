package p081h.p203i.p204a.p224e.p259j.p271l;

import android.content.Context;
import androidx.annotation.NonNull;
import java.nio.MappedByteBuffer;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10027j;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10035r;
import p081h.p203i.p325c.p373y.p374a.p377c.C10045b;
/* renamed from: h.i.a.e.j.l.j7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j7.class */
public final class C8185j7 implements AbstractC10027j {

    /* renamed from: a */
    public final Context f18934a;

    public C8185j7(Context context) {
        this.f18934a = context;
    }

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10027j
    /* renamed from: a */
    public final MappedByteBuffer mo13572a(@NonNull String str) throws C10009a {
        Context context = this.f18934a;
        C10045b.C10046a aVar = new C10045b.C10046a("local");
        aVar.m13540a(str);
        return new C10035r(context, aVar.m13541a()).m13559a();
    }
}
