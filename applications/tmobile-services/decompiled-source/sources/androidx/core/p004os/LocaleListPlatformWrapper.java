package androidx.core.p004os;

import android.os.LocaleList;
import androidx.annotation.RequiresApi;
@RequiresApi
/* renamed from: androidx.core.os.LocaleListPlatformWrapper */
/* loaded from: classes-dex2jar.jar:androidx/core/os/LocaleListPlatformWrapper.class */
final class LocaleListPlatformWrapper implements LocaleListInterface {

    /* renamed from: a */
    private final LocaleList f3093a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocaleListPlatformWrapper(LocaleList localeList) {
        this.f3093a = localeList;
    }

    @Override // androidx.core.p004os.LocaleListInterface
    /* renamed from: a */
    public Object mo19439a() {
        return this.f3093a;
    }

    public boolean equals(Object obj) {
        return this.f3093a.equals(((LocaleListInterface) obj).mo19439a());
    }

    public int hashCode() {
        return this.f3093a.hashCode();
    }

    public String toString() {
        return this.f3093a.toString();
    }
}
