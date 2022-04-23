package it.gmariotti.cardslib.library.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a.class */
public final class a<T> extends b {

    /* renamed from: a  reason: collision with root package name */
    protected List<T> f36347a;

    public a(Context context, int i, List<T> list) {
        super(context, i);
        this.f36347a = new ArrayList();
        this.f36347a = list;
    }

    public a(Context context, List<T> list) {
        super(context);
        this.f36347a = new ArrayList();
        this.f36347a = list;
    }
}
