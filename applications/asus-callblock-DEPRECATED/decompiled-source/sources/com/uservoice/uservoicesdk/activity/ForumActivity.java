package com.uservoice.uservoicesdk.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.TextView;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.h.a;
import com.uservoice.uservoicesdk.j.f;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.model.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/ForumActivity.class */
public class ForumActivity extends b implements d {
    private List<Suggestion> n;
    private h t;
    private String u;

    static /* synthetic */ void b(ForumActivity forumActivity) {
        if (e.a().h != null) {
            forumActivity.t = e.a().h;
            a.a(a.EnumC0133a.VIEW_FORUM, forumActivity.t.c());
            if (forumActivity.u == null) {
                forumActivity.setTitle(forumActivity.t.f4758a);
            }
            ((com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) forumActivity).q).a();
            return;
        }
        h.a(e.a().f4631b.b(), new com.uservoice.uservoicesdk.ui.a<h>(forumActivity) { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.5
            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(Object obj) {
                h hVar = (h) obj;
                e.a().h = hVar;
                ForumActivity.this.t = hVar;
                if (ForumActivity.this.u == null) {
                    ForumActivity.this.setTitle(ForumActivity.this.t.f4758a);
                }
                ((com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) ForumActivity.this).q).a();
                if (ForumActivity.this.t != null) {
                    a.c.a(ForumActivity.this, ForumActivity.this.t.c());
                }
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.activity.a, com.uservoice.uservoicesdk.activity.d
    public final com.uservoice.uservoicesdk.ui.h<?> c() {
        return (com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) this).q;
    }

    @Override // com.uservoice.uservoicesdk.c.a, com.uservoice.uservoicesdk.activity.a, com.uservoice.uservoicesdk.activity.d
    public final void d() {
    }

    @Override // com.uservoice.uservoicesdk.activity.a, com.uservoice.uservoicesdk.activity.d
    public final void e() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 21862 && i2 == -1) {
            ((com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) this).q).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.activity.a, android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g.c = true;
        if (e.a().f4631b == null) {
            finish();
            return;
        }
        this.u = e.a().f4631b.l;
        if (this.u == null) {
            setTitle(d.f.t);
        } else {
            setTitle(this.u);
        }
        this.n = new ArrayList();
        j().setDivider(null);
        a(new com.uservoice.uservoicesdk.ui.e<Suggestion>(this, d.c.u, this.n) { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.1

            /* renamed from: a  reason: collision with root package name */
            boolean f4585a = true;

            @Override // com.uservoice.uservoicesdk.ui.h
            public final f a(final String str, final com.uservoice.uservoicesdk.j.a<List<Suggestion>> aVar) {
                return ForumActivity.this.t == null ? null : Suggestion.a(ForumActivity.this.t, str, new com.uservoice.uservoicesdk.j.a<List<Suggestion>>() { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.1.1
                    @Override // com.uservoice.uservoicesdk.j.a
                    public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                        aVar.a(eVar);
                    }

                    @Override // com.uservoice.uservoicesdk.j.a
                    public final /* bridge */ /* synthetic */ void a(List<Suggestion> list) {
                        List<Suggestion> list2 = list;
                        com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.SEARCH_IDEAS, str, list2);
                        aVar.a((com.uservoice.uservoicesdk.j.a) list2);
                    }
                });
            }

            @Override // com.uservoice.uservoicesdk.ui.e
            public final void a() {
                if (this.f4585a) {
                    notifyDataSetChanged();
                }
                this.f4585a = false;
                super.a();
            }

