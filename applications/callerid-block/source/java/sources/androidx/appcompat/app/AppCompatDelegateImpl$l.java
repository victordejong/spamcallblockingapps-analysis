package androidx.appcompat.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$l.class */
public abstract class AppCompatDelegateImpl$l {

    /* renamed from: a */
    private BroadcastReceiver f265a;

    /* renamed from: b */
    final /* synthetic */ AppCompatDelegateImpl f266b;

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$l$a.class */
    class C0084a extends BroadcastReceiver {
        C0084a() {
            AppCompatDelegateImpl$l.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AppCompatDelegateImpl$l.this.m14943d();
        }
    }

    AppCompatDelegateImpl$l(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f266b = appCompatDelegateImpl;
    }

    /* renamed from: a */
    void m14946a() {
        BroadcastReceiver broadcastReceiver = this.f265a;
        if (broadcastReceiver != null) {
            try {
                this.f266b.f.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e) {
            }
            this.f265a = null;
        }
    }

    /* renamed from: b */
    abstract IntentFilter m14945b();

    /* renamed from: c */
    abstract int m14944c();

    /* renamed from: d */
    abstract void m14943d();

    /* renamed from: e */
    void m14942e() {
        m14946a();
        IntentFilter m14945b = m14945b();
        if (m14945b == null || m14945b.countActions() == 0) {
            return;
        }
        if (this.f265a == null) {
            this.f265a = new C0084a();
        }
        this.f266b.f.registerReceiver(this.f265a, m14945b);
    }
}
