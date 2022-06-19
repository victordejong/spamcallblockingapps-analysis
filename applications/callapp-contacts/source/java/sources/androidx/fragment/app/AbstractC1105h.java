package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.content.C0790b;
import androidx.core.p036e.C0833d;
import java.io.PrintWriter;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public abstract class AbstractC1105h<E> extends AbstractC1102e {

    /* renamed from: a */
    private final int f4358a;

    /* renamed from: b */
    final Activity f4359b;

    /* renamed from: c */
    final Context f4360c;

    /* renamed from: d */
    final Handler f4361d;

    /* renamed from: e */
    final FragmentManager f4362e;

    AbstractC1105h(Activity activity, Context context, Handler handler, int i) {
        this.f4362e = new C1110k();
        this.f4359b = activity;
        this.f4360c = (Context) C0833d.m44409a(context, "context == null");
        this.f4361d = (Handler) C0833d.m44409a(handler, "handler == null");
        this.f4358a = i;
    }

    public AbstractC1105h(Context context, Handler handler, int i) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i);
    }

    public AbstractC1105h(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    @Override // androidx.fragment.app.AbstractC1102e
    /* renamed from: a */
    public View mo43613a(int i) {
        return null;
    }

    /* renamed from: a */
    public final void m43612a(Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            C0790b.m44500a(this.f4360c, intent, bundle);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: a */
    public void mo43610a(String str, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.AbstractC1102e
    /* renamed from: a */
    public boolean mo43614a() {
        return true;
    }

    /* renamed from: a */
    public boolean mo43611a(String str) {
        return false;
    }

    /* renamed from: b */
    public boolean mo43609b() {
        return true;
    }

    /* renamed from: c */
    public LayoutInflater mo43608c() {
        return LayoutInflater.from(this.f4360c);
    }

    /* renamed from: d */
    public void mo43607d() {
    }

    /* renamed from: e */
    public abstract E mo43606e();
}
