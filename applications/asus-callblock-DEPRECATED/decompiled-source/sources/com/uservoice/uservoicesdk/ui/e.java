package com.uservoice.uservoicesdk.ui;

import android.content.Context;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/e.class */
public abstract class e<T> extends d<T> {

    /* renamed from: a  reason: collision with root package name */
    private int f4779a = 1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f4780b = false;

    public e(Context context, int i, List<T> list) {
        super(context, i, list);
    }

    public void a() {
        if (!this.j && !this.i && this.e.size() != b() && !this.f4780b) {
            this.j = true;
            notifyDataSetChanged();
            a(this.f4779a, new a<List<T>>(this.k) { // from class: com.uservoice.uservoicesdk.ui.e.1
                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj) {
                    List list = (List) obj;
                    if (list.size() == 0) {
                        e.this.f4780b = true;
                    }
                    e.this.e.addAll(list);
                    e.this.f4779a++;
                    e.this.j = false;
                    e.this.notifyDataSetChanged();
                }
            });
        }
    }

    public abstract int b();

    @Override // com.uservoice.uservoicesdk.ui.d
    protected final List<T> c() {
        return e() ? this.h : this.e;
    }

    public final void d() {
        if (!this.j) {
            this.f4779a = 1;
            this.f4780b = false;
            this.e.clear();
            notifyDataSetChanged();
            a();
        }
    }
}
