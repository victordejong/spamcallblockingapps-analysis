package p000;

import android.os.Build;
/* renamed from: f91 */
/* loaded from: classes3-dex2jar.jar:f91.class */
public class f91 extends c91 {
    @Override // p000.c91
    /* renamed from: a */
    public int mo1915a(int i) {
        if (i == 5 || i == 6) {
            return 3;
        }
        return i;
    }

    @Override // p000.c91
    /* renamed from: d */
    public String mo1914d() {
        return "Samsung";
    }

    @Override // p000.c91
    /* renamed from: f */
    public boolean mo1913f() {
        return Build.BRAND.toLowerCase().contains("samsung") || Build.MANUFACTURER.toLowerCase().contains("samsung");
    }
}
