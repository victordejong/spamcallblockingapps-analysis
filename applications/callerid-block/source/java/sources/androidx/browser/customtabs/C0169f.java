package androidx.browser.customtabs;

import android.os.IBinder;
import p011c.p014b.p015a.AbstractC0615a;
/* renamed from: androidx.browser.customtabs.f */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/f.class */
public class C0169f {

    /* renamed from: a */
    final AbstractC0615a f762a;

    C0169f(AbstractC0615a abstractC0615a) {
        this.f762a = abstractC0615a;
    }

    /* renamed from: a */
    public IBinder m14378a() {
        return this.f762a.asBinder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0169f)) {
            return false;
        }
        return ((C0169f) obj).m14378a().equals(this.f762a.asBinder());
    }

    public int hashCode() {
        return m14378a().hashCode();
    }
}
