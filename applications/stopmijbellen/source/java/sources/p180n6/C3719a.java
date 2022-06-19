package p180n6;

import android.os.Bundle;
import p104g6.C2905a;
/* renamed from: n6.a */
/* loaded from: classes-dex2jar.jar:n6/a.class */
public final class C3719a {

    /* renamed from: b */
    public static final C2905a f12107b = C2905a.m2869b();

    /* renamed from: a */
    public final Bundle f12108a;

    public C3719a() {
        this.f12108a = (Bundle) new Bundle().clone();
    }

    public C3719a(Bundle bundle) {
        this.f12108a = (Bundle) bundle.clone();
    }

    /* renamed from: a */
    public boolean m1846a(String str) {
        return str != null && this.f12108a.containsKey(str);
    }
}
