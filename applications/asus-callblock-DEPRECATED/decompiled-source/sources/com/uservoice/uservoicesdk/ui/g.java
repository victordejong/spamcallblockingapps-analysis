package com.uservoice.uservoicesdk.ui;

import android.content.Intent;
import android.support.v4.app.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.uservoice.uservoicesdk.activity.ArticleActivity;
import com.uservoice.uservoicesdk.activity.ContactActivity;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.model.Topic;
import com.uservoice.uservoicesdk.model.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/g.class */
public final class g extends h<d> implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static int f4783a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static int f4784b = 1;
    public static int c = 2;
    private static int e = 0;
    private static int f = 2;
    private static int g = 3;
    private static int p = 4;
    private static int q = 5;
    private static int r = 6;
    public final i d;
    private LayoutInflater s;
    private List<Integer> u;
    private List<Article> v;
    private boolean t = false;
    private String w = com.uservoice.uservoicesdk.g.b();
    private boolean x = true;

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/g$a.class */
    public final class a extends c {
        public a() {
            super(g.this, (byte) 0);
        }

        @Override // com.uservoice.uservoicesdk.ui.g.c
        protected final void a() {
            g.this.x = false;
            g.this.notifyDataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/g$b.class */
    public final class b extends c {
        public b() {
            super(g.this, (byte) 0);
        }

        @Override // com.uservoice.uservoicesdk.ui.g.c
        protected final void a() {
            g.this.t = true;
            g.this.notifyDataSetChanged();
            g.c(g.this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/g$c.class */
    private abstract class c implements Runnable {
        private c() {
        }

        /* synthetic */ c(g gVar, byte b2) {
            this();
        }

        protected abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.d != null) {
                g.this.d.runOnUiThread(new Runnable() { // from class: com.uservoice.uservoicesdk.ui.g.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.this.a();
                    }
                });
            }
        }
    }

    public g(i iVar) {
        this.d = iVar;
        this.s = (LayoutInflater) iVar.getSystemService("layout_inflater");
        new com.uservoice.uservoicesdk.f.a(iVar, new b(), new a()).a();
    }

    private static boolean b() {
        return e.a().f4631b.h != -1 || (e.a().i != null && e.a().i.isEmpty());
    }

    static /* synthetic */ void c(g gVar) {
        final com.uservoice.uservoicesdk.ui.a<List<Article>> aVar = new com.uservoice.uservoicesdk.ui.a<List<Article>>(gVar.d) { // from class: com.uservoice.uservoicesdk.ui.g.1
            @Override // com.uservoice.uservoicesdk.ui.a, com.uservoice.uservoicesdk.j.a
            public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                g.this.x = false;
                g.this.notifyDataSetChanged();
                super.a(eVar);
            }

            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(Object obj) {
                e.a().i = new ArrayList();
                g.this.v = (List) obj;
                g.this.notifyDataSetChanged();
            }
        };
        if (e.a().f4631b.h != -1) {
            Article.a(e.a().f4631b.h, 1, aVar);
        } else {
            Topic.a(new com.uservoice.uservoicesdk.ui.a<List<Topic>>(gVar.d) { // from class: com.uservoice.uservoicesdk.ui.g.2
                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj) {
                    List<Topic> list = (List) obj;
                    if (list.isEmpty()) {
                        e.a().i = list;
                        Article.a(1, aVar);
                        return;
                    }
                    ArrayList arrayList = new ArrayList(list);
                    arrayList.add(Topic.c);
                    e.a().i = arrayList;
                    g.this.notifyDataSetChanged();
                }
            });
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        if (this.u == null) {
            this.u = new ArrayList();
        } else {
            this.u.clear();
        }
        if (!this.t) {
            if (this.x) {
                this.u.add(Integer.valueOf(g));
            }
        } else if (e.a().f4631b.d()) {
            this.u.add(Integer.valueOf(e));
        }
        int size = this.u.size();
        if (this.t && e.a().f4631b.d()) {
            if (e.a().i == null || (b() && this.v == null)) {
                size++;
            } else {
                size = (b() ? this.v.size() : e.a().i.size()) + size;
            }
        }
        return size;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return (e.a().i == null || b() || i < this.u.size() || i - this.u.size() >= e.a().i.size()) ? (this.v == null || !b() || i < this.u.size() || i - this.u.size() >= this.v.size()) ? null : this.v.get(i - this.u.size()) : e.a().i.get(i - this.u.size());
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        int i2;
        if (i < this.u.size()) {
            i2 = this.u.get(i).intValue();
        } else {
            if (e.a().f4631b.d()) {
                if (e.a().i == null || (b() && this.v == null)) {
                    if (i - this.u.size() == 0) {
                        i2 = g;
                    }
                } else if (b() && i - this.u.size() < this.v.size()) {
                    i2 = q;
                } else if (!b() && i - this.u.size() < e.a().i.size()) {
                    i2 = f;
                }
            }
            i2 = r;
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        int i2 = 0;
        com.uservoice.uservoicesdk.a aVar = e.a().f4631b;
        int itemViewType = getItemViewType(i);
        View view3 = view;
        if (view == null) {
            if (itemViewType == g) {
                view3 = this.s.inflate(d.c.p, (ViewGroup) null);
            } else if (itemViewType == e) {
                view3 = aVar.q ? this.s.inflate(d.c.d, (ViewGroup) null) : this.s.inflate(d.c.f, (ViewGroup) null);
            } else if (itemViewType == f) {
                view3 = this.s.inflate(d.c.w, (ViewGroup) null);
            } else if (itemViewType == p) {
                view3 = this.s.inflate(d.c.w, (ViewGroup) null);
            } else if (itemViewType == q) {
                view3 = this.s.inflate(d.c.w, (ViewGroup) null);
            } else {
                view3 = view;
                if (itemViewType == r) {
                    view3 = this.s.inflate(d.c.h, (ViewGroup) null);
                }
            }
        }
        if (itemViewType == e) {
            if (aVar.q) {
                String[] strArr = aVar.r;
                if (strArr != null && strArr.length > 0) {
                    String[] strArr2 = aVar.s;
                    LinearLayout linearLayout = (LinearLayout) view3.findViewById(d.b.p);
                    linearLayout.removeAllViews();
                    int i3 = 0;
                    while (true) {
                        view2 = view3;
                        if (i3 >= strArr.length) {
                            break;
                        }
                        View inflate = this.s.inflate(d.c.e, (ViewGroup) null);
                        TextView textView = (TextView) inflate.findViewById(d.b.q);
                        TextView textView2 = (TextView) inflate.findViewById(d.b.r);
                        if (textView != null) {
                            textView.setText(strArr[i3]);
                        }
                        if (textView2 != null) {
                            textView2.setText(strArr2[i3]);
                        }
                        linearLayout.addView(inflate);
                        i3++;
                    }
                } else {
                    view2 = new View(this.d);
                }
            } else {
                TextView textView3 = (TextView) view3.findViewById(d.b.I);
                view2 = view3;
                if (textView3 != null) {
                    textView3.setText(d.f.c);
                    view2 = view3;
                }
            }
        } else if (itemViewType == f) {
            Topic topic = (Topic) getItem(i);
            ((TextView) view3.findViewById(d.b.ai)).setText(topic.a());
            TextView textView4 = (TextView) view3.findViewById(d.b.aj);
            if (topic == Topic.c) {
                textView4.setVisibility(8);
                view2 = view3;
            } else {
                textView4.setVisibility(0);
                textView4.setText(String.format("%d %s", Integer.valueOf(topic.f4734b), this.d.getResources().getQuantityString(d.e.f4625b, topic.f4734b)));
                view2 = view3;
            }
        } else if (itemViewType == p) {
            ((TextView) view3.findViewById(d.b.ai)).setText(d.f.o);
            view3.findViewById(d.b.aj).setVisibility(8);
            view2 = view3;
        } else if (itemViewType == q) {
            ((TextView) view3.findViewById(d.b.ai)).setText(((Article) getItem(i)).f4714a);
            ((TextView) view3.findViewById(d.b.aj)).setVisibility(8);
            view2 = view3;
        } else if (itemViewType == r) {
            TextView textView5 = (TextView) view3.findViewById(d.b.k);
            textView5.setText(this.d.getString(d.f.m) + " v" + this.w);
            textView5.setVisibility(8);
            view2 = view3;
        } else {
            view2 = view3;
            if (itemViewType == g) {
                view2 = view3;
                if (!this.x) {
                    view2 = new View(this.d);
                }
            }
        }
        View findViewById = view2.findViewById(d.b.G);
        if (findViewById != null) {
            if ((i == getCount() - 2 && getItemViewType(getCount() - 1) == r) || i == getCount() - 1) {
                i2 = 8;
            }
            findViewById.setVisibility(i2);
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return 6;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        int intValue;
        return !this.t ? false : i >= this.u.size() || !((intValue = this.u.get(i).intValue()) == e || intValue == g);
    }

    @Override // com.uservoice.uservoicesdk.ui.h
    protected final void j_() {
        int i = 0;
        for (T t : this.h) {
            if (t instanceof Article) {
                i++;
            }
        }
        com.uservoice.uservoicesdk.activity.d dVar = (com.uservoice.uservoicesdk.activity.d) this.d;
        this.h.size();
        dVar.a(i);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == p) {
            this.d.startActivity(new Intent(this.d, ContactActivity.class));
        } else if (itemViewType == f) {
            l.a(this.d, (com.uservoice.uservoicesdk.model.d) getItem(i));
        } else if (itemViewType == q) {
            Article article = (Article) getItem(i);
            Intent intent = new Intent(this.d, ArticleActivity.class);
            intent.putExtra(Article.class.getName(), new ArrayList(this.v));
            intent.putExtra("position", this.v.indexOf(article));
            this.d.startActivity(intent);
        }
    }
}
