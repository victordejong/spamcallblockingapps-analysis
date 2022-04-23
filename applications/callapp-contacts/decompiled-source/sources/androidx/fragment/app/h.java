package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.content.b;
import androidx.core.e.d;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public abstract class h<E> extends e {

    /* renamed from: a  reason: collision with root package name */
    private final int f2289a;

    /* renamed from: b  reason: collision with root package name */
    final Activity f2290b;

    /* renamed from: c  reason: collision with root package name */
    final Context f2291c;

    /* renamed from: d  reason: collision with root package name */
    final Handler f2292d;
    final FragmentManager e;

    h(Activity activity, Context context, Handler handler, int i) {
        this.e = new k();
        this.f2290b = activity;
        this.f2291c = (Context) d.a(context, "context == null");
        this.f2292d = (Handler) d.a(handler, "handler == null");
        this.f2289a = i;
    }

    public h(Context context, Handler handler, int i) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    @Override // androidx.fragment.app.e
    public View a(int i) {
        return null;
    }

    public final void a(Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            b.a(this.f2291c, intent, bundle);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    public void a(String str, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.e
    public boolean a() {
        return true;
    }

    public boolean a(String str) {
        return false;
    }

    public boolean b() {
        return true;
    }

    public LayoutInflater c() {
        return LayoutInflater.from(this.f2291c);
    }

    public void d() {
    }

    public abstract E e();
}
