package com.allinone.callerid.p136b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$string;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3809p0;
import java.util.List;
/* renamed from: com.allinone.callerid.b.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/d.class */
public class C2169d extends BaseAdapter {

    /* renamed from: d */
    private final int f7544d;

    /* renamed from: e */
    private final int f7545e;

    /* renamed from: f */
    private Context f7546f;

    /* renamed from: g */
    private List<CallLogBean> f7547g;

    /* renamed from: h */
    private LayoutInflater f7548h;

    /* renamed from: i */
    C2171b f7549i;

    /* renamed from: com.allinone.callerid.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/d$a.class */
    class View$OnClickListenerC2170a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7550d;

        View$OnClickListenerC2170a(int i) {
            C2169d.this = r4;
            this.f7550d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3809p0.m24078a(C2169d.this.f7546f, ((CallLogBean) C2169d.this.f7547g.get(this.f7550d)).m24880o());
        }
    }

    /* renamed from: com.allinone.callerid.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/d$b.class */
    private static class C2171b {

        /* renamed from: a */
        FrameLayout f7552a;

        /* renamed from: b */
        ImageView f7553b;

        /* renamed from: c */
        TextView f7554c;

        /* renamed from: d */
        TextView f7555d;

        /* renamed from: e */
        TextView f7556e;

        private C2171b() {
        }

        /* synthetic */ C2171b(View$OnClickListenerC2170a view$OnClickListenerC2170a) {
            this();
        }
    }

    public C2169d(Context context, List<CallLogBean> list, ListView listView) {
        this.f7546f = context;
        this.f7547g = list;
        this.f7548h = LayoutInflater.from(context);
        this.f7544d = C3719c1.m24432a(context, R$attr.color_666666, R$color.color_666666);
        this.f7545e = C3719c1.m24432a(context, R$attr.color_FF0000, R$color.color_FF0000);
    }

    /* renamed from: c */
    private String m27887c(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt < 60) {
            return parseInt + " " + this.f7546f.getResources().getString(R$string.sec);
        } else if (parseInt < 3600) {
            return (parseInt / 60) + " " + this.f7546f.getResources().getString(R$string.min);
        } else {
            return (parseInt / 3600) + " " + this.f7546f.getResources().getString(R$string.f7405hr);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7547g.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7547g.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0324  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2169d.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
