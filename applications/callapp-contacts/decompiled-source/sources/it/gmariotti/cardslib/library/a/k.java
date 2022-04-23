package it.gmariotti.cardslib.library.a;

import android.view.View;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    protected View f36379a;

    /* renamed from: c  reason: collision with root package name */
    protected a f36381c;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f36380b = false;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f36382d = false;
    protected boolean e = false;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/k$a.class */
    public enum a {
        CARD(0),
        HEADER(1),
        THUMBNAIL(2),
        MAIN_CONTENT(3);
        
        int mElement;

        a(int i) {
            this.mElement = i;
        }
    }

    protected k() {
    }

    public static k a() {
        return new k();
    }

    public final k a(View view) {
        this.f36379a = view;
        return this;
    }

    public final k b() {
        this.f36380b = true;
        return this;
    }

    public final View c() {
        return this.f36379a;
    }

    public final boolean d() {
        return this.f36380b;
    }

    public final a e() {
        return this.f36381c;
    }

    public final boolean f() {
        return this.e;
    }
}
