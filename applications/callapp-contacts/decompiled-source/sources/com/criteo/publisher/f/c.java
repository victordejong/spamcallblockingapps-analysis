package com.criteo.publisher.f;

import com.criteo.publisher.f.y;
import com.google.gson.annotations.b;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/c.class */
public abstract class c extends y {

    /* renamed from: a  reason: collision with root package name */
    private final List<y.a> f17258a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17259b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17260c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(List<y.a> list, String str, int i) {
        Objects.requireNonNull(list, "Null feedbacks");
        this.f17258a = list;
        Objects.requireNonNull(str, "Null wrapperVersion");
        this.f17259b = str;
        this.f17260c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y
    public final List<y.a> a() {
        return this.f17258a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y
    @b(a = "wrapper_version")
    public final String b() {
        return this.f17259b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y
    @b(a = "profile_id")
    public final int c() {
        return this.f17260c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (!this.f17258a.equals(yVar.a()) || !this.f17259b.equals(yVar.b()) || this.f17260c != yVar.c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f17258a.hashCode() ^ 1000003) * 1000003) ^ this.f17259b.hashCode()) * 1000003) ^ this.f17260c;
    }

    public String toString() {
        return "MetricRequest{feedbacks=" + this.f17258a + ", wrapperVersion=" + this.f17259b + ", profileId=" + this.f17260c + "}";
    }
}
