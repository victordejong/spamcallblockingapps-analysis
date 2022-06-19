package com.allinone.callerid.p144d.p145a;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.main.C3067a;
import com.allinone.callerid.p144d.p145a.p146e.AbstractC2472a;
import com.allinone.callerid.util.C3719c1;
/* renamed from: com.allinone.callerid.d.a.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/d.class */
public class C2468d extends AbstractC2472a<HomeInfo> {

    /* renamed from: f */
    private final int f8782f;

    /* renamed from: g */
    private Context f8783g;

    /* renamed from: h */
    private Activity f8784h;

    /* renamed from: i */
    private AbstractC2470b f8785i;

    /* renamed from: com.allinone.callerid.d.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/d$a.class */
    class View$OnClickListenerC2469a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8786d;

        View$OnClickListenerC2469a(HomeInfo homeInfo) {
            C2468d.this = r4;
            this.f8786d = homeInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C2468d.this.f8785i.mo27284a(this.f8786d);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.a.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/d$b.class */
    public interface AbstractC2470b {
        /* renamed from: a */
        void mo27284a(HomeInfo homeInfo);
    }

    /* renamed from: com.allinone.callerid.d.a.d$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/d$c.class */
    private static class C2471c extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f8788u;

        /* renamed from: v */
        private ImageView f8789v;

        C2471c(View view) {
            super(view);
            this.f8788u = (FrameLayout) view.findViewById(R$id.item_home_click);
            this.f8789v = (ImageView) view.findViewById(R$id.item_home_image);
        }
    }

    public C2468d(Context context) {
        super(context);
        this.f8783g = context;
        Activity activity = (Activity) context;
        this.f8784h = activity;
        this.f8782f = C3719c1.m24431b(activity, R$attr.image_default, R$drawable.image_loading);
    }

    /* renamed from: D */
    public void m27285D(AbstractC2470b abstractC2470b) {
        this.f8785i = abstractC2470b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2471c c2471c = (C2471c) abstractC0905b0;
        HomeInfo homeInfo = (HomeInfo) this.f8790d.get(i);
        C3067a.m26102b(this.f8783g).mo23629s(homeInfo.getPath()).mo22633Z(this.f8782f).m23660A0(c2471c.f8789v);
        c2471c.f8788u.setOnClickListener(new View$OnClickListenerC2469a(homeInfo));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2471c(this.f8791e.inflate(R$layout.item_select_video, viewGroup, false));
    }
}
