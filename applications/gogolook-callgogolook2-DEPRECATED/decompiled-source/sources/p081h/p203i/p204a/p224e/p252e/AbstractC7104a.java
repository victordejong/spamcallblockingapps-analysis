package p081h.p203i.p204a.p224e.p252e;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.LinkedList;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p235d.p240n.C6987f;
import p081h.p203i.p204a.p224e.p252e.AbstractC7109c;
/* renamed from: h.i.a.e.e.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/e/a.class */
public abstract class AbstractC7104a<T extends AbstractC7109c> {

    /* renamed from: a */
    public T f17222a;

    /* renamed from: b */
    public Bundle f17223b;

    /* renamed from: c */
    public LinkedList<AbstractC7105a> f17224c;

    /* renamed from: d */
    public final AbstractC7111e<T> f17225d = new C7114g(this);

    /* renamed from: h.i.a.e.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/e/a$a.class */
    public interface AbstractC7105a {
        /* renamed from: a */
        void mo21055a(AbstractC7109c cVar);

        int getState();
    }

    /* renamed from: a */
    public static void m21071a(FrameLayout frameLayout) {
        C6790c a = C6790c.m21910a();
        Context context = frameLayout.getContext();
        int c = a.mo21883c(context);
        String b = C6987f.m21375b(context, c);
        String a2 = C6987f.m21379a(context, c);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(b);
        linearLayout.addView(textView);
        Intent a3 = a.mo21890a(context, c, (String) null);
        if (a3 != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(a2);
            linearLayout.addView(button);
            button.setOnClickListener(new View$OnClickListenerC7116i(context, a3));
        }
    }

    /* renamed from: a */
    public T m21075a() {
        return this.f17222a;
    }

    /* renamed from: a */
    public final void m21074a(int i) {
        while (!this.f17224c.isEmpty() && this.f17224c.getLast().getState() >= i) {
            this.f17224c.removeLast();
        }
    }

    /* renamed from: a */
    public void m21073a(Bundle bundle) {
        m21072a(bundle, new C7115h(this, bundle));
    }

    /* renamed from: a */
    public final void m21072a(Bundle bundle, AbstractC7105a aVar) {
        T t = this.f17222a;
        if (t != null) {
            aVar.mo21055a(t);
            return;
        }
        if (this.f17224c == null) {
            this.f17224c = new LinkedList<>();
        }
        this.f17224c.add(aVar);
        if (bundle != null) {
            Bundle bundle2 = this.f17223b;
            if (bundle2 == null) {
                this.f17223b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        mo21067a(this.f17225d);
    }

    /* renamed from: a */
    public abstract void mo21067a(AbstractC7111e<T> eVar);

    /* renamed from: b */
    public void m21066b() {
        T t = this.f17222a;
        if (t != null) {
            t.onDestroy();
        } else {
            m21074a(1);
        }
    }

    /* renamed from: c */
    public void m21064c() {
        T t = this.f17222a;
        if (t != null) {
            t.onPause();
        } else {
            m21074a(5);
        }
    }

    /* renamed from: d */
    public void m21063d() {
        m21072a((Bundle) null, new C7118k(this));
    }

    /* renamed from: e */
    public void m21062e() {
        m21072a((Bundle) null, new C7117j(this));
    }

    /* renamed from: f */
    public void m21061f() {
        T t = this.f17222a;
        if (t != null) {
            t.onStop();
        } else {
            m21074a(4);
        }
    }
}
