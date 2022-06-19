package com.allinone.callerid.p136b;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.allinone.callerid.customview.MyListView;
import com.allinone.callerid.search.CallLogBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.b.i */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/i.class */
public class C2187i extends BaseAdapter implements SectionIndexer {

    /* renamed from: d */
    private List<CallLogBean> f7625d;

    /* renamed from: e */
    private Context f7626e;

    /* renamed from: f */
    private Activity f7627f;

    /* renamed from: g */
    private LayoutInflater f7628g;

    /* renamed from: h */
    private ListView f7629h;

    /* renamed from: i */
    C2190c f7630i;

    /* renamed from: j */
    private String f7631j;

    /* renamed from: com.allinone.callerid.b.i$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/i$a.class */
    class View$OnClickListenerC2188a implements View.OnClickListener {
        View$OnClickListenerC2188a() {
            C2187i.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C2187i.this.f7629h.performItemClick(C2187i.this.f7629h, intValue, C2187i.this.getItemId(intValue));
        }
    }

    /* renamed from: com.allinone.callerid.b.i$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/i$b.class */
    class View$OnClickListenerC2189b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7633d;

        View$OnClickListenerC2189b(int i) {
            C2187i.this = r4;
            this.f7633d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2187i.this.f7629h.getOnItemClickListener();
            ListView listView = C2187i.this.f7629h;
            int i = this.f7633d;
            onItemClickListener.onItemClick(listView, view, i, C2187i.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.i$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/i$c.class */
    public static class C2190c {

        /* renamed from: a */
        TextView f7635a;

        /* renamed from: b */
        TextView f7636b;

        /* renamed from: c */
        ImageView f7637c;

        /* renamed from: d */
        TextView f7638d;

        /* renamed from: e */
        FrameLayout f7639e;

        /* renamed from: f */
        LinearLayout f7640f;

        /* renamed from: g */
        View f7641g;

        /* renamed from: h */
        View f7642h;

        /* renamed from: i */
        MyListView f7643i;
    }

    public C2187i(Context context, List<CallLogBean> list, ListView listView) {
        this.f7626e = context;
        this.f7627f = (Activity) context;
        this.f7629h = listView;
        this.f7628g = LayoutInflater.from(context);
        if (list == null) {
            this.f7625d = new ArrayList();
        } else {
            this.f7625d = list;
        }
    }

    /* renamed from: b */
    public void m27870b(List<CallLogBean> list) {
        if (list == null) {
            this.f7625d = new ArrayList();
        } else {
            this.f7625d = list;
        }
        this.f7631j = null;
        notifyDataSetChanged();
    }

    /* renamed from: c */
    public void m27869c(List<CallLogBean> list, String str) {
        if (list == null) {
            this.f7625d = new ArrayList();
        } else {
            this.f7625d = list;
        }
        this.f7631j = str;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7625d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7625d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        for (int i2 = 0; i2 < getCount(); i2++) {
            List<CallLogBean> list = this.f7625d;
            if (list != null && list.get(i2) != null && this.f7625d.get(i2).f11532t != null && this.f7625d.get(i2).f11532t.toUpperCase(Locale.CHINESE).charAt(0) == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return this.f7625d.get(i).f11532t.charAt(0);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0145, code lost:
        if ("".equals(r0) != false) goto L13;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 2600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2187i.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
