package com.allinone.callerid.p136b.p137a0;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.NoDisturbBean;
import com.allinone.callerid.p136b.p139z.AbstractC2259b;
import com.allinone.callerid.p162i.p163a.p181l.p182e.AbstractC2901b;
import com.allinone.callerid.p162i.p163a.p181l.p182e.C2902c;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.b.a0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/b.class */
public class C2151b extends AbstractC2259b<NoDisturbBean> {

    /* renamed from: f */
    private Context f7467f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.a0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/b$a.class */
    public class View$OnClickListenerC2152a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7468d;

        /* renamed from: e */
        final /* synthetic */ NoDisturbBean f7469e;

        /* renamed from: com.allinone.callerid.b.a0.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/b$a$a.class */
        class C2153a implements AbstractC2901b {
            C2153a() {
                View$OnClickListenerC2152a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p181l.p182e.AbstractC2901b
            /* renamed from: a */
            public void mo25262a(boolean z) {
                if (((AbstractC2259b) C2151b.this).f7933d == null || ((AbstractC2259b) C2151b.this).f7933d.size() > 1) {
                    return;
                }
                C1764a.m28939b(C2151b.this.f7467f).m28937d(new Intent("com.allinone.callerid.WHITE_DATE_UPDATA"));
            }
        }

        View$OnClickListenerC2152a(int i, NoDisturbBean noDisturbBean) {
            C2151b.this = r4;
            this.f7468d = i;
            this.f7469e = noDisturbBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ((AbstractC2259b) C2151b.this).f7933d.remove(this.f7468d);
                C2151b.this.m31962n(this.f7468d);
                C2151b c2151b = C2151b.this;
                c2151b.m31965k(0, ((AbstractC2259b) c2151b).f7933d.size());
                C2902c.m26444b(this.f7469e.getNumber(), new C2153a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.a0.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/b$b.class */
    private static class C2154b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f7472u;

        /* renamed from: v */
        private TextView f7473v;

        /* renamed from: w */
        private TextView f7474w;

        /* renamed from: x */
        private ImageView f7475x;

        C2154b(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            this.f7472u = (FrameLayout) view.findViewById(R$id.item_block_click);
            this.f7473v = (TextView) view.findViewById(R$id.item_block_name);
            this.f7474w = (TextView) view.findViewById(R$id.item_block_info);
            this.f7475x = (ImageView) view.findViewById(R$id.item_block_bt);
            this.f7473v.setTypeface(m24359b);
            this.f7474w.setTypeface(m24359b);
        }
    }

    public C2151b(Context context) {
        super(context);
        this.f7467f = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2154b c2154b = (C2154b) abstractC0905b0;
        if (c2154b != null) {
            NoDisturbBean noDisturbBean = (NoDisturbBean) this.f7933d.get(i);
            String name = noDisturbBean.getName();
            String number = noDisturbBean.getNumber();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "telphone: " + number);
            }
            if (name != null && !"".equals(name)) {
                c2154b.f7473v.setText(name);
                if (number != null) {
                    c2154b.f7474w.setText(number);
                }
                c2154b.f7474w.setVisibility(0);
            } else if (number != null) {
                c2154b.f7473v.setText(number);
                c2154b.f7474w.setVisibility(8);
            }
            c2154b.f7475x.setOnClickListener(new View$OnClickListenerC2152a(i, noDisturbBean));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2154b(this.f7934e.inflate(R$layout.item_block_fragment, viewGroup, false));
    }
}
