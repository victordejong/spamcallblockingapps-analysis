package com.allinone.callerid.p144d.p145a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.main.C3067a;
import com.allinone.callerid.p144d.p145a.p146e.AbstractC2472a;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3871w0;
import com.bumptech.glide.request.C4401e;
import org.xutils.common.util.DensityUtil;
import pl.droidsonroids.gif.C9692c;
/* renamed from: com.allinone.callerid.d.a.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b.class */
public class C2457b extends AbstractC2472a<HomeInfo> {

    /* renamed from: f */
    private final C4401e f8745f;

    /* renamed from: g */
    private final int f8746g;

    /* renamed from: h */
    private Context f8747h;

    /* renamed from: i */
    private Activity f8748i;

    /* renamed from: j */
    public boolean f8749j = false;

    /* renamed from: k */
    private AbstractC2462e f8750k;

    /* renamed from: l */
    private AbstractC2463f f8751l;

    /* renamed from: com.allinone.callerid.d.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b$a.class */
    class View$OnClickListenerC2458a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8752d;

        View$OnClickListenerC2458a(HomeInfo homeInfo) {
            C2457b.this = r4;
            this.f8752d = homeInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2457b.this.f8751l.mo27160a(this.f8752d);
        }
    }

    /* renamed from: com.allinone.callerid.d.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b$b.class */
    class View$OnClickListenerC2459b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8754d;

        View$OnClickListenerC2459b(HomeInfo homeInfo) {
            C2457b.this = r4;
            this.f8754d = homeInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2457b.this.f8750k.mo27161a(this.f8754d);
        }
    }

    /* renamed from: com.allinone.callerid.d.a.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b$c.class */
    private static class C2460c extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f8756u;

        /* renamed from: v */
        private ImageView f8757v;

        /* renamed from: w */
        private ImageView f8758w;

        /* renamed from: x */
        private TextView f8759x;

        /* renamed from: y */
        private ImageView f8760y;

        C2460c(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            this.f8756u = (FrameLayout) view.findViewById(R$id.item_home_click);
            this.f8757v = (ImageView) view.findViewById(R$id.item_home_image);
            this.f8758w = (ImageView) view.findViewById(R$id.iv_diy);
            this.f8759x = (TextView) view.findViewById(R$id.tv_diy);
            this.f8760y = (ImageView) view.findViewById(R$id.iv_selected);
            this.f8759x.setTypeface(m24359b);
        }
    }

    /* renamed from: com.allinone.callerid.d.a.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b$d.class */
    private static class C2461d extends RecyclerView.AbstractC0905b0 {

        /* renamed from: A */
        TextView f8761A;

        /* renamed from: u */
        FrameLayout f8762u;

        /* renamed from: v */
        ImageView f8763v;

        /* renamed from: w */
        ImageView f8764w;

        /* renamed from: x */
        ImageView f8765x;

        /* renamed from: y */
        ImageView f8766y;

        /* renamed from: z */
        TextView f8767z;

        C2461d(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            this.f8762u = (FrameLayout) view.findViewById(R$id.item_home_click);
            this.f8763v = (ImageView) view.findViewById(R$id.item_home_image);
            this.f8764w = (ImageView) view.findViewById(R$id.iv_selected);
            this.f8765x = (ImageView) view.findViewById(R$id.iv_fav);
            this.f8766y = (ImageView) view.findViewById(R$id.iv_lock);
            this.f8767z = (TextView) view.findViewById(R$id.tv_fav_count);
            this.f8761A = (TextView) view.findViewById(R$id.tv_name);
            this.f8767z.setTypeface(m24359b);
            this.f8761A.setTypeface(m24359b);
        }
    }

    /* renamed from: com.allinone.callerid.d.a.b$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b$e.class */
    public interface AbstractC2462e {
        /* renamed from: a */
        void mo27161a(HomeInfo homeInfo);
    }

    /* renamed from: com.allinone.callerid.d.a.b$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/b$f.class */
    public interface AbstractC2463f {
        /* renamed from: a */
        void mo27160a(HomeInfo homeInfo);
    }

    public C2457b(Context context) {
        super(context);
        this.f8747h = context;
        this.f8748i = (Activity) context;
        C3871w0 c3871w0 = new C3871w0(this.f8747h, DensityUtil.dip2px(4.0f));
        c3871w0.m23903c(true, true, true, true);
        this.f8745f = new C4401e().mo22615j0(c3871w0);
        this.f8746g = C3719c1.m24431b(this.f8747h, R$attr.image_default, R$drawable.image_loading);
    }

    /* renamed from: E */
    public void m27305E(AbstractC2462e abstractC2462e) {
        this.f8750k = abstractC2462e;
    }

    /* renamed from: F */
    public void m27304F(AbstractC2463f abstractC2463f) {
        this.f8751l = abstractC2463f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        return i == 1 ? 666 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        int mo4499f = mo4499f(i);
        if (mo4499f != 0) {
            if (mo4499f != 666) {
                return;
            }
            C2460c c2460c = (C2460c) abstractC0905b0;
            HomeInfo homeInfo = (HomeInfo) this.f8790d.get(i);
            if (homeInfo.isDefautl_diy()) {
                c2460c.f8760y.setVisibility(0);
                c2460c.f8758w.setVisibility(8);
                c2460c.f8759x.setVisibility(8);
                C3067a.m26102b(this.f8747h).mo23637k().mo23655F0(homeInfo.getPath()).mo22617i0(false).mo23651p0(this.f8745f).mo22633Z(R$drawable.diy_bg).m23660A0(c2460c.f8757v);
            } else {
                C3067a.m26102b(this.f8747h).mo23637k().m26069S0(Integer.valueOf((int) R$drawable.diy_bg)).mo22617i0(true).mo23651p0(this.f8745f).mo22633Z(R$drawable.diy_bg).m23660A0(c2460c.f8757v);
                c2460c.f8760y.setVisibility(8);
                c2460c.f8758w.setVisibility(0);
                c2460c.f8759x.setVisibility(0);
            }
            c2460c.f8756u.setOnClickListener(new View$OnClickListenerC2458a(homeInfo));
            return;
        }
        C2461d c2461d = (C2461d) abstractC0905b0;
        HomeInfo homeInfo2 = (HomeInfo) this.f8790d.get(i);
        if (!this.f8749j) {
            C3067a.m26102b(this.f8747h).mo23637k().mo23655F0(homeInfo2.getJpgimg_url()).mo22617i0(false).mo23651p0(this.f8745f).mo22633Z(this.f8746g).m23660A0(c2461d.f8763v);
        } else if (homeInfo2.getGifimg_url() != null && !"".equals(homeInfo2.getGifimg_url())) {
            C3067a.m26102b(this.f8747h).mo23638j(C9692c.class).mo23655F0(homeInfo2.getGifimg_url()).mo22633Z(this.f8746g).m23660A0(c2461d.f8763v);
        }
        c2461d.f8761A.setText(homeInfo2.getName());
        c2461d.f8767z.setText(String.valueOf(homeInfo2.getLike_count()));
        if (homeInfo2.isIsselect()) {
            c2461d.f8764w.setVisibility(0);
        } else {
            c2461d.f8764w.setVisibility(8);
        }
        if (homeInfo2.isIslike()) {
            c2461d.f8765x.setImageResource(R$drawable.ic_favorite_16dp);
        } else {
            c2461d.f8765x.setImageResource(R$drawable.ic_favorite_outline_16dp);
        }
        if (homeInfo2.isDownloaded()) {
            c2461d.f8766y.setVisibility(8);
        } else if (homeInfo2.isUnLock()) {
            c2461d.f8766y.setVisibility(8);
        } else {
            c2461d.f8766y.setVisibility(0);
        }
        c2461d.f8762u.setOnClickListener(new View$OnClickListenerC2459b(homeInfo2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return i == 666 ? new C2460c(this.f8791e.inflate(R$layout.item_diy, viewGroup, false)) : new C2461d(this.f8791e.inflate(R$layout.item_home, viewGroup, false));
    }
}
