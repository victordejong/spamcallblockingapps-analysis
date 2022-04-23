package com.callerid.block.p034b;

import android.app.Activity;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$drawable;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
import com.rey.material.widget.Button;
import java.util.List;
/* renamed from: com.callerid.block.b.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/a.class */
public class C0879a extends BaseAdapter {

    /* renamed from: b */
    private final int f3922b;

    /* renamed from: c */
    private Activity f3923c;

    /* renamed from: d */
    private List<CallLogBean> f3924d;

    /* renamed from: e */
    private LayoutInflater f3925e;

    /* renamed from: f */
    private ListView f3926f;

    /* renamed from: g */
    private Typeface f3927g = C1210r0.m9624b();

    /* renamed from: com.callerid.block.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/a$a.class */
    class View$OnClickListenerC0880a implements View.OnClickListener {
        View$OnClickListenerC0880a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C0879a.this.f3926f.performItemClick(C0879a.this.f3926f, intValue, C0879a.this.getItemId(intValue));
        }
    }

    /* renamed from: com.callerid.block.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/a$b.class */
    class View$OnClickListenerC0881b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f3929b;

        View$OnClickListenerC0881b(int i) {
            this.f3929b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0879a.this.f3926f.getOnItemClickListener() != null) {
                AdapterView.OnItemClickListener onItemClickListener = C0879a.this.f3926f.getOnItemClickListener();
                ListView listView = C0879a.this.f3926f;
                int i = this.f3929b;
                onItemClickListener.onItemClick(listView, view, i, C0879a.this.getItemId(i));
            }
        }
    }

    /* renamed from: com.callerid.block.b.a$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/a$c.class */
    private static class C0882c {

        /* renamed from: a */
        TextView f3931a;

        /* renamed from: b */
        TextView f3932b;

        /* renamed from: c */
        ImageView f3933c;

        /* renamed from: d */
        Button f3934d;

        private C0882c() {
        }

        /* synthetic */ C0882c(View$OnClickListenerC0880a aVar) {
            this();
        }
    }

    public C0879a(Activity activity, List<CallLogBean> list, ListView listView) {
        this.f3923c = activity;
        this.f3924d = list;
        this.f3925e = LayoutInflater.from(activity);
        this.f3926f = listView;
        this.f3923c.getContentResolver();
        this.f3922b = C1205p0.m9635b(this.f3923c, R$attr.touxiang_gray, R$drawable.touxiang_gray);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3924d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3924d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00ba, code lost:
        if ("".equals(r0) != false) goto L_0x00bd;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0879a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
