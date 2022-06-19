package com.allinone.callerid.p136b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p180k.C2879a;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/h.class */
public class C2182h extends BaseAdapter {

    /* renamed from: d */
    private final int f7611d;

    /* renamed from: e */
    private final int f7612e;

    /* renamed from: f */
    private Activity f7613f;

    /* renamed from: g */
    private List<CallLogBean> f7614g = new ArrayList();

    /* renamed from: h */
    private LayoutInflater f7615h;

    /* renamed from: i */
    C2186b f7616i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.h$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/h$a.class */
    public class View$OnClickListenerC2183a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7617d;

        /* renamed from: com.allinone.callerid.b.h$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/h$a$a.class */
        class C2184a implements AbstractC2766a {
            C2184a() {
                View$OnClickListenerC2183a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                View$OnClickListenerC2183a.this.f7617d.m24922V0("0");
                C2182h.this.notifyDataSetChanged();
            }
        }

        /* renamed from: com.allinone.callerid.b.h$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/h$a$b.class */
        class C2185b implements AbstractC2766a {
            C2185b() {
                View$OnClickListenerC2183a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                View$OnClickListenerC2183a.this.f7617d.m24922V0("1");
                C2182h.this.notifyDataSetChanged();
            }
        }

        View$OnClickListenerC2183a(CallLogBean callLogBean) {
            C2182h.this = r4;
            this.f7617d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f7617d.m24952E() == null || "".equals(this.f7617d.m24952E())) {
                return;
            }
            if (this.f7617d.m24952E().equals("1")) {
                try {
                    C2879a.m26474b(this.f7617d.m24868v(), new C2184a());
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            try {
                C2879a.m26475a(this.f7617d.m24868v(), new C2185b());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.h$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/h$b.class */
    private static class C2186b {

        /* renamed from: a */
        TextView f7621a;

        /* renamed from: b */
        TextView f7622b;

        /* renamed from: c */
        ImageView f7623c;

        /* renamed from: d */
        ImageView f7624d;

        private C2186b() {
        }

        /* synthetic */ C2186b(View$OnClickListenerC2183a view$OnClickListenerC2183a) {
            this();
        }
    }

    public C2182h(Activity activity) {
        this.f7613f = activity;
        this.f7615h = LayoutInflater.from(activity);
        this.f7611d = C3719c1.m24431b(activity, R$attr.icon_add, R$drawable.icon_add);
        this.f7612e = C3719c1.m24431b(activity, R$attr.icon_remove, R$drawable.ic_unblock);
    }

    /* renamed from: a */
    public void m27872a(List<CallLogBean> list, boolean z) {
        if (z) {
            this.f7614g.clear();
        }
        List<CallLogBean> list2 = this.f7614g;
        if (list2 == null || list == null) {
            return;
        }
        list2.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7614g.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7614g.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00b0, code lost:
        if ("".equals(r0) != false) goto L10;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2182h.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
