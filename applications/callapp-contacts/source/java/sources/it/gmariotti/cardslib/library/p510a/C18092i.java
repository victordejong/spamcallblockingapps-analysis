package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a;
/* renamed from: it.gmariotti.cardslib.library.a.i */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i.class */
public final class C18092i extends AbstractC18070a {

    /* renamed from: i */
    public static int f63021i = -1;

    /* renamed from: a */
    protected boolean f63022a;

    /* renamed from: b */
    protected boolean f63023b;

    /* renamed from: c */
    protected boolean f63024c;

    /* renamed from: d */
    protected int f63025d;

    /* renamed from: e */
    protected AbstractC18095c f63026e;

    /* renamed from: f */
    protected AbstractC18096d f63027f;

    /* renamed from: g */
    protected AbstractC18094b f63028g;

    /* renamed from: h */
    protected int f63029h;

    /* renamed from: j */
    protected AbstractC18093a f63030j;

    /* renamed from: k */
    protected boolean f63031k;

    /* renamed from: l */
    private boolean f63032l;

    /* renamed from: it.gmariotti.cardslib.library.a.i$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$a.class */
    public interface AbstractC18093a {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.i$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$b.class */
    public interface AbstractC18094b {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.i$c */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$c.class */
    public interface AbstractC18095c {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.i$d */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/i$d.class */
    public interface AbstractC18096d {
        /* renamed from: a */
        boolean m4456a();
    }

    public C18092i(Context context) {
        this(context, C18061a.C18066e.inner_base_header);
    }

    public C18092i(Context context, int i) {
        super(context);
        this.f63022a = false;
        this.f63023b = false;
        this.f63024c = false;
        this.f63025d = f63021i;
        this.f63029h = 0;
        this.f63030j = null;
        this.f63031k = false;
        this.f63032l = false;
        this.mInnerLayout = i;
        if (i == C18061a.C18066e.inner_base_header) {
            this.f63032l = true;
        }
    }

    /* renamed from: a */
    public final AbstractC18093a m4466a() {
        return this.f63030j;
    }

    /* renamed from: a */
    public final void m4465a(View view) {
        TextView textView;
        if (view == null || (textView = (TextView) view.findViewById(C18061a.C18064c.card_header_inner_simple_title)) == null) {
            return;
        }
        textView.setText(this.mTitle);
    }

    /* renamed from: b */
    public final AbstractC18095c m4464b() {
        return this.f63026e;
    }

    /* renamed from: c */
    public final AbstractC18096d m4463c() {
        return this.f63027f;
    }

    /* renamed from: d */
    public final boolean m4462d() {
        return this.f63022a;
    }

    /* renamed from: e */
    public final boolean m4461e() {
        return this.f63023b;
    }

    /* renamed from: f */
    public final int m4460f() {
        return this.f63025d;
    }

    /* renamed from: g */
    public final boolean m4459g() {
        if (this.f63028g == null) {
            if (!this.f63024c) {
                return false;
            }
            Log.w("CardHeader", "You set visible=true to other button menu, but you don't add any listener");
            return false;
        }
        return this.f63024c;
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public final View getInnerView(Context context, ViewGroup viewGroup) {
        if (this.f63032l) {
            if (getParentCard() != null ? getParentCard().isNative() : false) {
                this.mInnerLayout = C18061a.C18066e.native_inner_base_header;
            }
        }
        View innerView = super.getInnerView(context, viewGroup);
        if (innerView != null) {
            viewGroup.addView(innerView);
            if (this.mInnerLayout >= 0) {
                m4465a(innerView);
            }
        }
        return innerView;
    }

    /* renamed from: h */
    public final AbstractC18094b m4458h() {
        return this.f63028g;
    }

    /* renamed from: i */
    public final int m4457i() {
        return this.f63029h;
    }
}
