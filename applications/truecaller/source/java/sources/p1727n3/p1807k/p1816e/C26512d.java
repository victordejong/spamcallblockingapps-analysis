package p1727n3.p1807k.p1816e;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
/* renamed from: n3.k.e.d */
/* loaded from: classes-dex2jar.jar:n3/k/e/d.class */
public final class C26512d {

    /* renamed from: b */
    public static final /* synthetic */ int f74300b = 0;

    /* renamed from: a */
    public AbstractC26514f f74301a;

    static {
        m1719a(new Locale[0]);
    }

    public C26512d(AbstractC26514f abstractC26514f) {
        this.f74301a = abstractC26514f;
    }

    /* renamed from: a */
    public static C26512d m1719a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new C26512d(new C26515g(new LocaleList(localeArr))) : new C26512d(new C26513e(localeArr));
    }

    /* renamed from: b */
    public Locale m1718b(int i) {
        return this.f74301a.get(i);
    }

    /* renamed from: c */
    public int m1717c() {
        return this.f74301a.size();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C26512d) && this.f74301a.equals(((C26512d) obj).f74301a);
    }

    public int hashCode() {
        return this.f74301a.hashCode();
    }

    public String toString() {
        return this.f74301a.toString();
    }
}
