package androidx.browser.customtabs;

import android.content.ComponentName;
import android.os.IBinder;
import p011c.p014b.p015a.AbstractC0615a;
import p011c.p014b.p015a.AbstractC0616b;
/* renamed from: androidx.browser.customtabs.e */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/e.class */
public final class C0168e {

    /* renamed from: a */
    private final AbstractC0616b f759a;

    /* renamed from: b */
    private final AbstractC0615a f760b;

    /* renamed from: c */
    private final ComponentName f761c;

    public C0168e(AbstractC0616b abstractC0616b, AbstractC0615a abstractC0615a, ComponentName componentName) {
        this.f759a = abstractC0616b;
        this.f760b = abstractC0615a;
        this.f761c = componentName;
    }

    /* renamed from: a */
    public IBinder m14380a() {
        return this.f760b.asBinder();
    }

    /* renamed from: b */
    public ComponentName m14379b() {
        return this.f761c;
    }
}
