package p221r5;

import android.support.p012v4.media.C0082b;
import java.util.Collections;
import java.util.Map;
/* renamed from: r5.c */
/* loaded from: classes-dex2jar.jar:r5/c.class */
public final class C4210c {

    /* renamed from: a */
    public final String f13204a;

    /* renamed from: b */
    public final Map<Class<?>, Object> f13205b;

    public C4210c(String str, Map<Class<?>, Object> map) {
        this.f13204a = str;
        this.f13205b = map;
    }

    /* renamed from: a */
    public static C4210c m1286a(String str) {
        return new C4210c(str, Collections.emptyMap());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4210c)) {
            return false;
        }
        C4210c c4210c = (C4210c) obj;
        if (!this.f13204a.equals(c4210c.f13204a) || !this.f13205b.equals(c4210c.f13205b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f13205b.hashCode() + (this.f13204a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("FieldDescriptor{name=");
        m8752j.append(this.f13204a);
        m8752j.append(", properties=");
        m8752j.append(this.f13205b.values());
        m8752j.append("}");
        return m8752j.toString();
    }
}
