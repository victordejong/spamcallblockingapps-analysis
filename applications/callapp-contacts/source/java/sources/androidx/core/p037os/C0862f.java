package androidx.core.p037os;

import android.os.LocaleList;
import java.util.Locale;
/* renamed from: androidx.core.os.f */
/* loaded from: classes-dex2jar.jar:androidx/core/os/f.class */
final class C0862f implements AbstractC0861e {

    /* renamed from: a */
    private final LocaleList f3630a;

    public C0862f(LocaleList localeList) {
        this.f3630a = localeList;
    }

    @Override // androidx.core.p037os.AbstractC0861e
    /* renamed from: a */
    public final Object mo44293a() {
        return this.f3630a;
    }

    @Override // androidx.core.p037os.AbstractC0861e
    /* renamed from: a */
    public final Locale mo44292a(int i) {
        return this.f3630a.get(i);
    }

    @Override // androidx.core.p037os.AbstractC0861e
    /* renamed from: b */
    public final int mo44291b() {
        return this.f3630a.size();
    }

    public final boolean equals(Object obj) {
        return this.f3630a.equals(((AbstractC0861e) obj).mo44293a());
    }

    public final int hashCode() {
        return this.f3630a.hashCode();
    }

    public final String toString() {
        return this.f3630a.toString();
    }
}
