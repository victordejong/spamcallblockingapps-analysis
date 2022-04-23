package com.facebook.login;

import android.content.ComponentName;
import android.net.Uri;
import androidx.browser.customtabs.c;
import androidx.browser.customtabs.e;
import androidx.browser.customtabs.f;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/a.class */
public final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private static c f20068a;

    /* renamed from: c  reason: collision with root package name */
    private static f f20069c;

    public static f a() {
        f fVar = f20069c;
        f20069c = null;
        return fVar;
    }

    public static void a(Uri uri) {
        if (f20069c == null) {
            b();
        }
        f fVar = f20069c;
        if (fVar != null) {
            fVar.a(uri);
        }
    }

    private static void b() {
        c cVar;
        if (f20069c == null && (cVar = f20068a) != null) {
            f20069c = cVar.b();
        }
    }

    @Override // androidx.browser.customtabs.e
    public final void a(c cVar) {
        f20068a = cVar;
        cVar.a();
        b();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
