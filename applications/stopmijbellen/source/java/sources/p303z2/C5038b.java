package p303z2;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
import p250u2.AbstractC4463f;
import p250u2.AbstractC4469i;
/* renamed from: z2.b */
/* loaded from: classes-dex2jar.jar:z2/b.class */
public final class C5038b extends AbstractC5047h {

    /* renamed from: a */
    public final long f15312a;

    /* renamed from: b */
    public final AbstractC4469i f15313b;

    /* renamed from: c */
    public final AbstractC4463f f15314c;

    public C5038b(long j, AbstractC4469i abstractC4469i, AbstractC4463f abstractC4463f) {
        this.f15312a = j;
        Objects.requireNonNull(abstractC4469i, "Null transportContext");
        this.f15313b = abstractC4469i;
        Objects.requireNonNull(abstractC4463f, "Null event");
        this.f15314c = abstractC4463f;
    }

    @Override // p303z2.AbstractC5047h
    /* renamed from: a */
    public AbstractC4463f mo110a() {
        return this.f15314c;
    }

    @Override // p303z2.AbstractC5047h
    /* renamed from: b */
    public long mo109b() {
        return this.f15312a;
    }

    @Override // p303z2.AbstractC5047h
    /* renamed from: c */
    public AbstractC4469i mo108c() {
        return this.f15313b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5047h)) {
            return false;
        }
        AbstractC5047h abstractC5047h = (AbstractC5047h) obj;
        if (this.f15312a != abstractC5047h.mo109b() || !this.f15313b.equals(abstractC5047h.mo108c()) || !this.f15314c.equals(abstractC5047h.mo110a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f15312a;
        int i = (int) (j ^ (j >>> 32));
        return this.f15314c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f15313b.hashCode()) * 1000003);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("PersistedEvent{id=");
        m8752j.append(this.f15312a);
        m8752j.append(", transportContext=");
        m8752j.append(this.f15313b);
        m8752j.append(", event=");
        m8752j.append(this.f15314c);
        m8752j.append("}");
        return m8752j.toString();
    }
}
