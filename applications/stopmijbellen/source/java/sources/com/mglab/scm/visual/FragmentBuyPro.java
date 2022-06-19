package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import java.util.Date;
import java.util.HashMap;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2768a;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3383a0;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro.class */
public class FragmentBuyPro extends Fragment {

    /* renamed from: a */
    public Unbinder f7392a;
    @BindView
    public Button buttonContinuePurchase;
    @BindView
    public CardView cardView1_1;
    @BindView
    public CardView cardView2_1;
    @BindView
    public CardView cardView3_1;
    @BindView
    public CardView cardView4_1;

    /* renamed from: e */
    public Date f7396e;
    @BindView
    public LinearLayout progressLL;
    @BindView
    public TextView textView1_1;
    @BindView
    public TextView textView1_2;
    @BindView
    public TextView textView1_3;
    @BindView
    public TextView textView1_4;
    @BindView
    public TextView textView1_5;
    @BindView
    public TextView textView2_1;
    @BindView
    public TextView textView2_2;
    @BindView
    public TextView textView2_3;
    @BindView
    public TextView textView2_4;
    @BindView
    public TextView textView2_5;
    @BindView
    public TextView textView3_1;
    @BindView
    public TextView textView3_2;
    @BindView
    public TextView textView3_3;
    @BindView
    public TextView textView3_4;
    @BindView
    public TextView textView3_5;
    @BindView
    public TextView textView4_1;
    @BindView
    public TextView textView4_2;
    @BindView
    public TextView textView4_3;
    @BindView
    public TextView textView4_4;

    /* renamed from: b */
    public int f7393b = 2;

    /* renamed from: c */
    public boolean f7394c = false;

    /* renamed from: d */
    public int f7395d = 30;

    /* JADX WARN: Type inference failed for: r0v253, types: [long] */
    @SuppressLint({"SetTextI18n", "DefaultLocale"})
    /* renamed from: a */
    public void m3950a() {
        this.progressLL.setVisibility(8);
        int color = getResources().getColor(2131099739);
        int color2 = getResources().getColor(2131099737);
        int color3 = getResources().getColor(2131099735);
        this.cardView1_1.setCardBackgroundColor(this.f7393b == 1 ? color : color2);
        this.cardView2_1.setCardBackgroundColor(this.f7393b == 2 ? color : color2);
        this.cardView3_1.setCardBackgroundColor(this.f7393b == 3 ? color : color2);
        CardView cardView = this.cardView4_1;
        if (this.f7393b == 4) {
            color2 = color;
        }
        cardView.setCardBackgroundColor(color2);
        this.textView1_1.setTextColor(this.f7393b == 1 ? color : color3);
        this.textView1_2.setTextColor(this.f7393b == 1 ? color : color3);
        this.textView1_3.setTextColor(this.f7393b == 1 ? color : color3);
        this.textView1_4.setTextColor(this.f7393b == 1 ? color : color3);
        this.textView1_5.setTextColor(this.f7393b == 1 ? color : color3);
        this.textView2_1.setTextColor(this.f7393b == 2 ? color : color3);
        this.textView2_2.setTextColor(this.f7393b == 2 ? color : color3);
        this.textView2_3.setTextColor(this.f7393b == 2 ? color : color3);
        this.textView2_4.setTextColor(this.f7393b == 2 ? color : color3);
        this.textView2_5.setTextColor(this.f7393b == 2 ? color : color3);
        this.textView3_1.setTextColor(this.f7393b == 3 ? color : color3);
        this.textView3_2.setTextColor(this.f7393b == 3 ? color : color3);
        this.textView3_3.setTextColor(this.f7393b == 3 ? color : color3);
        this.textView3_4.setTextColor(this.f7393b == 3 ? color : color3);
        this.textView3_5.setTextColor(this.f7393b == 3 ? color : color3);
        this.textView4_1.setTextColor(this.f7393b == 4 ? color : color3);
        this.textView4_2.setTextColor(this.f7393b == 4 ? color : color3);
        this.textView4_3.setTextColor(this.f7393b == 4 ? color : color3);
        TextView textView = this.textView4_4;
        if (this.f7393b != 4) {
            color = color3;
        }
        textView.setTextColor(color);
        char c = 1;
        if (((HashMap) C2768a.f9470c).containsKey("1month")) {
            Bundle bundle = (Bundle) ((HashMap) C2768a.f9470c).get("1month");
            c = bundle.getLong("PriceAmountMicros", 0L);
            this.textView1_5.setText(bundle.getString("Price", "?"));
            this.textView1_3.setText(bundle.getString("Price", "?") + "/" + getString(2131820637));
        }
        if (((HashMap) C2768a.f9470c).containsKey("6months")) {
            Bundle bundle2 = (Bundle) ((HashMap) C2768a.f9470c).get("6months");
            this.textView2_5.setText(bundle2.getString("Price", "?"));
            float f = (float) bundle2.getLong("PriceAmountMicros", 0L);
            float f2 = f / 6000000.0f;
            String replaceAll = bundle2.getString("Price", "?").replaceAll("[\\d.,]", "");
            this.textView2_3.setText(String.format("%.2f", Float.valueOf(f2)) + replaceAll + "/" + getString(2131820637));
            this.textView2_4.setText(getString(2131820641, String.format("%.2f", Float.valueOf(100.0f - (((f / 6.0f) / ((float) c)) * 100.0f)))));
        }
        if (((HashMap) C2768a.f9470c).containsKey("12months")) {
            Bundle bundle3 = (Bundle) ((HashMap) C2768a.f9470c).get("12months");
            this.textView3_5.setText(bundle3.getString("Price", "?"));
            float f3 = (float) bundle3.getLong("PriceAmountMicros", 0L);
            float f4 = f3 / 1.2E7f;
            String replaceAll2 = bundle3.getString("Price", "?").replaceAll("[\\d.,]", "");
            this.textView3_3.setText(String.format("%.2f", Float.valueOf(f4)) + replaceAll2 + "/" + getString(2131820637));
            this.textView3_4.setText(getString(2131820641, String.format("%.2f", Float.valueOf(100.0f - (((f3 / 12.0f) / ((float) c)) * 100.0f)))));
        }
        if (((HashMap) C2768a.f9470c).containsKey("lifetime")) {
            Bundle bundle4 = (Bundle) ((HashMap) C2768a.f9470c).get("lifetime");
            if (this.f7394c) {
                float f5 = ((((float) bundle4.getLong("PriceAmountMicros", 0L)) / 1000000.0f) * 100.0f) / (100 - this.f7395d);
                this.textView4_2.setText(getString(2131820640, String.format("%.2f", Float.valueOf(f5)) + bundle4.getString("Price", "?").replaceAll("[\\d.,]", "")));
                TextView textView2 = this.textView4_2;
                textView2.setPaintFlags(textView2.getPaintFlags() | 16);
                this.textView4_3.setText(getString(2131820639, bundle4.getString("Price", "?")));
                this.textView4_4.setText(getString(2131820634, String.valueOf(this.f7395d), C2779g.m3096s(requireContext(), this.f7396e)));
            } else {
                this.textView4_3.setText(bundle4.getString("Price", "?"));
            }
            this.textView4_2.setVisibility(this.f7394c ? 0 : 8);
            this.textView4_4.setVisibility(this.f7394c ? 0 : 8);
        }
    }

