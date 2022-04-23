package p081h.p203i.p325c.p329j.p330d;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p325c.p329j.C9449c;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.j.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/j/d/a.class */
public class C9450a {
    @GuardedBy("this")

    /* renamed from: a */
    public final Map<String, C9449c> f21572a = new HashMap();

    /* renamed from: b */
    public final Context f21573b;

    /* renamed from: c */
    public final AbstractC9452a f21574c;

    @VisibleForTesting(otherwise = 3)
    public C9450a(Context context, AbstractC9452a aVar) {
        this.f21573b = context;
        this.f21574c = aVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public C9449c m15128a(String str) {
        return new C9449c(this.f21573b, this.f21574c, str);
    }

    /* renamed from: b */
    public C9449c m15127b(String str) {
        C9449c cVar;
        synchronized (this) {
            if (!this.f21572a.containsKey(str)) {
                this.f21572a.put(str, m15128a(str));
            }
            cVar = this.f21572a.get(str);
        }
        return cVar;
    }
}
