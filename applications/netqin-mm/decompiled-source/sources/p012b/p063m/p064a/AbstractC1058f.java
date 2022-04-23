package p012b.p063m.p064a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p012b.p042i.p053o.C0948h;
/* renamed from: b.m.a.f */
/* loaded from: classes-dex2jar.jar:b/m/a/f.class */
public abstract class AbstractC1058f<E> extends AbstractC1055c {

    /* renamed from: a */
    public final Activity f4435a;

    /* renamed from: b */
    public final Context f4436b;

    /* renamed from: c */
    public final Handler f4437c;

    /* renamed from: d */
    public final int f4438d;

    /* renamed from: e */
    public final LayoutInflater$Factory2C1062h f4439e;

    public AbstractC1058f(Activity activity, Context context, Handler handler, int i) {
        this.f4439e = new LayoutInflater$Factory2C1062h();
        this.f4435a = activity;
        C0948h.m35441a(context, "context == null");
        this.f4436b = context;
        C0948h.m35441a(handler, "handler == null");
        this.f4437c = handler;
        this.f4438d = i;
    }

    public AbstractC1058f(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    @Override // p012b.p063m.p064a.AbstractC1055c
    /* renamed from: a */
    public View mo34919a(int i) {
        return null;
    }

    /* renamed from: a */
    public void mo34918a(Fragment fragment) {
    }

    /* renamed from: a */
    public void mo34917a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            this.f4436b.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: a */
    public void mo34916a(Fragment fragment, String[] strArr, int i) {
    }

    /* renamed from: a */
    public void mo34914a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: a */
    public boolean mo34915a(String str) {
        return false;
    }

    /* renamed from: b */
    public boolean mo34913b(Fragment fragment) {
        return true;
    }

    @Override // p012b.p063m.p064a.AbstractC1055c
    /* renamed from: c */
    public boolean mo34912c() {
        return true;
    }

    /* renamed from: f */
    public Activity m34911f() {
        return this.f4435a;
    }

    /* renamed from: g */
    public Context m34910g() {
        return this.f4436b;
    }

    /* renamed from: h */
    public Handler m34909h() {
        return this.f4437c;
    }

    /* renamed from: i */
    public abstract E mo34908i();

    /* renamed from: j */
    public LayoutInflater mo34907j() {
        return LayoutInflater.from(this.f4436b);
    }

    /* renamed from: k */
    public int mo34906k() {
        return this.f4438d;
    }

    /* renamed from: l */
    public boolean mo34905l() {
        return true;
    }

    /* renamed from: m */
    public void mo34904m() {
    }
}