    @OnClick
    public void onButtonContinuePurchaseClick() {
        int i = this.f7393b;
        if (i == 1) {
            C0748b.m7409b().m7404g(new C3383a0("1month"));
        } else if (i == 2) {
            C0748b.m7409b().m7404g(new C3383a0("6months"));
        } else if (i == 3) {
            C0748b.m7409b().m7404g(new C3383a0("12months"));
        } else if (i != 4) {
            C2779g.m3121L(getContext(), null, "onButtonBuyClick incorrect purchase type");
        } else {
            C0748b.m7409b().m7404g(new C3383a0("lifetime"));
        }
    }

    @OnClick
    public void onClick1() {
        this.f7393b = 1;
        m3950a();
    }

    @OnClick
    public void onClick2() {
        this.f7393b = 2;
        m3950a();
    }

    @OnClick
    public void onClick3() {
        this.f7393b = 3;
        m3950a();
    }

    @OnClick
    public void onClick4() {
        this.f7393b = 4;
        m3950a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492952, viewGroup, false);
        this.f7392a = ButterKnife.m7385a(this, inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7392a.mo3937a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(2131296319).setVisible(false);
        menu.findItem(2131296318).setVisible(false);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        requireActivity().setTitle(2131820643);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820643);
        }
        Date m3117P = C2779g.m3117P(C2780h.m3055d0(requireContext(), "disexpdate", "0"), "yyyy-MM-dd");
        this.f7396e = m3117P;
        boolean z = m3117P != null && new Date().before(this.f7396e);
        this.f7394c = z;
        this.f7393b = z ? 4 : 2;
        if (z) {
            this.f7395d = C2780h.m3028r(requireContext(), "dispercent", 1).intValue();
        }
        m3950a();
    }
}
