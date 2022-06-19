package p293y2;

import android.support.p012v4.media.C0082b;
import java.util.Map;
import java.util.Objects;
import p018b3.AbstractC0721a;
import p218r2.EnumC4186d;
import p293y2.AbstractC4985e;
/* renamed from: y2.a */
/* loaded from: classes-dex2jar.jar:y2/a.class */
public final class C4979a extends AbstractC4985e {

    /* renamed from: a */
    public final AbstractC0721a f15178a;

    /* renamed from: b */
    public final Map<EnumC4186d, AbstractC4985e.AbstractC4986a> f15179b;

    public C4979a(AbstractC0721a abstractC0721a, Map<EnumC4186d, AbstractC4985e.AbstractC4986a> map) {
        Objects.requireNonNull(abstractC0721a, "Null clock");
        this.f15178a = abstractC0721a;
        Objects.requireNonNull(map, "Null values");
        this.f15179b = map;
    }

    @Override // p293y2.AbstractC4985e
    /* renamed from: a */
    public AbstractC0721a mo166a() {
        return this.f15178a;
    }

    @Override // p293y2.AbstractC4985e
    /* renamed from: c */
    public Map<EnumC4186d, AbstractC4985e.AbstractC4986a> mo164c() {
        return this.f15179b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4985e)) {
            return false;
        }
        AbstractC4985e abstractC4985e = (AbstractC4985e) obj;
        if (!this.f15178a.equals(abstractC4985e.mo166a()) || !this.f15179b.equals(abstractC4985e.mo164c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f15178a.hashCode() ^ 1000003) * 1000003) ^ this.f15179b.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("SchedulerConfig{clock=");
        m8752j.append(this.f15178a);
        m8752j.append(", values=");
        m8752j.append(this.f15179b);
        m8752j.append("}");
        return m8752j.toString();
    }
}
