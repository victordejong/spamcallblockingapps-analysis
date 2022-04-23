package androidx.browser.trusted;

import android.content.pm.PackageManager;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final d f1253a;

    private c(d dVar) {
        this.f1253a = dVar;
    }

    public final boolean a(String str, PackageManager packageManager) {
        return b.a(str, packageManager, this.f1253a);
    }
}
