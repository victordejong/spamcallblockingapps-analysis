package com.uservoice.uservoicesdk.ui;

import android.support.v4.app.i;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.e;
import com.uservoice.uservoicesdk.j.f;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.model.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/c.class */
public final class c extends h<d> implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    protected static int f4775a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected static int f4776b = 1;
    public static int c = 0;
    public static int d = 1;
    public static int e = 2;
    protected LayoutInflater f;
    protected final i g;

    public c(i iVar) {
        this.g = iVar;
        this.f = (LayoutInflater) iVar.getSystemService("layout_inflater");
    }

    private List<d> b() {
        List list;
        if (this.n == c) {
            list = this.h;
        } else if (this.n == d) {
            list = new ArrayList();
            for (T t : this.h) {
                if (t instanceof Article) {
                    list.add(t);
                }
            }
        } else if (this.n == e) {
            list = new ArrayList();
            for (T t2 : this.h) {
                if (t2 instanceof Suggestion) {
                    list.add(t2);
                }
            }
        } else {
            list = null;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.ui.h
    public final f a(final String str, final a<List<d>> aVar) {
        this.l = str;
        return Article.a(str, new a<List<d>>() { // from class: com.uservoice.uservoicesdk.ui.c.1
            @Override // com.uservoice.uservoicesdk.j.a
            public final void a(e eVar) {
                aVar.a(eVar);
            }

            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(List<d> list) {
                List<d> list2 = list;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (d dVar : list2) {
                    if (dVar instanceof Article) {
                        arrayList.add((Article) dVar);
                    } else if (dVar instanceof Suggestion) {
                        arrayList2.add((Suggestion) dVar);
                    }
                }
                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.SEARCH_ARTICLES, str, arrayList);
                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.SEARCH_IDEAS, str, arrayList2);
                aVar.a((com.uservoice.uservoicesdk.j.a) list2);
            }
        });
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.j ? 1 : b().size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.j ? null : b().get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        return this.j ? f4776b : f4775a;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x013f  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r5, android.view.View r6, android.view.ViewGroup r7) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uservoice.uservoicesdk.ui.c.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return !this.j;
    }

    @Override // com.uservoice.uservoicesdk.ui.h
    protected final void j_() {
        int i = 0;
        for (T t : this.h) {
            if (t instanceof Article) {
                i++;
            }
        }
        com.uservoice.uservoicesdk.activity.d dVar = (com.uservoice.uservoicesdk.activity.d) this.g;
        this.h.size();
        dVar.a(i);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (getItemViewType(i) == f4775a) {
            l.a(this.g, (d) getItem(i));
        }
    }
}