            @Override // com.uservoice.uservoicesdk.ui.d
            public final void a(int i, com.uservoice.uservoicesdk.j.a<List<Suggestion>> aVar) {
                Suggestion.a(ForumActivity.this.t, i, aVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.uservoice.uservoicesdk.ui.d
            public final /* synthetic */ void a(View view, Object obj) {
                Suggestion suggestion = (Suggestion) obj;
                ((TextView) view.findViewById(d.b.ah)).setText(suggestion.f4724a);
                TextView textView = (TextView) view.findViewById(d.b.ad);
                if (e.a().g.j) {
                    textView.setText(suggestion.a());
                } else {
                    textView.setText(String.valueOf(suggestion.n));
                }
                TextView textView2 = (TextView) view.findViewById(d.b.af);
                View findViewById = view.findViewById(d.b.ag);
                if (suggestion.c == null) {
                    textView2.setVisibility(8);
                    findViewById.setVisibility(8);
                    return;
                }
                int parseColor = Color.parseColor(suggestion.d);
                textView2.setVisibility(0);
                textView2.setTextColor(parseColor);
                textView2.setText(Suggestion.a(this.k, suggestion.c).toUpperCase(Locale.getDefault()));
                findViewById.setVisibility(0);
                findViewById.setBackgroundColor(parseColor);
            }

            @Override // com.uservoice.uservoicesdk.ui.e
            public final int b() {
                return ForumActivity.this.t.f4759b;
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.Adapter
            public final int getCount() {
                return (this.f4585a ? 1 : 0) + super.getCount() + 2;
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.Adapter
            public final Object getItem(int i) {
                return super.getItem(i - 2);
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.BaseAdapter, android.widget.Adapter
            public final int getItemViewType(int i) {
                int itemViewType = 2;
                if (i != 0) {
                    itemViewType = i == 1 ? 3 : (i != 2 || !this.f4585a) ? super.getItemViewType(i - 2) : 1;
                }
                return itemViewType;
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.Adapter
            public final View getView(int i, View view, ViewGroup viewGroup) {
                View view2;
                int itemViewType = getItemViewType(i);
                if (itemViewType == 2 || itemViewType == 3) {
                    view2 = view;
                    if (view == null) {
                        if (itemViewType == 2) {
                            view2 = ForumActivity.this.getLayoutInflater().inflate(d.c.w, (ViewGroup) null);
                            ((TextView) view2.findViewById(d.b.ai)).setText(d.f.l);
                            view2.findViewById(d.b.G).setVisibility(8);
                            view2.findViewById(d.b.aj).setVisibility(8);
                        } else {
                            view2 = view;
                            if (itemViewType == 3) {
                                view2 = ForumActivity.this.getLayoutInflater().inflate(d.c.f, (ViewGroup) null);
                                ((TextView) view2.findViewById(d.b.I)).setText(d.f.r);
                            }
                        }
                    }
                } else {
                    view2 = super.getView(i, view, viewGroup);
                }
                return view2;
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.BaseAdapter, android.widget.Adapter
            public final int getViewTypeCount() {
                return super.getViewTypeCount() + 2;
            }

            @Override // com.uservoice.uservoicesdk.ui.d, android.widget.BaseAdapter, android.widget.ListAdapter
            public final boolean isEnabled(int i) {
                return getItemViewType(i) == 2 || super.isEnabled(i);
            }
        });
        j().setOnScrollListener(new com.uservoice.uservoicesdk.ui.f((com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) this).q) { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.2
            @Override // com.uservoice.uservoicesdk.ui.f, android.widget.AbsListView.OnScrollListener
            public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (ForumActivity.this.t != null) {
                    super.onScroll(absListView, i, i2, i3);
                }
            }
        });
        j().setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Suggestion suggestion;
                if (i == 0) {
                    ForumActivity.this.startActivityForResult(new Intent(ForumActivity.this, PostIdeaActivity.class), 21862);
                } else if (i != 1 && (suggestion = (Suggestion) ((com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) ForumActivity.this).q).getItem(i)) != null) {
                    com.uservoice.uservoicesdk.e.f fVar = new com.uservoice.uservoicesdk.e.f();
                    Bundle bundle2 = new Bundle(2);
                    bundle2.putParcelable("suggestion", suggestion);
                    fVar.setArguments(bundle2);
                    fVar.a(ForumActivity.this.getSupportFragmentManager(), "SuggestionDialogFragment");
                }
            }
        });
        new com.uservoice.uservoicesdk.f.a(this, new Runnable() { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.4
            @Override // java.lang.Runnable
            public final void run() {
                ForumActivity.b(ForumActivity.this);
                e.a().k = new Runnable() { // from class: com.uservoice.uservoicesdk.activity.ForumActivity.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ForumActivity.this.t != null) {
                            ((com.uservoice.uservoicesdk.ui.e) ((com.uservoice.uservoicesdk.c.a) ForumActivity.this).q).d();
                        }
                    }
                };
            }
        }).a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.c.a, android.support.v4.app.i, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.t != null) {
            a.c.a(this, this.t.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onStop() {
        e.a().k = null;
        super.onStop();
    }
}
