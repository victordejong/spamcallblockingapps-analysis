package com.allinone.callerid.p136b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.bean.QuickContactBean;
import com.allinone.callerid.util.C3719c1;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.b.s */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/s.class */
public class C2221s extends BaseAdapter implements SectionIndexer {

    /* renamed from: d */
    private final int f7790d;

    /* renamed from: e */
    private final int f7791e;

    /* renamed from: f */
    private List<QuickContactBean> f7792f;

    /* renamed from: g */
    private Activity f7793g;

    /* renamed from: h */
    private LayoutInflater f7794h;

    /* renamed from: i */
    private ListView f7795i;

    /* renamed from: j */
    C2224c f7796j;

    /* renamed from: com.allinone.callerid.b.s$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/s$a.class */
    class View$OnClickListenerC2222a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7797d;

        View$OnClickListenerC2222a(int i) {
            C2221s.this = r4;
            this.f7797d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2221s.this.f7795i.getOnItemClickListener();
            ListView listView = C2221s.this.f7795i;
            int i = this.f7797d;
            onItemClickListener.onItemClick(listView, view, i, C2221s.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.s$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/s$b.class */
    class View$OnClickListenerC2223b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7799d;

        View$OnClickListenerC2223b(int i) {
            C2221s.this = r4;
            this.f7799d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2221s.this.f7795i.getOnItemClickListener();
            ListView listView = C2221s.this.f7795i;
            int i = this.f7799d;
            onItemClickListener.onItemClick(listView, view, i, C2221s.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.s$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/s$c.class */
    public static class C2224c {

        /* renamed from: a */
        TextView f7801a;

        /* renamed from: b */
        TextView f7802b;

        /* renamed from: c */
        ImageView f7803c;

        /* renamed from: d */
        ImageView f7804d;

        /* renamed from: e */
        FrameLayout f7805e;

        /* renamed from: f */
        TextView f7806f;
    }

    public C2221s(Activity activity, List<QuickContactBean> list, ListView listView) {
        this.f7793g = activity;
        this.f7795i = listView;
        this.f7794h = LayoutInflater.from(activity);
        if (list == null) {
            this.f7792f = new ArrayList();
        } else {
            this.f7792f = list;
        }
        this.f7790d = C3719c1.m24431b(activity, R$attr.icon_add, R$drawable.icon_add);
        this.f7791e = C3719c1.m24431b(activity, R$attr.icon_remove, R$drawable.ic_unblock);
    }

    /* renamed from: b */
    public void m27848b(List<QuickContactBean> list) {
        if (list == null) {
            this.f7792f = new ArrayList();
        } else {
            this.f7792f = list;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7792f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7792f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        for (int i2 = 0; i2 < getCount(); i2++) {
            if (this.f7792f.get(i2).getBean().f11532t.toUpperCase(Locale.CHINESE).charAt(0) == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return this.f7792f.get(i).getBean().f11532t.charAt(0);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00fb, code lost:
        if ("".equals(r0) != false) goto L14;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 1209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2221s.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
