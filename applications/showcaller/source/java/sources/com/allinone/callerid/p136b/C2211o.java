package com.allinone.callerid.p136b;

import android.content.Context;
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
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.b.o */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/o.class */
public class C2211o extends BaseAdapter {

    /* renamed from: d */
    private Context f7739d;

    /* renamed from: e */
    private List<CallLogBean> f7740e;

    /* renamed from: f */
    private HashMap<String, Integer> f7741f;

    /* renamed from: g */
    private LayoutInflater f7742g;

    /* renamed from: h */
    private ListView f7743h;

    /* renamed from: i */
    private int f7744i = 0;

    /* renamed from: j */
    private String f7745j;

    /* renamed from: k */
    C2215d f7746k;

    /* renamed from: l */
    C2214c f7747l;

    /* renamed from: m */
    private int f7748m;

    /* renamed from: n */
    private int f7749n;

    /* renamed from: o */
    private int f7750o;

    /* renamed from: p */
    private int f7751p;

    /* renamed from: com.allinone.callerid.b.o$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/o$a.class */
    class View$OnClickListenerC2212a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7752d;

        View$OnClickListenerC2212a(int i) {
            C2211o.this = r4;
            this.f7752d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2211o.this.f7743h.getOnItemClickListener();
            ListView listView = C2211o.this.f7743h;
            int i = this.f7752d;
            onItemClickListener.onItemClick(listView, view, i, C2211o.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.o$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/o$b.class */
    class View$OnClickListenerC2213b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7754d;

        View$OnClickListenerC2213b(int i) {
            C2211o.this = r4;
            this.f7754d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2211o.this.f7743h.getOnItemClickListener();
            ListView listView = C2211o.this.f7743h;
            int i = this.f7754d;
            onItemClickListener.onItemClick(listView, view, i, C2211o.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.o$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/o$c.class */
    private static class C2214c {

        /* renamed from: a */
        ImageView f7756a;

        /* renamed from: b */
        TextView f7757b;

        /* renamed from: c */
        TextView f7758c;

        /* renamed from: d */
        TextView f7759d;

        /* renamed from: e */
        TextView f7760e;

        /* renamed from: f */
        ImageView f7761f;

        /* renamed from: g */
        ImageView f7762g;

        /* renamed from: h */
        FrameLayout f7763h;

        /* renamed from: i */
        LinearLayout f7764i;

        /* renamed from: j */
        TextView f7765j;

        private C2214c() {
        }

        /* synthetic */ C2214c(View$OnClickListenerC2212a view$OnClickListenerC2212a) {
            this();
        }
    }

    /* renamed from: com.allinone.callerid.b.o$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/o$d.class */
    private static class C2215d {

        /* renamed from: a */
        TextView f7766a;

        /* renamed from: b */
        TextView f7767b;

        /* renamed from: c */
        TextView f7768c;

        /* renamed from: d */
        FrameLayout f7769d;

        /* renamed from: e */
        LinearLayout f7770e;

        private C2215d() {
        }

        /* synthetic */ C2215d(View$OnClickListenerC2212a view$OnClickListenerC2212a) {
            this();
        }
    }

    public C2211o(Context context, List<CallLogBean> list, HashMap<String, Integer> hashMap, ListView listView) {
        this.f7741f = new HashMap<>();
        this.f7739d = context;
        this.f7740e = list;
        this.f7742g = LayoutInflater.from(context);
        this.f7743h = listView;
        this.f7741f = hashMap;
        this.f7748m = C3719c1.m24431b(context, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
        this.f7749n = C3719c1.m24431b(context, R$attr.bg_list_card, R$drawable.bg_list_card);
        this.f7750o = C3719c1.m24431b(context, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        this.f7751p = C3719c1.m24431b(context, R$attr.bg_list_card_top, R$drawable.bg_list_card_top);
    }

    /* renamed from: b */
    public void m27852b(List<CallLogBean> list, int i, String str) {
        if (list == null) {
            this.f7740e = new ArrayList();
        } else {
            this.f7740e = list;
        }
        this.f7744i = i;
        this.f7745j = str;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7740e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7740e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        try {
            return this.f7740e.get(i).m24918Y() ? 1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:368:0x08ac, code lost:
        if ("Fixed line".equals(r0.m24958B()) != false) goto L369;
     */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0916  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 2536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2211o.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
