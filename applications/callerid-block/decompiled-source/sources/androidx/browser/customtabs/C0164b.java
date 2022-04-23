package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.text.TextUtils;
import p011c.p014b.p015a.AbstractC0615a;
import p011c.p014b.p015a.AbstractC0616b;
/* renamed from: androidx.browser.customtabs.b */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b.class */
public class C0164b {

    /* renamed from: a */
    private final AbstractC0616b f734a;

    /* renamed from: b */
    private final ComponentName f735b;

    C0164b(AbstractC0616b bVar, ComponentName componentName) {
        this.f734a = bVar;
        this.f735b = componentName;
    }

    /* renamed from: a */
    public static boolean m14386a(Context context, String str, AbstractServiceConnectionC0167d dVar) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, dVar, 33);
    }

    /* renamed from: b */
    public C0168e m14385b(C0163a aVar) {
        AbstractC0615a aVar2 = new a(this, aVar);
        C0168e eVar = null;
        if (!this.f734a.m11560d2(aVar2)) {
            return null;
        }
        eVar = new C0168e(this.f734a, aVar2, this.f735b);
        return eVar;
    }

    /* renamed from: c */
    public boolean m14384c(long j) {
        try {
            return this.f734a.m11556s5(j);
        } catch (RemoteException e) {
            return false;
        }
    }
}
