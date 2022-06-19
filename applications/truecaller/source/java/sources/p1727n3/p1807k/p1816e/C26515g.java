package p1727n3.p1807k.p1816e;

import android.os.LocaleList;
import java.util.Locale;
/* renamed from: n3.k.e.g */
/* loaded from: classes-dex2jar.jar:n3/k/e/g.class */
public final class C26515g implements AbstractC26514f {

    /* renamed from: a */
    public final LocaleList f74304a;

    public C26515g(LocaleList localeList) {
        this.f74304a = localeList;
    }

    @Override // p1727n3.p1807k.p1816e.AbstractC26514f
    /* renamed from: a */
    public Object mo1716a() {
        return this.f74304a;
    }

    public boolean equals(Object obj) {
        return this.f74304a.equals(((AbstractC26514f) obj).mo1716a());
    }

    @Override // p1727n3.p1807k.p1816e.AbstractC26514f
    public Locale get(int i) {
        return this.f74304a.get(i);
    }

    public int hashCode() {
        return this.f74304a.hashCode();
    }

    @Override // p1727n3.p1807k.p1816e.AbstractC26514f
    public int size() {
        return this.f74304a.size();
    }

    public String toString() {
        return this.f74304a.toString();
    }
}
