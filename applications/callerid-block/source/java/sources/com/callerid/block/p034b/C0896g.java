package com.callerid.block.p034b;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.customview.ProgressWheel;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1183i0;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1202o0;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
import com.rey.material.widget.ImageButton;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.callerid.block.b.g */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/g.class */
public class C0896g extends BaseAdapter {

    /* renamed from: b */
    private Activity f3985b;

    /* renamed from: c */
    private List<CallLogBean> f3986c;

    /* renamed from: d */
    private HashMap<String, Integer> f3987d;

    /* renamed from: e */
    private LayoutInflater f3988e;

    /* renamed from: f */
    private ListView f3989f;

    /* renamed from: g */
    private int f3990g;

    /* renamed from: h */
    private int f3991h;

    /* renamed from: i */
    private int f3992i;

    /* renamed from: j */
    private int f3993j;

    /* renamed from: k */
    private Typeface f3994k = C1210r0.m9624b();

    /* renamed from: l */
    private int f3995l;

    /* renamed from: m */
    private int f3996m;

    /* renamed from: com.callerid.block.b.g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/g$a.class */
    class View$OnClickListenerC0897a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f3997b;

        View$OnClickListenerC0897a(int i) {
            C0896g.this = r4;
            this.f3997b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0896g.this.f3989f.getOnItemClickListener() != null) {
                AdapterView.OnItemClickListener onItemClickListener = C0896g.this.f3989f.getOnItemClickListener();
                ListView listView = C0896g.this.f3989f;
                int i = this.f3997b;
                onItemClickListener.onItemClick(listView, view, i, C0896g.this.getItemId(i));
            }
        }
    }

    /* renamed from: com.callerid.block.b.g$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/g$b.class */
    class View$OnLongClickListenerC0898b implements View.OnLongClickListener {

        /* renamed from: b */
        final /* synthetic */ int f3999b;

        View$OnLongClickListenerC0898b(int i) {
            C0896g.this = r4;
            this.f3999b = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AdapterView.OnItemLongClickListener onItemLongClickListener = C0896g.this.f3989f.getOnItemLongClickListener();
            ListView listView = C0896g.this.f3989f;
            int i = this.f3999b;
            onItemLongClickListener.onItemLongClick(listView, view, i, C0896g.this.getItemId(i));
            return true;
        }
    }

    /* renamed from: com.callerid.block.b.g$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/g$c.class */
    public class View$OnClickListenerC0899c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ CallLogBean f4001b;

        View$OnClickListenerC0899c(CallLogBean callLogBean) {
            C0896g.this = r4;
            this.f4001b = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity activity;
            String m10045o;
            try {
                if (C1202o0.m9641b(C0896g.this.f3985b)) {
                    int m9659v = C1199n0.m9659v();
                    if (m9659v != -1) {
                        C1202o0.m9642a(C0896g.this.f3985b, m9659v, this.f4001b.m10045o());
                        return;
                    } else if (Build.VERSION.SDK_INT >= 22) {
                        C1202o0.m9640c(C0896g.this.f3985b, this.f4001b.m10045o());
                        return;
                    } else {
                        activity = C0896g.this.f3985b;
                        m10045o = this.f4001b.m10045o();
                    }
                } else {
                    activity = C0896g.this.f3985b;
                    m10045o = this.f4001b.m10045o();
                }
                C1183i0.m9834a(activity, m10045o);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.callerid.block.b.g$d */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/g$d.class */
    private class C0900d {

        /* renamed from: a */
        ImageView f4003a;

        /* renamed from: b */
        TextView f4004b;

        /* renamed from: c */
        TextView f4005c;

        /* renamed from: d */
        TextView f4006d;

        /* renamed from: e */
        TextView f4007e;

        /* renamed from: f */
        TextView f4008f;

        /* renamed from: g */
        TextView f4009g;

        /* renamed from: h */
        TextView f4010h;

        /* renamed from: i */
        TextView f4011i;

        /* renamed from: j */
        ImageButton f4012j;

        /* renamed from: k */
        ImageView f4013k;

        /* renamed from: l */
        ImageView f4014l;

        /* renamed from: m */
        ProgressWheel f4015m;

        /* renamed from: n */
        FrameLayout f4016n;

        /* renamed from: o */
        ImageView f4017o;

        C0900d(C0896g c0896g, View view) {
            if (view != null) {
                this.f4003a = (ImageView) view.findViewById(R$id.call_type);
                this.f4013k = (ImageView) view.findViewById(R$id.call_type1);
                this.f4014l = (ImageView) view.findViewById(R$id.call_type2);
                this.f4013k.setVisibility(8);
                this.f4014l.setVisibility(8);
                this.f4004b = (TextView) view.findViewById(R$id.name);
                this.f4005c = (TextView) view.findViewById(2131297154);
                this.f4006d = (TextView) view.findViewById(R$id.belong_area);
                this.f4008f = (TextView) view.findViewById(R$id.tv_counts);
                this.f4009g = (TextView) view.findViewById(R$id.tv_whatsapp);
                this.f4010h = (TextView) view.findViewById(R$id.tv_number_type);
                this.f4007e = (TextView) view.findViewById(R$id.tv_spam);
                this.f4011i = (TextView) view.findViewById(R$id.tv_date);
                this.f4007e.setVisibility(8);
                this.f4011i.setVisibility(8);
                this.f4010h.setVisibility(8);
                this.f4012j = (ImageButton) view.findViewById(R$id.call_btn_dial);
                this.f4008f.setText("");
                this.f4015m = (ProgressWheel) view.findViewById(R$id.progress_wheel);
                this.f4016n = (FrameLayout) view.findViewById(R$id.ripple_bg);
                this.f4017o = (ImageView) view.findViewById(R$id.record_photo);
                this.f4004b.setTypeface(c0896g.f3994k);
                this.f4008f.setTypeface(c0896g.f3994k);
                this.f4005c.setTypeface(c0896g.f3994k);
                this.f4010h.setTypeface(c0896g.f3994k);
                this.f4006d.setTypeface(c0896g.f3994k);
                this.f4007e.setTypeface(c0896g.f3994k);
                this.f4011i.setTypeface(c0896g.f3994k);
            }
        }
    }

    public C0896g(Activity activity, List<CallLogBean> list, HashMap<String, Integer> hashMap, ListView listView) {
        this.f3987d = new HashMap<>();
        this.f3985b = activity;
        this.f3986c = list;
        this.f3988e = LayoutInflater.from(activity);
        this.f3989f = listView;
        this.f3987d = hashMap;
        m10601e();
    }

    /* renamed from: d */
    private void m10602d(View view, CallLogBean callLogBean) {
        view.setOnClickListener(new View$OnClickListenerC0899c(callLogBean));
    }

    /* renamed from: e */
    private void m10601e() {
        this.f3990g = C1205p0.m9635b(this.f3985b, R$attr.bg_tag, R$drawable.bg_tag);
        this.f3991h = C1205p0.m9635b(this.f3985b, R$attr.bg_tag_identified, R$drawable.bg_tag_identified);
        this.f3992i = C1205p0.m9636a(this.f3985b, R$attr.spam_text, R$color.spam_circle);
        this.f3993j = C1205p0.m9636a(this.f3985b, R$attr.color_666666, R$color.color_666666);
        this.f3995l = C1205p0.m9635b(this.f3985b, R$attr.touxiang_gray, R$drawable.touxiang_gray);
        this.f3996m = C1205p0.m9635b(this.f3985b, R$attr.touxiang_red, R$drawable.touxiang_red);
    }

    /* renamed from: f */
    public void m10600f(List<CallLogBean> list) {
        if (list != null) {
            this.f3986c = list;
        }
    }

    /* renamed from: g */
    public void m10599g(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        this.f3986c = list;
        this.f3987d = hashMap;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3986c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        List<CallLogBean> list = this.f3986c;
        if (list == null || list.size() <= i) {
            return null;
        }
        return this.f3986c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            try {
                if (this.f3986c.get(i).m10045o() == null) {
                    return 0;
                }
                return this.f3986c.get(i).m10045o().equals("facebook_ad") ? 1 : 0;
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0348  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 1498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0896g.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
