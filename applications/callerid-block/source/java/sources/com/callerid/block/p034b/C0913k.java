package com.callerid.block.p034b;

import android.app.Activity;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.p040h.p041a.p042b.C0962a;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
import com.callerid.block.util.p058v0.C1222a;
import com.google.android.gms.ads.C1354d;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.ads.C1500s;
import com.google.android.gms.ads.nativead.AbstractC1487a;
import com.google.android.gms.ads.nativead.C1491b;
import com.google.android.gms.ads.nativead.NativeAdView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.callerid.block.b.k */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/k.class */
public class C0913k extends BaseAdapter {

    /* renamed from: c */
    private LayoutInflater f4069c;

    /* renamed from: f */
    private C1354d f4072f;

    /* renamed from: g */
    private Activity f4073g;

    /* renamed from: h */
    private View f4074h;

    /* renamed from: i */
    private FrameLayout f4075i;

    /* renamed from: j */
    private boolean f4076j;

    /* renamed from: k */
    private ListView f4077k;

    /* renamed from: l */
    private LayoutInflater f4078l;

    /* renamed from: m */
    private int f4079m;

    /* renamed from: n */
    private int f4080n;

    /* renamed from: o */
    private int f4081o;

    /* renamed from: p */
    private int f4082p;

    /* renamed from: q */
    private int f4083q;

    /* renamed from: r */
    private int f4084r;

    /* renamed from: d */
    private List<SMSBean> f4070d = new ArrayList();

    /* renamed from: e */
    private Typeface f4071e = C1210r0.m9624b();

    /* renamed from: b */
    private Typeface f4068b = C1210r0.m9625a();

    /* renamed from: com.callerid.block.b.k$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/k$b.class */
    public class C0914b implements AbsListView.OnScrollListener {
        C0914b(C0913k c0913k) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: com.callerid.block.b.k$e */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/k$e.class */
    public final class C0915e {

        /* renamed from: a */
        TextView f4085a;

        /* renamed from: b */
        TextView f4086b;

        /* renamed from: c */
        TextView f4087c;

        /* renamed from: d */
        TextView f4088d;

        /* renamed from: e */
        TextView f4089e;

        /* renamed from: f */
        ImageView f4090f;

        /* renamed from: g */
        ImageView f4091g;

        C0915e(C0913k c0913k, View view) {
            if (view != null) {
                this.f4085a = (TextView) view.findViewById(R$id.name);
                this.f4086b = (TextView) view.findViewById(R$id.count);
                this.f4087c = (TextView) view.findViewById(R$id.date);
                this.f4088d = (TextView) view.findViewById(2131296449);
                this.f4089e = (TextView) view.findViewById(R$id.tv_spam);
                this.f4090f = (ImageView) view.findViewById(R$id.photoview);
                this.f4091g = (ImageView) view.findViewById(R$id.iv_red);
                this.f4085a.setTypeface(c0913k.f4071e);
                this.f4086b.setTypeface(c0913k.f4071e);
                this.f4087c.setTypeface(c0913k.f4071e);
                this.f4088d.setTypeface(c0913k.f4071e);
                this.f4089e.setTypeface(c0913k.f4071e);
            }
        }
    }

    public C0913k(Activity activity, LinearLayout linearLayout, ListView listView) {
        this.f4073g = activity;
        this.f4069c = LayoutInflater.from(activity);
        this.f4077k = listView;
        this.f4078l = LayoutInflater.from(activity);
        m10577m();
        m10578l();
    }

    /* renamed from: h */
    public void m10582h(AbstractC1487a abstractC1487a, NativeAdView nativeAdView) {
        this.f4075i = (FrameLayout) ((RelativeLayout) getView(0, this.f4074h, null)).findViewById(R$id.fl_junk_admob);
        C1222a.m9539a(abstractC1487a, nativeAdView);
        this.f4075i.removeAllViews();
        this.f4075i.addView(nativeAdView);
        this.f4074h.setVisibility(0);
        notifyDataSetChanged();
    }

    /* renamed from: k */
    public void m10579k() {
    }

