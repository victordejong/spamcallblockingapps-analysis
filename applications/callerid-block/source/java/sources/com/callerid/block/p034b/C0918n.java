package com.callerid.block.p034b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.util.C1210r0;
import com.callerid.block.util.C1227w;
/* renamed from: com.callerid.block.b.n */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/n.class */
public class C0918n extends BaseAdapter {

    /* renamed from: b */
    private Context f4101b;

    /* renamed from: c */
    private String[] f4102c;

    /* renamed from: d */
    private ListView f4103d;

    /* renamed from: com.callerid.block.b.n$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/n$a.class */
    class View$OnClickListenerC0919a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f4104b;

        View$OnClickListenerC0919a(int i) {
            C0918n.this = r4;
            this.f4104b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ListView listView = C0918n.this.f4103d;
            ListView listView2 = C0918n.this.f4103d;
            int i = this.f4104b;
            listView.performItemClick(listView2, i, C0918n.this.getItemId(i));
        }
    }

    /* renamed from: com.callerid.block.b.n$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/n$b.class */
    private class C0920b {

        /* renamed from: a */
        TextView f4106a;

        /* renamed from: b */
        FrameLayout f4107b;

        private C0920b(C0918n c0918n) {
        }

        /* synthetic */ C0920b(C0918n c0918n, View$OnClickListenerC0919a view$OnClickListenerC0919a) {
            this(c0918n);
        }
    }

    public C0918n(Context context, String[] strArr, ListView listView) {
        this.f4101b = context;
        this.f4102c = strArr;
        this.f4103d = listView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4102c.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4102c[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0920b c0920b;
        C1227w.m9527a("testlang", "数据：" + this.f4102c.toString());
        if (view == null) {
            view = View.inflate(this.f4101b, R$layout.start_choose_lang_item, null);
            c0920b = new C0920b(this, null);
            TextView textView = (TextView) view.findViewById(R$id.tv_lang_name);
            c0920b.f4106a = textView;
            textView.setTypeface(C1210r0.m9624b());
            c0920b.f4107b = (FrameLayout) view.findViewById(R$id.flayout_bg);
            view.setTag(c0920b);
        } else {
            c0920b = (C0920b) view.getTag();
        }
        c0920b.f4106a.setText(this.f4102c[i]);
        c0920b.f4107b.setTag(Integer.valueOf(i));
        c0920b.f4107b.setOnClickListener(new View$OnClickListenerC0919a(i));
        return view;
    }
}
