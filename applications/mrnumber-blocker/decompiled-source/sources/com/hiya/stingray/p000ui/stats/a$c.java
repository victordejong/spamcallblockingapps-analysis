package com.hiya.stingray.p000ui.stats;

import android.content.Context;
import android.widget.BaseAdapter;
import com.hiya.stingray.manager.r3;
import com.hiya.stingray.s.d0;
import java.util.List;
import kotlin.s.k;
/* renamed from: com.hiya.stingray.ui.stats.a$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/a$c.class */
public final class a$c extends BaseAdapter {

    /* renamed from: f */
    private List<? extends d0> f132f = k.g();

    /* renamed from: g */
    private final Context f133g;

    /* renamed from: h */
    private final r3 f134h;

    public a$c(Context context, r3 r3Var) {
        kotlin.w.c.k.g(context, "context");
        kotlin.w.c.k.g(r3Var, "premiumManager");
        this.f133g = context;
        this.f134h = r3Var;
    }

    /* renamed from: a */
    public final void m1116a(List<? extends d0> list) {
        kotlin.w.c.k.g(list, "value");
        this.f132f = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f132f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f132f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Integer m = ((d0) this.f132f.get(i)).m();
        if (m != null) {
            return m.intValue();
        }
        kotlin.w.c.k.o();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0157, code lost:
        if (r0.S(r0, r0) == false) goto L_0x015a;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0211  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hiya.stingray.p000ui.stats.a$c.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
