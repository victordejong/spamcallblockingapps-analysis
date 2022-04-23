package p081h.p093b.p099c.p100a;

import android.content.Context;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import p081h.p093b.p099c.p100a.C5592d;
/* renamed from: h.b.c.a.i */
/* loaded from: classes-dex2jar.jar:h/b/c/a/i.class */
public class C5608i extends ArrayAdapter<C5607h> {

    /* renamed from: a */
    public final C5592d f14018a;

    /* renamed from: b */
    public final StateListDrawable f14019b;

    public C5608i(Context context, C5607h hVar, C5592d dVar, StateListDrawable stateListDrawable) {
        super(context, dVar.mo7951a(C5592d.EnumC5595c.SINGLE_RECIPIENT), new C5607h[]{hVar});
        this.f14018a = dVar;
        this.f14019b = stateListDrawable;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return this.f14018a.mo7952a(view, viewGroup, getItem(i), i, C5592d.EnumC5595c.SINGLE_RECIPIENT, null, this.f14019b);
    }
}
