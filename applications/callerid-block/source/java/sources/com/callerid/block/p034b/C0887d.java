package com.callerid.block.p034b;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.R$string;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1183i0;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1202o0;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
import java.util.List;
/* renamed from: com.callerid.block.b.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/d.class */
public class C0887d extends BaseAdapter {

    /* renamed from: b */
    private int f3948b;

    /* renamed from: c */
    private int f3949c;

    /* renamed from: d */
    private Context f3950d;

    /* renamed from: e */
    private List<CallLogBean> f3951e;

    /* renamed from: f */
    private LayoutInflater f3952f;

    /* renamed from: g */
    private Typeface f3953g = C1210r0.m9624b();

    /* renamed from: com.callerid.block.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/d$a.class */
    class View$OnClickListenerC0888a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ CallLogBean f3954b;

        View$OnClickListenerC0888a(CallLogBean callLogBean) {
            C0887d.this = r4;
            this.f3954b = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context;
            String m10045o;
            try {
                if (C1202o0.m9641b(C0887d.this.f3950d)) {
                    int m9659v = C1199n0.m9659v();
                    if (m9659v != -1) {
                        C1202o0.m9642a(C0887d.this.f3950d, m9659v, this.f3954b.m10045o());
                        return;
                    } else if (Build.VERSION.SDK_INT >= 22) {
                        C1202o0.m9640c(C0887d.this.f3950d, this.f3954b.m10045o());
                        return;
                    } else {
                        context = C0887d.this.f3950d;
                        m10045o = this.f3954b.m10045o();
                    }
                } else {
                    context = C0887d.this.f3950d;
                    m10045o = this.f3954b.m10045o();
                }
                C1183i0.m9834a(context, m10045o);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.callerid.block.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/d$b.class */
    private static class C0889b {

        /* renamed from: a */
        FrameLayout f3956a;

        /* renamed from: b */
        ImageView f3957b;

        /* renamed from: c */
        TextView f3958c;

        /* renamed from: d */
        TextView f3959d;

        /* renamed from: e */
        TextView f3960e;

        private C0889b() {
        }

        /* synthetic */ C0889b(View$OnClickListenerC0888a view$OnClickListenerC0888a) {
            this();
        }
    }

    public C0887d(Context context, List<CallLogBean> list) {
        this.f3950d = context;
        this.f3951e = list;
        this.f3952f = LayoutInflater.from(context);
        this.f3948b = C1205p0.m9636a(this.f3950d, R$attr.color_report_spam, R$color.spam);
        this.f3949c = C1205p0.m9636a(this.f3950d, R$attr.color_666666, R$color.color_666666);
    }

    /* renamed from: b */
    private String m10610b(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt < 60) {
            return parseInt + " " + this.f3950d.getResources().getString(R$string.sec);
        } else if (parseInt < 3600) {
            return (parseInt / 60) + " " + this.f3950d.getResources().getString(R$string.min);
        } else {
            return (parseInt / 3600) + " " + this.f3950d.getResources().getString(R$string.f3885hr);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3951e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3951e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x012e, code lost:
        if ("".equals(r0.m10057h()) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x014f, code lost:
        if ("".equals(r0.m10057h()) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0152, code lost:
        r9.f3960e.setText(m10610b(r0.m10057h()));
        r12 = r9.f3960e;
        r7 = r6.f3949c;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01e0  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0887d.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
