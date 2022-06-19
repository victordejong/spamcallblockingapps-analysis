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
import com.allinone.callerid.search.CallLogBean;
import java.util.List;
/* renamed from: com.allinone.callerid.b.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a.class */
public class C2144a extends BaseAdapter {

    /* renamed from: d */
    private Activity f7448d;

    /* renamed from: e */
    private List<CallLogBean> f7449e;

    /* renamed from: f */
    private LayoutInflater f7450f;

    /* renamed from: g */
    private ListView f7451g;

    /* renamed from: h */
    C2147c f7452h;

    /* renamed from: com.allinone.callerid.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a$a.class */
    class View$OnClickListenerC2145a implements View.OnClickListener {
        View$OnClickListenerC2145a() {
            C2144a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C2144a.this.f7451g.performItemClick(C2144a.this.f7451g, intValue, C2144a.this.getItemId(intValue));
        }
    }

    /* renamed from: com.allinone.callerid.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a$b.class */
    class View$OnClickListenerC2146b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7454d;

        View$OnClickListenerC2146b(int i) {
            C2144a.this = r4;
            this.f7454d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2144a.this.f7451g.getOnItemClickListener();
            ListView listView = C2144a.this.f7451g;
            int i = this.f7454d;
            onItemClickListener.onItemClick(listView, view, i, C2144a.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a$c.class */
    private static class C2147c {

        /* renamed from: a */
        TextView f7456a;

        /* renamed from: b */
        TextView f7457b;

        /* renamed from: c */
        ImageView f7458c;

        /* renamed from: d */
        FrameLayout f7459d;

        private C2147c() {
        }

        /* synthetic */ C2147c(View$OnClickListenerC2145a view$OnClickListenerC2145a) {
            this();
        }
    }

    public C2144a(Activity activity, List<CallLogBean> list, ListView listView) {
        this.f7448d = activity;
        this.f7449e = list;
        this.f7450f = LayoutInflater.from(activity);
        this.f7451g = listView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7449e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7449e.get(i);
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
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2144a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
