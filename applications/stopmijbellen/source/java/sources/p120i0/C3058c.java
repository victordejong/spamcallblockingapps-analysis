package p120i0;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
/* renamed from: i0.c */
/* loaded from: classes-dex2jar.jar:i0/c.class */
public final class C3058c {

    /* renamed from: b */
    public static final /* synthetic */ int f10391b = 0;

    /* renamed from: a */
    public AbstractC3060e f10392a;

    static {
        m2664a(new Locale[0]);
    }

    public C3058c(AbstractC3060e abstractC3060e) {
        this.f10392a = abstractC3060e;
    }

    /* renamed from: a */
    public static C3058c m2664a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new C3058c(new C3061f(new LocaleList(localeArr))) : new C3058c(new C3059d(localeArr));
    }

    public boolean equals(Object obj) {
        return (obj instanceof C3058c) && this.f10392a.equals(((C3058c) obj).f10392a);
    }

    public int hashCode() {
        return this.f10392a.hashCode();
    }

    public String toString() {
        return this.f10392a.toString();
    }
}
