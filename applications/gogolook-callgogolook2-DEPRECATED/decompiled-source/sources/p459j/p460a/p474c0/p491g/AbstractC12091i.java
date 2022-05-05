package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CursorAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import gogolook.callgogolook2.messaging.p078ui.ListEmptyView;
import p459j.p460a.p474c0.p499h.C12140a0;
/* renamed from: j.a.c0.g.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/i.class */
public abstract class AbstractC12091i extends AbstractC12006e implements AbstractC12093j {

    /* renamed from: c */
    public final Context f27170c;

    /* renamed from: d */
    public final CursorAdapter f27171d;

    /* renamed from: e */
    public boolean f27172e;

    /* renamed from: f */
    public ListView f27173f;

    /* renamed from: j.a.c0.g.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/i$a.class */
    public class C12092a implements AbsListView.OnScrollListener {
        public C12092a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 0) {
                C12140a0.m7041a().m7040a(AbstractC12091i.this.f27170c, absListView);
            }
        }
    }

    public AbstractC12091i(Context context, CursorAdapter cursorAdapter) {
        this.f27170c = context;
        this.f27171d = cursorAdapter;
    }

    /* renamed from: A */
    public abstract int mo7192A();

    /* renamed from: B */
    public abstract int mo7191B();

    /* renamed from: C */
    public abstract int mo7190C();

    /* renamed from: D */
    public abstract int mo7189D();

    /* renamed from: E */
    public abstract int mo7188E();

    /* renamed from: F */
    public void m7187F() {
        this.f27171d.notifyDataSetChanged();
    }

    /* renamed from: G */
    public final void m7186G() {
        ListEmptyView listEmptyView;
        View view = this.f26897a;
        if (view != null && this.f27172e && (listEmptyView = (ListEmptyView) view.findViewById(mo7192A())) != null) {
            listEmptyView.m27363b(mo7191B());
            listEmptyView.m27364a(mo7181z());
            ((ListView) this.f26897a.findViewById(mo7189D())).setEmptyView(listEmptyView);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12093j
    /* renamed from: a */
    public CharSequence mo7180a(Context context) {
        return context.getString(mo7188E());
    }

    /* renamed from: a */
    public void m7185a(Cursor cursor) {
        this.f27171d.swapCursor(cursor);
        if (!this.f27172e) {
            this.f27172e = true;
            m7186G();
        }
    }

    /* renamed from: a */
    public void m7183a(boolean z, View view) {
        ListView listView = this.f27173f;
        if (listView != null) {
            int childCount = listView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f27173f.getChildAt(i);
                if (childAt != view) {
                    childAt.setVisibility(z ? 0 : 4);
                }
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12006e
    /* renamed from: b */
    public View mo7182b(ViewGroup viewGroup) {
        View inflate = ((LayoutInflater) this.f27170c.getSystemService("layout_inflater")).inflate(mo7190C(), (ViewGroup) null, false);
        ListView listView = (ListView) inflate.findViewById(mo7189D());
        listView.setAdapter((ListAdapter) this.f27171d);
        listView.setOnScrollListener(new C12092a());
        this.f27173f = listView;
        m7186G();
        return inflate;
    }

    /* renamed from: z */
    public abstract int mo7181z();
}
