package p261v2;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import java.util.Objects;
import p018b3.AbstractC0721a;
/* renamed from: v2.c */
/* loaded from: classes-dex2jar.jar:v2/c.class */
public final class C4590c extends AbstractC4595h {

    /* renamed from: a */
    public final Context f14180a;

    /* renamed from: b */
    public final AbstractC0721a f14181b;

    /* renamed from: c */
    public final AbstractC0721a f14182c;

    /* renamed from: d */
    public final String f14183d;

    public C4590c(Context context, AbstractC0721a abstractC0721a, AbstractC0721a abstractC0721a2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f14180a = context;
        Objects.requireNonNull(abstractC0721a, "Null wallClock");
        this.f14181b = abstractC0721a;
        Objects.requireNonNull(abstractC0721a2, "Null monotonicClock");
        this.f14182c = abstractC0721a2;
        Objects.requireNonNull(str, "Null backendName");
        this.f14183d = str;
    }

    @Override // p261v2.AbstractC4595h
    /* renamed from: a */
    public Context mo745a() {
        return this.f14180a;
    }

    @Override // p261v2.AbstractC4595h
    /* renamed from: b */
    public String mo744b() {
        return this.f14183d;
    }

    @Override // p261v2.AbstractC4595h
    /* renamed from: c */
    public AbstractC0721a mo743c() {
        return this.f14182c;
    }

    @Override // p261v2.AbstractC4595h
    /* renamed from: d */
    public AbstractC0721a mo742d() {
        return this.f14181b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4595h)) {
            return false;
        }
        AbstractC4595h abstractC4595h = (AbstractC4595h) obj;
        if (!this.f14180a.equals(abstractC4595h.mo745a()) || !this.f14181b.equals(abstractC4595h.mo742d()) || !this.f14182c.equals(abstractC4595h.mo743c()) || !this.f14183d.equals(abstractC4595h.mo744b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f14180a.hashCode() ^ 1000003) * 1000003) ^ this.f14181b.hashCode()) * 1000003) ^ this.f14182c.hashCode()) * 1000003) ^ this.f14183d.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CreationContext{applicationContext=");
        m8752j.append(this.f14180a);
        m8752j.append(", wallClock=");
        m8752j.append(this.f14181b);
        m8752j.append(", monotonicClock=");
        m8752j.append(this.f14182c);
        m8752j.append(", backendName=");
        return C0082b.m8754h(m8752j, this.f14183d, "}");
    }
}
