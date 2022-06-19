package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.C0427a;
import androidx.core.p022f.C0502e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public abstract class AbstractC0716g<E> extends AbstractC0713d {

    /* renamed from: a */
    private final Activity f2331a;

    /* renamed from: b */
    final LayoutInflater$Factory2C0720i f2332b;

    /* renamed from: c */
    private final Context f2333c;

    /* renamed from: d */
    private final Handler f2334d;

    /* renamed from: e */
    private final int f2335e;

    AbstractC0716g(Activity activity, Context context, Handler handler, int i) {
        this.f2332b = new LayoutInflater$Factory2C0720i();
        this.f2331a = activity;
        this.f2333c = (Context) C0502e.m6461a(context, "context == null");
        this.f2334d = (Handler) C0502e.m6461a(handler, "handler == null");
        this.f2335e = i;
    }

    public AbstractC0716g(ActivityC0711c activityC0711c) {
        this(activityC0711c, activityC0711c, new Handler(), 0);
    }

    @Override // androidx.fragment.app.AbstractC0713d
    /* renamed from: a */
    public View mo5632a(int i) {
        return null;
    }

    /* renamed from: a */
    public void mo5630a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            this.f2333c.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: a */
    public void mo5629a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i == -1) {
            C0427a.m6676a(this.f2331a, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: a */
    public void mo5628a(Fragment fragment, String[] strArr, int i) {
    }

    /* renamed from: a */
    public void mo5626a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.AbstractC0713d
    /* renamed from: a */
    public boolean mo5633a() {
        return true;
    }

    /* renamed from: a */
    public boolean mo5631a(Fragment fragment) {
        return true;
    }

    /* renamed from: a */
    public boolean mo5627a(String str) {
        return false;
    }

    /* renamed from: b */
    public void mo5625b(Fragment fragment) {
    }

    /* renamed from: c */
    public LayoutInflater mo5624c() {
        return LayoutInflater.from(this.f2333c);
    }

    /* renamed from: e */
    public void mo5623e() {
    }

    /* renamed from: f */
    public boolean mo5622f() {
        return true;
    }

    /* renamed from: g */
    public int mo5621g() {
        return this.f2335e;
    }

    /* renamed from: h */
    public abstract E mo5620h();

    /* renamed from: i */
    public Activity m5619i() {
        return this.f2331a;
    }

    /* renamed from: j */
    public Context m5618j() {
        return this.f2333c;
    }

    /* renamed from: k */
    public Handler m5617k() {
        return this.f2334d;
    }
}
