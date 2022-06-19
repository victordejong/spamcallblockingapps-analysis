package androidx.browser.customtabs;

import android.content.ComponentName;
import android.os.IBinder;
import p000a.p001a.p002a.AbstractC0000a;
import p000a.p001a.p002a.AbstractC0003b;
/* renamed from: androidx.browser.customtabs.e */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/e.class */
public final class C0355e {

    /* renamed from: a */
    private final Object f1478a = new Object();

    /* renamed from: b */
    private final AbstractC0003b f1479b;

    /* renamed from: c */
    private final AbstractC0000a f1480c;

    /* renamed from: d */
    private final ComponentName f1481d;

    public C0355e(AbstractC0003b abstractC0003b, AbstractC0000a abstractC0000a, ComponentName componentName) {
        this.f1479b = abstractC0003b;
        this.f1480c = abstractC0000a;
        this.f1481d = componentName;
    }

    /* renamed from: a */
    public IBinder m34652a() {
        return this.f1480c.asBinder();
    }

    /* renamed from: b */
    public ComponentName m34651b() {
        return this.f1481d;
    }
}
