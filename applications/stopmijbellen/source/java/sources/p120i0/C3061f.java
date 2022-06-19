package p120i0;

import android.os.LocaleList;
import java.util.Locale;
/* renamed from: i0.f */
/* loaded from: classes-dex2jar.jar:i0/f.class */
public final class C3061f implements AbstractC3060e {

    /* renamed from: a */
    public final LocaleList f10395a;

    public C3061f(LocaleList localeList) {
        this.f10395a = localeList;
    }

    @Override // p120i0.AbstractC3060e
    /* renamed from: a */
    public Object mo2663a() {
        return this.f10395a;
    }

    public boolean equals(Object obj) {
        return this.f10395a.equals(((AbstractC3060e) obj).mo2663a());
    }

    @Override // p120i0.AbstractC3060e
    public Locale get(int i) {
        return this.f10395a.get(i);
    }

    public int hashCode() {
        return this.f10395a.hashCode();
    }

    public String toString() {
        return this.f10395a.toString();
    }
}
