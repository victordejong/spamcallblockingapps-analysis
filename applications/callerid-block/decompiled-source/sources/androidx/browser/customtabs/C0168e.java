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

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0168e(AbstractC0616b bVar, AbstractC0615a aVar, ComponentName componentName) {
        this.f759a = bVar;
        this.f760b = aVar;
        this.f761c = componentName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public IBinder m14380a() {
        return this.f760b.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public ComponentName m14379b() {
        return this.f761c;
    }
}
