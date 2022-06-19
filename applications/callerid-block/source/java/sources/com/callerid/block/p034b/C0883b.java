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
import com.callerid.block.bean.EZSimpleContact;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
import com.rey.material.widget.Button;
import java.util.List;
/* renamed from: com.callerid.block.b.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/b.class */
public class C0883b extends BaseAdapter {

    /* renamed from: b */
    private final int f3935b;

    /* renamed from: c */
    private Activity f3936c;

    /* renamed from: d */
    private List<EZSimpleContact> f3937d;

    /* renamed from: e */
    private LayoutInflater f3938e;

    /* renamed from: f */
    private ListView f3939f;

    /* renamed from: g */
    private Typeface f3940g = C1210r0.m9624b();

    /* renamed from: com.callerid.block.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/b$a.class */
    class View$OnClickListenerC0884a implements View.OnClickListener {
        View$OnClickListenerC0884a() {
            C0883b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C0883b.this.f3939f.performItemClick(C0883b.this.f3939f, intValue, C0883b.this.getItemId(intValue));
        }
    }

    /* renamed from: com.callerid.block.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/b$b.class */
    class View$OnClickListenerC0885b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f3942b;

        View$OnClickListenerC0885b(int i) {
            C0883b.this = r4;
            this.f3942b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0883b.this.f3939f.getOnItemClickListener() != null) {
                AdapterView.OnItemClickListener onItemClickListener = C0883b.this.f3939f.getOnItemClickListener();
                ListView listView = C0883b.this.f3939f;
                int i = this.f3942b;
                onItemClickListener.onItemClick(listView, view, i, C0883b.this.getItemId(i));
            }
        }
    }

    /* renamed from: com.callerid.block.b.b$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/b$c.class */
    private static class C0886c {

        /* renamed from: a */
        TextView f3944a;

        /* renamed from: b */
        TextView f3945b;

        /* renamed from: c */
        ImageView f3946c;

        /* renamed from: d */
        Button f3947d;

        private C0886c() {
        }

        /* synthetic */ C0886c(View$OnClickListenerC0884a view$OnClickListenerC0884a) {
            this();
        }
    }

    public C0883b(Activity activity, List<EZSimpleContact> list, ListView listView) {
        this.f3936c = activity;
        this.f3937d = list;
        this.f3938e = LayoutInflater.from(activity);
        this.f3939f = listView;
        this.f3936c.getContentResolver();
        this.f3935b = C1205p0.m9635b(this.f3936c, R$attr.touxiang_gray, R$drawable.touxiang_gray);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3937d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3937d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00b4, code lost:
        if ("".equals(r0) != false) goto L10;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0883b.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