    /* renamed from: l */
    private void m10578l() {
        this.f4079m = C1205p0.m9635b(this.f4073g, R$attr.bg_tag, R$drawable.bg_tag);
        this.f4080n = C1205p0.m9635b(this.f4073g, R$attr.bg_tag_identified, R$drawable.bg_tag_identified);
        this.f4081o = C1205p0.m9636a(this.f4073g, R$attr.spam_text, R$color.spam_circle);
        this.f4082p = C1205p0.m9636a(this.f4073g, R$attr.color_666666, R$color.color_666666);
        C1205p0.m9636a(this.f4073g, R$attr.color_333333, R$color.color_333333);
        this.f4083q = C1205p0.m9635b(this.f4073g, R$attr.touxiang_gray, R$drawable.touxiang_gray);
        this.f4084r = C1205p0.m9635b(this.f4073g, R$attr.touxiang_red, R$drawable.touxiang_red);
    }

    /* renamed from: m */
    private void m10577m() {
        C0962a.m10447a(new a(this));
    }

    /* renamed from: n */
    public void m10576n() {
        C1354d.C1355a c1355a = new C1354d.C1355a(this.f4073g, "ca-app-pub-5825926894918682/3603565872");
        c1355a.m9036c(new c(this));
        C1500s.C1501a c1501a = new C1500s.C1501a();
        c1501a.m8563b(true);
        C1500s m8564a = c1501a.m8564a();
        C1491b.C1492a c1492a = new C1491b.C1492a();
        c1492a.m8591g(m8564a);
        c1355a.m9032g(c1492a.m8597a());
        c1355a.m9034e(new d(this));
        C1354d m9038a = c1355a.m9038a();
        this.f4072f = m9038a;
        m9038a.m9040a(new C1357e.C1358a().m9028c());
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4070d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4070d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (i == 1) {
            try {
                if (this.f4070d.get(i).getAddress() == null) {
                    return 0;
                }
                return "sms_ad".equals(this.f4070d.get(i).getAddress()) ? 1 : 0;
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x02d7 A[Catch: Exception -> 0x0367, TRY_LEAVE, TryCatch #0 {Exception -> 0x0367, blocks: (B:17:0x007f, B:21:0x0097, B:23:0x00a4, B:25:0x00b0, B:27:0x00be, B:29:0x00cd, B:30:0x00d5, B:32:0x00dd, B:34:0x00eb, B:35:0x00fb, B:36:0x010b, B:38:0x0119, B:40:0x012f, B:41:0x0137, B:42:0x014f, B:44:0x015d, B:45:0x019f, B:47:0x01aa, B:49:0x01b0, B:51:0x01be, B:53:0x01f5, B:54:0x01fc, B:56:0x0204, B:58:0x0212, B:59:0x0247, B:61:0x0251, B:62:0x025e, B:66:0x027e, B:68:0x0289, B:70:0x0291, B:71:0x0299, B:74:0x02b5, B:76:0x02c0, B:77:0x02c9, B:79:0x02d7, B:81:0x02fb, B:85:0x0306, B:89:0x0317, B:93:0x0322, B:95:0x0330, B:97:0x033f, B:99:0x0345, B:101:0x0353), top: B:106:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02f8  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 893
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0913k.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    /* renamed from: i */
    public void m10581i(List<SMSBean> list) {
        List<SMSBean> list2;
        this.f4070d.clear();
        this.f4070d.addAll(list);
        if (!this.f4076j || (list2 = this.f4070d) == null || list2.size() <= 2 || "sms_ad".equals(this.f4070d.get(1).getAddress())) {
            return;
        }
        SMSBean sMSBean = new SMSBean();
        sMSBean.setAddress("sms_ad");
        this.f4070d.add(1, sMSBean);
    }

    /* renamed from: j */
    public void m10580j() {
        List<SMSBean> list = this.f4070d;
        if (list != null && list.size() > 2) {
            if ("sms_ad".equals(this.f4070d.get(1).getAddress())) {
                this.f4070d.remove(1);
            }
            FrameLayout frameLayout = this.f4075i;
            if (frameLayout != null && this.f4074h != null) {
                frameLayout.setVisibility(8);
                this.f4075i.removeAllViews();
                this.f4074h.setVisibility(8);
            }
        }
        if (this.f4074h != null) {
            this.f4074h = null;
        }
        notifyDataSetChanged();
    }
}
