package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8329y;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import java.util.Objects;
/* renamed from: com.criteo.publisher.f.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/c.class */
public abstract class AbstractC8293c extends AbstractC8329y {

    /* renamed from: a */
    private final List<AbstractC8329y.AbstractC8330a> f29891a;

    /* renamed from: b */
    private final String f29892b;

    /* renamed from: c */
    private final int f29893c;

    public AbstractC8293c(List<AbstractC8329y.AbstractC8330a> list, String str, int i) {
        Objects.requireNonNull(list, "Null feedbacks");
        this.f29891a = list;
        Objects.requireNonNull(str, "Null wrapperVersion");
        this.f29892b = str;
        this.f29893c = i;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y
    /* renamed from: a */
    public final List<AbstractC8329y.AbstractC8330a> mo25848a() {
        return this.f29891a;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y
    @AbstractC15952b(m7988a = "wrapper_version")
    /* renamed from: b */
    public final String mo25845b() {
        return this.f29892b;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y
    @AbstractC15952b(m7988a = "profile_id")
    /* renamed from: c */
    public final int mo25844c() {
        return this.f29893c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8329y)) {
            return false;
        }
        AbstractC8329y abstractC8329y = (AbstractC8329y) obj;
        if (!this.f29891a.equals(abstractC8329y.mo25848a()) || !this.f29892b.equals(abstractC8329y.mo25845b()) || this.f29893c != abstractC8329y.mo25844c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f29891a.hashCode() ^ 1000003) * 1000003) ^ this.f29892b.hashCode()) * 1000003) ^ this.f29893c;
    }

    public String toString() {
        return "MetricRequest{feedbacks=" + this.f29891a + ", wrapperVersion=" + this.f29892b + ", profileId=" + this.f29893c + "}";
    }
}
