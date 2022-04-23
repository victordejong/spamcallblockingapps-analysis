package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/os/f.class */
final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private final LocaleList f1946a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(LocaleList localeList) {
        this.f1946a = localeList;
    }

    @Override // androidx.core.os.e
    public final Object a() {
        return this.f1946a;
    }

    @Override // androidx.core.os.e
    public final Locale a(int i) {
        return this.f1946a.get(i);
    }

    @Override // androidx.core.os.e
    public final int b() {
        return this.f1946a.size();
    }

    public final boolean equals(Object obj) {
        return this.f1946a.equals(((e) obj).a());
    }

    public final int hashCode() {
        return this.f1946a.hashCode();
    }

    public final String toString() {
        return this.f1946a.toString();
    }
}
