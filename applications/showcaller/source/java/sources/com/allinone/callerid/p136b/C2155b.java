package com.allinone.callerid.p136b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.allinone.callerid.bean.EZSimpleContact;
import java.util.List;
/* renamed from: com.allinone.callerid.b.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b.class */
public class C2155b extends BaseAdapter {

    /* renamed from: d */
    private Activity f7476d;

    /* renamed from: e */
    private List<EZSimpleContact> f7477e;

    /* renamed from: f */
    private LayoutInflater f7478f;

    /* renamed from: g */
    private ListView f7479g;

    /* renamed from: h */
    C2158c f7480h;

    /* renamed from: com.allinone.callerid.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b$a.class */
    class View$OnClickListenerC2156a implements View.OnClickListener {
        View$OnClickListenerC2156a() {
            C2155b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C2155b.this.f7479g.performItemClick(C2155b.this.f7479g, intValue, C2155b.this.getItemId(intValue));
        }
    }

    /* renamed from: com.allinone.callerid.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b$b.class */
    class View$OnClickListenerC2157b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7482d;

        View$OnClickListenerC2157b(int i) {
            C2155b.this = r4;
            this.f7482d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2155b.this.f7479g.getOnItemClickListener();
            ListView listView = C2155b.this.f7479g;
            int i = this.f7482d;
            onItemClickListener.onItemClick(listView, view, i, C2155b.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b$c.class */
    private static class C2158c {

        /* renamed from: a */
        TextView f7484a;

        /* renamed from: b */
        TextView f7485b;

        /* renamed from: c */
        ImageView f7486c;

        /* renamed from: d */
        FrameLayout f7487d;

        private C2158c() {
        }

        /* synthetic */ C2158c(View$OnClickListenerC2156a view$OnClickListenerC2156a) {
            this();
        }
    }

    public C2155b(Activity activity, List<EZSimpleContact> list, ListView listView) {
        this.f7476d = activity;
        this.f7477e = list;
        this.f7478f = LayoutInflater.from(activity);
        this.f7479g = listView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7477e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7477e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00d0, code lost:
        if ("".equals(r0) != false) goto L10;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2155b.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
