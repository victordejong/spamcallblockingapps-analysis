package androidx.core.p008os;

import android.os.LocaleList;
import java.util.Locale;
/* renamed from: androidx.core.os.h */
/* loaded from: classes-dex2jar.jar:androidx/core/os/h.class */
final class C0631h implements AbstractC0630g {

    /* renamed from: a */
    private final LocaleList f3024a;

    public C0631h(LocaleList localeList) {
        this.f3024a = localeList;
    }

    @Override // androidx.core.p008os.AbstractC0630g
    /* renamed from: a */
    public Object mo33187a() {
        return this.f3024a;
    }

    public boolean equals(Object obj) {
        return this.f3024a.equals(((AbstractC0630g) obj).mo33187a());
    }

    @Override // androidx.core.p008os.AbstractC0630g
    public Locale get(int i) {
        return this.f3024a.get(i);
    }

    public int hashCode() {
        return this.f3024a.hashCode();
    }

    public String toString() {
        return this.f3024a.toString();
    }
}
