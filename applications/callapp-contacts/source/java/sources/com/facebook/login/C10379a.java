package com.facebook.login;

import android.content.ComponentName;
import android.net.Uri;
import androidx.browser.customtabs.AbstractServiceConnectionC0460e;
import androidx.browser.customtabs.C0450c;
import androidx.browser.customtabs.C0462f;
/* renamed from: com.facebook.login.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/a.class */
public final class C10379a extends AbstractServiceConnectionC0460e {

    /* renamed from: a */
    private static C0450c f34006a;

    /* renamed from: c */
    private static C0462f f34007c;

    /* renamed from: a */
    public static C0462f m22898a() {
        C0462f c0462f = f34007c;
        f34007c = null;
        return c0462f;
    }

    /* renamed from: a */
    public static void m22897a(Uri uri) {
        if (f34007c == null) {
            m22896b();
        }
        C0462f c0462f = f34007c;
        if (c0462f != null) {
            c0462f.m45464a(uri);
        }
    }

    /* renamed from: b */
    private static void m22896b() {
        C0450c c0450c;
        if (f34007c != null || (c0450c = f34006a) == null) {
            return;
        }
        f34007c = c0450c.m45474b();
    }

    @Override // androidx.browser.customtabs.AbstractServiceConnectionC0460e
    /* renamed from: a */
    public final void mo15754a(C0450c c0450c) {
        f34006a = c0450c;
        c0450c.m45478a();
        m22896b();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
