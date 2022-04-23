package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.dynamic.c;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/a.class */
public abstract class a<T extends c> {

    /* renamed from: a  reason: collision with root package name */
    public T f22960a;

    /* renamed from: b  reason: collision with root package name */
    Bundle f22961b;

    /* renamed from: c  reason: collision with root package name */
    LinkedList<m> f22962c;

    /* renamed from: d  reason: collision with root package name */
    private final e<T> f22963d = new f(this);

    private final void a(int i) {
        while (!this.f22962c.isEmpty() && this.f22962c.getLast().a() >= i) {
            this.f22962c.removeLast();
        }
    }

    private final void a(Bundle bundle, m mVar) {
        if (this.f22960a != null) {
            mVar.b();
            return;
        }
        if (this.f22962c == null) {
            this.f22962c = new LinkedList<>();
        }
        this.f22962c.add(mVar);
        if (bundle != null) {
            Bundle bundle2 = this.f22961b;
            if (bundle2 == null) {
                this.f22961b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        a(this.f22963d);
    }

    public static void a(FrameLayout frameLayout) {
        b a2 = b.a();
        Context context = frameLayout.getContext();
        int a3 = a2.a(context);
        String c2 = y.c(context, a3);
        String e = y.e(context, a3);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(c2);
        linearLayout.addView(textView);
        Intent a4 = a2.a(context, a3, (String) null);
        if (a4 != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(e);
            linearLayout.addView(button);
            button.setOnClickListener(new j(context, a4));
        }
    }

    public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        a(bundle, new i(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f22960a == null) {
            a(frameLayout);
        }
        return frameLayout;
    }

    public final void a() {
        a(null, new k(this));
    }

    public final void a(Activity activity, Bundle bundle, Bundle bundle2) {
        a(bundle2, new g(this, activity, bundle, bundle2));
    }

    public final void a(Bundle bundle) {
        a(bundle, new h(this, bundle));
    }

    protected abstract void a(e<T> eVar);

    public final void b() {
        a(null, new l(this));
    }

    public final void b(Bundle bundle) {
        T t = this.f22960a;
        if (t != null) {
            t.b(bundle);
            return;
        }
        Bundle bundle2 = this.f22961b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    public final void c() {
        T t = this.f22960a;
        if (t != null) {
            t.c();
        } else {
            a(5);
        }
    }

    public final void d() {
        T t = this.f22960a;
        if (t != null) {
            t.d();
        } else {
            a(4);
        }
    }

    public final void e() {
        T t = this.f22960a;
        if (t != null) {
            t.e();
        } else {
            a(2);
        }
    }

    public final void f() {
        T t = this.f22960a;
        if (t != null) {
            t.f();
        } else {
            a(1);
        }
    }

    public final void g() {
        T t = this.f22960a;
        if (t != null) {
            t.g();
        }
    }
}
