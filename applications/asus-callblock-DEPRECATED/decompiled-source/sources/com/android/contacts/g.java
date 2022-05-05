package com.android.contacts;

import android.widget.AbsListView;
import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    final a f1305a;

    /* renamed from: b  reason: collision with root package name */
    private final ListView f1306b;
    private final AbsListView.OnScrollListener c = new AbsListView.OnScrollListener() { // from class: com.android.contacts.g.1
        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (i != 0) {
                g.this.f1305a.a(g.this.f1305a.a());
            } else if (absListView.getChildAt(i) != null) {
                g.this.f1305a.a(Math.min((int) (-absListView.getChildAt(i).getY()), g.this.f1305a.a()));
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/g$a.class */
    public interface a {
        int a();

        void a(int i);
    }

    private g(a aVar, ListView listView) {
        this.f1305a = aVar;
        this.f1306b = listView;
    }

    public static void a(a aVar, ListView listView) {
        g gVar = new g(aVar, listView);
        gVar.f1306b.setOnScrollListener(gVar.c);
        gVar.f1306b.setVerticalScrollBarEnabled(false);
    }
}
