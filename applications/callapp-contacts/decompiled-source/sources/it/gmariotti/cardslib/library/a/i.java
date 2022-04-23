package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import it.gmariotti.cardslib.library.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i.class */
public final class i extends it.gmariotti.cardslib.library.a.a.a {
    public static int i = -1;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f36371a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f36372b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f36373c;

    /* renamed from: d  reason: collision with root package name */
    protected int f36374d;
    protected c e;
    protected d f;
    protected b g;
    protected int h;
    protected a j;
    protected boolean k;
    private boolean l;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$a.class */
    public interface a {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$b.class */
    public interface b {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$c.class */
    public interface c {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$d.class */
    public interface d {
        boolean a();
    }

    public i(Context context) {
        this(context, a.e.inner_base_header);
    }

    public i(Context context, int i2) {
        super(context);
        this.f36371a = false;
        this.f36372b = false;
        this.f36373c = false;
        this.f36374d = i;
        this.h = 0;
        this.j = null;
        this.k = false;
        this.l = false;
        this.mInnerLayout = i2;
        if (i2 == a.e.inner_base_header) {
            this.l = true;
        }
    }

    public final a a() {
        return this.j;
    }

    public final void a(View view) {
        TextView textView;
        if (view != null && (textView = (TextView) view.findViewById(a.c.card_header_inner_simple_title)) != null) {
            textView.setText(this.mTitle);
        }
    }

    public final c b() {
        return this.e;
    }

    public final d c() {
        return this.f;
    }

    public final boolean d() {
        return this.f36371a;
    }

    public final boolean e() {
        return this.f36372b;
    }

    public final int f() {
        return this.f36374d;
    }

    public final boolean g() {
        if (this.g != null) {
            return this.f36373c;
        }
        if (!this.f36373c) {
            return false;
        }
        Log.w("CardHeader", "You set visible=true to other button menu, but you don't add any listener");
        return false;
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
    public final View getInnerView(Context context, ViewGroup viewGroup) {
        if (this.l) {
            if (getParentCard() != null ? getParentCard().isNative() : false) {
                this.mInnerLayout = a.e.native_inner_base_header;
            }
        }
        View innerView = super.getInnerView(context, viewGroup);
        if (innerView != null) {
            viewGroup.addView(innerView);
            if (this.mInnerLayout >= 0) {
                a(innerView);
            }
        }
        return innerView;
    }

    public final b h() {
        return this.g;
    }

    public final int i() {
        return this.h;
    }
}
