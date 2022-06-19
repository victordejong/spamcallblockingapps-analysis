package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.content.C0586a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p020b.p041h.p049k.C1597h;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public abstract class AbstractC0738h<E> extends AbstractC0735e {

    /* renamed from: d */
    private final Activity f3505d;

    /* renamed from: e */
    private final Context f3506e;

    /* renamed from: f */
    private final Handler f3507f;

    /* renamed from: g */
    private final int f3508g;

    /* renamed from: h */
    final FragmentManager f3509h;

    AbstractC0738h(Activity activity, Context context, Handler handler, int i) {
        this.f3509h = new C0743k();
        this.f3505d = activity;
        this.f3506e = (Context) C1597h.m29658f(context, "context == null");
        this.f3507f = (Handler) C1597h.m29658f(handler, "handler == null");
        this.f3508g = i;
    }

    public AbstractC0738h(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    @Override // androidx.fragment.app.AbstractC0735e
    /* renamed from: e */
    public View mo32596e(int i) {
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0735e
    /* renamed from: f */
    public boolean mo32595f() {
        return true;
    }

    /* renamed from: g */
    public Activity m32594g() {
        return this.f3505d;
    }

    /* renamed from: h */
    public Context m32593h() {
        return this.f3506e;
    }

    /* renamed from: i */
    public Handler m32592i() {
        return this.f3507f;
    }

    /* renamed from: k */
    public void mo32591k(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: l */
    public abstract E mo32590l();

    /* renamed from: m */
    public LayoutInflater mo32589m() {
        return LayoutInflater.from(this.f3506e);
    }

    /* renamed from: n */
    public boolean mo32588n(Fragment fragment) {
        return true;
    }

    /* renamed from: o */
    public void m32587o(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            C0586a.m33343k(this.f3506e, intent, bundle);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: q */
    public void mo32586q() {
    }
}
