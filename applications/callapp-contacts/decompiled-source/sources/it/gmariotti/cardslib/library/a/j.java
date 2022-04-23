package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.graphics.Bitmap;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/j.class */
public final class j extends it.gmariotti.cardslib.library.a.a.a {

    /* renamed from: a  reason: collision with root package name */
    protected int f36375a;

    /* renamed from: b  reason: collision with root package name */
    protected String f36376b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f36377c = false;

    /* renamed from: d  reason: collision with root package name */
    protected int f36378d = 0;
    protected a e = null;
    protected boolean f = true;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/j$a.class */
    public interface a {
        String a();

        Bitmap b();
    }

    public j(Context context) {
        super(context);
    }

    public j(Context context, int i) {
        super(context);
    }

    public final int a() {
        return this.f36375a;
    }

    public final String b() {
        return this.f36376b;
    }

    public final a c() {
        return this.e;
    }

    public final boolean d() {
        return this.f36377c;
    }

    public final int e() {
        return this.f36378d;
    }

    public final boolean f() {
        return this.f;
    }
}
