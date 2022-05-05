package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.b.h;
import android.view.LayoutInflater;
import android.view.View;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/l.class */
public abstract class l<E> extends j {

    /* renamed from: b  reason: collision with root package name */
    final Activity f77b;
    final Context c;
    final Handler d;
    final int e;
    final n f;
    h<String, s> g;
    boolean h;
    t i;
    boolean j;
    boolean k;

    private l(Activity activity, Context context, Handler handler) {
        this.f = new n();
        this.f77b = activity;
        this.c = context;
        this.d = handler;
        this.e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(i iVar) {
        this(iVar, iVar, iVar.f70a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final t a(String str, boolean z, boolean z2) {
        if (this.g == null) {
            this.g = new h<>();
        }
        t tVar = (t) this.g.get(str);
        if (tVar != null) {
            tVar.g = this;
        } else if (z2) {
            tVar = new t(str, this, z);
            this.g.put(str, tVar);
        }
        return tVar;
    }

    @Override // android.support.v4.app.j
    public View a(int i) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Fragment fragment) {
    }

    public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.c.startActivity(intent);
    }

    public void a(Fragment fragment, String[] strArr, int i) {
    }

    public void a(String str, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.support.v4.app.j
    public boolean a() {
        return true;
    }

    public boolean a(String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        t tVar;
        if (this.g != null && (tVar = (t) this.g.get(str)) != null && !tVar.f) {
            tVar.g();
            this.g.remove(str);
        }
    }

    public boolean b() {
        return true;
    }

    public LayoutInflater c() {
        return (LayoutInflater) this.c.getSystemService("layout_inflater");
    }

    public void d() {
    }

    public boolean e() {
        return true;
    }

    public int f() {
        return this.e;
    }

    public abstract E g();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h<String, s> h() {
        boolean z;
        if (this.g != null) {
            int size = this.g.size();
            t[] tVarArr = new t[size];
            for (int i = size - 1; i >= 0; i--) {
                tVarArr[i] = (t) this.g.c(i);
            }
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= size) {
                    break;
                }
                t tVar = tVarArr[i2];
                if (tVar.f) {
                    z2 = true;
                } else {
                    tVar.g();
                    this.g.remove(tVar.d);
                }
                i2++;
            }
        } else {
            z = false;
        }
        return z ? this.g : null;
    }
}
