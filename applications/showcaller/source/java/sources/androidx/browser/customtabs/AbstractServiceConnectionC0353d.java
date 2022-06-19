package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import p000a.p001a.p002a.AbstractC0003b;
/* renamed from: androidx.browser.customtabs.d */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d.class */
public abstract class AbstractServiceConnectionC0353d implements ServiceConnection {

    /* renamed from: androidx.browser.customtabs.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d$a.class */
    class C0354a extends C0344b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0354a(AbstractC0003b abstractC0003b, ComponentName componentName) {
            super(abstractC0003b, componentName);
            AbstractServiceConnectionC0353d.this = r5;
        }
    }

    /* renamed from: a */
    public abstract void mo11438a(ComponentName componentName, C0344b c0344b);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        mo11438a(componentName, new C0354a(AbstractC0003b.AbstractBinderC0004a.m35936c0(iBinder), componentName));
    }
}
