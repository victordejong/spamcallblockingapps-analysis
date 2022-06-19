package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.p025g.C0527f;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public abstract class AbstractC0669h<E> extends AbstractC0666e {

    /* renamed from: a */
    private final Activity f2369a;

    /* renamed from: b */
    final LayoutInflater$Factory2C0673j f2370b;

    /* renamed from: c */
    private final Context f2371c;

    /* renamed from: d */
    private final Handler f2372d;

    /* renamed from: e */
    private final int f2373e;

    AbstractC0669h(Activity activity, Context context, Handler handler, int i) {
        this.f2370b = new LayoutInflater$Factory2C0673j();
        this.f2369a = activity;
        this.f2371c = (Context) C0527f.m20643a(context, "context == null");
        this.f2372d = (Handler) C0527f.m20643a(handler, "handler == null");
        this.f2373e = i;
    }

    public AbstractC0669h(ActivityC0664d activityC0664d) {
        this(activityC0664d, activityC0664d, new Handler(), 0);
    }

    @Override // androidx.fragment.app.AbstractC0666e
    /* renamed from: a */
    public View mo19840a(int i) {
        return null;
    }

    /* renamed from: a */
    public void mo19838a(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.f2371c.startActivity(intent);
    }

    /* renamed from: a */
    public void mo19837a(Fragment fragment, String[] strArr, int i) {
    }

    /* renamed from: a */
    public void mo19836a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.AbstractC0666e
    /* renamed from: a */
    public boolean mo19841a() {
        return true;
    }

    /* renamed from: a */
    public boolean mo19839a(Fragment fragment) {
        return true;
    }

    /* renamed from: b */
    public void mo19835b(Fragment fragment) {
    }

    /* renamed from: e */
    public LayoutInflater mo19834e() {
        return LayoutInflater.from(this.f2371c);
    }

    /* renamed from: g */
    public void mo19833g() {
    }

    /* renamed from: h */
    public boolean mo19832h() {
        return true;
    }

    /* renamed from: i */
    public int mo19831i() {
        return this.f2373e;
    }

    /* renamed from: j */
    public abstract E mo19830j();

    /* renamed from: k */
    public Activity m19829k() {
        return this.f2369a;
    }

    /* renamed from: l */
    public Context m19828l() {
        return this.f2371c;
    }

    /* renamed from: m */
    public Handler m19827m() {
        return this.f2372d;
    }
}
