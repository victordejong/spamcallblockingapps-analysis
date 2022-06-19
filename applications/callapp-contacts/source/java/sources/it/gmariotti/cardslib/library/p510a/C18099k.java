package it.gmariotti.cardslib.library.p510a;

import android.view.View;
/* renamed from: it.gmariotti.cardslib.library.a.k */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/k.class */
public final class C18099k {

    /* renamed from: a */
    protected View f63039a;

    /* renamed from: c */
    protected EnumC18100a f63041c;

    /* renamed from: b */
    protected boolean f63040b = false;

    /* renamed from: d */
    protected boolean f63042d = false;

    /* renamed from: e */
    protected boolean f63043e = false;

    /* renamed from: it.gmariotti.cardslib.library.a.k$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/k$a.class */
    public enum EnumC18100a {
        CARD(0),
        HEADER(1),
        THUMBNAIL(2),
        MAIN_CONTENT(3);
        
        int mElement;

        EnumC18100a(int i) {
            this.mElement = i;
        }
    }

    protected C18099k() {
    }

    /* renamed from: a */
    public static C18099k m4447a() {
        return new C18099k();
    }

    /* renamed from: a */
    public final C18099k m4446a(View view) {
        this.f63039a = view;
        return this;
    }

    /* renamed from: b */
    public final C18099k m4445b() {
        this.f63040b = true;
        return this;
    }

    /* renamed from: c */
    public final View m4444c() {
        return this.f63039a;
    }

    /* renamed from: d */
    public final boolean m4443d() {
        return this.f63040b;
    }

    /* renamed from: e */
    public final EnumC18100a m4442e() {
        return this.f63041c;
    }

    /* renamed from: f */
    public final boolean m4441f() {
        return this.f63043e;
    }
}
