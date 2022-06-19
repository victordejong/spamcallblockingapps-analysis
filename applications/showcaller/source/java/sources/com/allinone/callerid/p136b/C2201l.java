package com.allinone.callerid.p136b;

import android.content.Context;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.b.l */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/l.class */
public class C2201l extends BaseAdapter {

    /* renamed from: d */
    private final int f7696d;

    /* renamed from: e */
    private Context f7697e;

    /* renamed from: f */
    private List<CallLogBean> f7698f;

    /* renamed from: g */
    private HashMap<String, Integer> f7699g;

    /* renamed from: h */
    private LayoutInflater f7700h;

    /* renamed from: i */
    private ListView f7701i;

    /* renamed from: k */
    private C2205d f7703k;

    /* renamed from: l */
    private C2204c f7704l;

    /* renamed from: j */
    private int f7702j = 0;

    /* renamed from: n */
    private final SpannableStringBuilder f7706n = new SpannableStringBuilder();

    /* renamed from: m */
    private Typeface f7705m = C3739f1.m24359b();

    /* renamed from: com.allinone.callerid.b.l$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/l$a.class */
    class View$OnClickListenerC2202a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7707d;

        View$OnClickListenerC2202a(int i) {
            C2201l.this = r4;
            this.f7707d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2201l.this.f7701i.getOnItemClickListener();
            ListView listView = C2201l.this.f7701i;
            int i = this.f7707d;
            onItemClickListener.onItemClick(listView, view, i, C2201l.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.l$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/l$b.class */
    class View$OnClickListenerC2203b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7709d;

        View$OnClickListenerC2203b(int i) {
            C2201l.this = r4;
            this.f7709d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2201l.this.f7701i.getOnItemClickListener();
            ListView listView = C2201l.this.f7701i;
            int i = this.f7709d;
            onItemClickListener.onItemClick(listView, view, i, C2201l.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.l$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/l$c.class */
    private static class C2204c {

        /* renamed from: a */
        ImageView f7711a;

        /* renamed from: b */
        TextView f7712b;

        /* renamed from: c */
        TextView f7713c;

        /* renamed from: d */
        TextView f7714d;

        /* renamed from: e */
        TextView f7715e;

        /* renamed from: f */
        ImageView f7716f;

        /* renamed from: g */
        ImageView f7717g;

        /* renamed from: h */
        FrameLayout f7718h;

        /* renamed from: i */
        LinearLayout f7719i;

        /* renamed from: j */
        TextView f7720j;

        private C2204c() {
        }

        /* synthetic */ C2204c(View$OnClickListenerC2202a view$OnClickListenerC2202a) {
            this();
        }
    }

    /* renamed from: com.allinone.callerid.b.l$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/l$d.class */
    private static class C2205d {

        /* renamed from: a */
        TextView f7721a;

        /* renamed from: b */
        TextView f7722b;

        /* renamed from: c */
        TextView f7723c;

        /* renamed from: d */
        FrameLayout f7724d;

        /* renamed from: e */
        LinearLayout f7725e;

        private C2205d() {
        }

        /* synthetic */ C2205d(View$OnClickListenerC2202a view$OnClickListenerC2202a) {
            this();
        }
    }

    public C2201l(Context context, List<CallLogBean> list, HashMap<String, Integer> hashMap, ListView listView) {
        this.f7699g = new HashMap<>();
        this.f7697e = context;
        this.f7698f = list;
        this.f7700h = LayoutInflater.from(context);
        this.f7701i = listView;
        this.f7699g = hashMap;
        this.f7696d = C3719c1.m24432a(context, R$attr.color_action, 2131099706);
    }

    /* renamed from: b */
    public void m27857b(List<CallLogBean> list, int i) {
        if (list == null) {
            this.f7698f = new ArrayList();
        } else {
            this.f7698f = list;
        }
        this.f7702j = i;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7698f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7698f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        try {
            return this.f7698f.get(i).m24918Y() ? 0 : 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:287:0x0701, code lost:
        if ("Fixed line".equals(r0.m24958B()) != false) goto L288;
     */
    /* JADX WARN: Removed duplicated region for block: B:303:0x076b  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 2060
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2201l.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
