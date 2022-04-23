package p131c.p161d.p282e.p340u.p348k;

import android.content.Context;
import com.google.android.gms.clearcut.ClearcutLogger;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.C6035s;
/* renamed from: c.d.e.u.k.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/a.class */
public final class C5980a {

    /* renamed from: d */
    public static final C5969a f19413d = C5969a.m22496a();

    /* renamed from: a */
    public final Context f19414a;

    /* renamed from: b */
    public final String f19415b;

    /* renamed from: c */
    public ClearcutLogger f19416c;

    public C5980a(Context context, String str) {
        this(context, str, null);
    }

    public C5980a(Context context, String str, ClearcutLogger clearcutLogger) {
        this.f19414a = context;
        this.f19415b = str;
        this.f19416c = clearcutLogger;
    }

    /* renamed from: a */
    public void m22425a(C6035s sVar) {
        if (!m22426a()) {
            f19413d.m22491d("Unable to dispatch event because Cct Logger is not available", new Object[0]);
            return;
        }
        try {
            this.f19416c.m17849a(sVar.mo21180c()).m17836a();
            f19413d.m22492c("Event is dispatched via Cct Transport", new Object[0]);
        } catch (Exception e) {
            f19413d.m22491d("Dispatch with Cct Logger failed with exception: %s", e.getMessage());
        }
    }

    /* renamed from: a */
    public final boolean m22426a() {
        boolean z = true;
        if (this.f19416c == null) {
            try {
                this.f19416c = ClearcutLogger.m17852a(this.f19414a, this.f19415b);
            } catch (Exception e) {
                f19413d.m22491d("Init Cct Logger failed with exception: %s", e.getMessage());
            }
        }
        if (this.f19416c == null) {
            z = false;
        }
        return z;
    }
}
