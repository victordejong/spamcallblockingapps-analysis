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
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.internal.C12058y;
import com.google.android.gms.dynamic.AbstractC12128c;
import java.util.LinkedList;
/* renamed from: com.google.android.gms.dynamic.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/a.class */
public abstract class AbstractC12125a<T extends AbstractC12128c> {

    /* renamed from: a */
    public T f39650a;

    /* renamed from: b */
    Bundle f39651b;

    /* renamed from: c */
    LinkedList<AbstractC12138m> f39652c;

    /* renamed from: d */
    private final AbstractC12130e<T> f39653d = new C12131f(this);

    /* renamed from: a */
    private final void m18994a(int i) {
        while (!this.f39652c.isEmpty() && this.f39652c.getLast().mo18977a() >= i) {
            this.f39652c.removeLast();
        }
    }

    /* renamed from: a */
    private final void m18991a(Bundle bundle, AbstractC12138m abstractC12138m) {
        if (this.f39650a != null) {
            abstractC12138m.mo18976b();
            return;
        }
        if (this.f39652c == null) {
            this.f39652c = new LinkedList<>();
        }
        this.f39652c.add(abstractC12138m);
        if (bundle != null) {
            Bundle bundle2 = this.f39651b;
            if (bundle2 == null) {
                this.f39651b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        mo12149a(this.f39653d);
    }

    /* renamed from: a */
    public static void m18989a(FrameLayout frameLayout) {
        C11937b m19287a = C11937b.m19287a();
        Context context = frameLayout.getContext();
        int mo19275a = m19287a.mo19275a(context);
        String m19082c = C12058y.m19082c(context, mo19275a);
        String m19080e = C12058y.m19080e(context, mo19275a);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(m19082c);
        linearLayout.addView(textView);
        Intent mo19272a = m19287a.mo19272a(context, mo19275a, (String) null);
        if (mo19272a != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(m19080e);
            linearLayout.addView(button);
            button.setOnClickListener(new View$OnClickListenerC12135j(context, mo19272a));
        }
    }

    /* renamed from: a */
    public final View m18990a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        m18991a(bundle, new C12134i(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f39650a == null) {
            m18989a(frameLayout);
        }
        return frameLayout;
    }

    /* renamed from: a */
    public final void m18995a() {
        m18991a(null, new C12136k(this));
    }

    /* renamed from: a */
    public final void m18993a(Activity activity, Bundle bundle, Bundle bundle2) {
        m18991a(bundle2, new C12132g(this, activity, bundle, bundle2));
    }

    /* renamed from: a */
    public final void m18992a(Bundle bundle) {
        m18991a(bundle, new C12133h(this, bundle));
    }

    /* renamed from: a */
    protected abstract void mo12149a(AbstractC12130e<T> abstractC12130e);

    /* renamed from: b */
    public final void m18988b() {
        m18991a(null, new C12137l(this));
    }

    /* renamed from: b */
    public final void m18987b(Bundle bundle) {
        T t = this.f39650a;
        if (t != null) {
            t.mo12156b(bundle);
            return;
        }
        Bundle bundle2 = this.f39651b;
        if (bundle2 == null) {
            return;
        }
        bundle.putAll(bundle2);
    }

    /* renamed from: c */
    public final void m18986c() {
        T t = this.f39650a;
        if (t != null) {
            t.mo12155c();
        } else {
            m18994a(5);
        }
    }

    /* renamed from: d */
    public final void m18985d() {
        T t = this.f39650a;
        if (t != null) {
            t.mo12154d();
        } else {
            m18994a(4);
        }
    }

    /* renamed from: e */
    public final void m18984e() {
        T t = this.f39650a;
        if (t != null) {
            t.mo12153e();
        } else {
            m18994a(2);
        }
    }

    /* renamed from: f */
    public final void m18983f() {
        T t = this.f39650a;
        if (t != null) {
            t.mo12152f();
        } else {
            m18994a(1);
        }
    }

    /* renamed from: g */
    public final void m18982g() {
        T t = this.f39650a;
        if (t != null) {
            t.mo12151g();
        }
    }
}
