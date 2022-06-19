package com.facebook.rebound.p308ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import com.explorestack.protobuf.openrtb.LossReason;
import com.facebook.rebound.AbstractC10420i;
import com.facebook.rebound.C10412c;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10418g;
import com.facebook.rebound.C10419h;
import com.facebook.rebound.C10422k;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.rebound.ui.SpringConfiguratorView */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView.class */
public class SpringConfiguratorView extends FrameLayout {

    /* renamed from: a */
    private static final DecimalFormat f34101a = new DecimalFormat("#.#");

    /* renamed from: b */
    private final C10428d f34102b;

    /* renamed from: c */
    private final List<C10418g> f34103c;

    /* renamed from: d */
    private final C10414e f34104d;

    /* renamed from: e */
    private final float f34105e;

    /* renamed from: f */
    private final float f34106f;

    /* renamed from: g */
    private final C10419h f34107g;

    /* renamed from: h */
    private final int f34108h;

    /* renamed from: i */
    private SeekBar f34109i;

    /* renamed from: j */
    private SeekBar f34110j;

    /* renamed from: k */
    private Spinner f34111k;

    /* renamed from: l */
    private TextView f34112l;

    /* renamed from: m */
    private TextView f34113m;

    /* renamed from: n */
    private C10418g f34114n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.rebound.ui.SpringConfiguratorView$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$a.class */
    public final class View$OnTouchListenerC10425a implements View.OnTouchListener {
        private View$OnTouchListenerC10425a() {
            SpringConfiguratorView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                SpringConfiguratorView.m22813g(SpringConfiguratorView.this);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.rebound.ui.SpringConfiguratorView$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$b.class */
    public final class C10426b implements AbstractC10420i {
        private C10426b() {
            SpringConfiguratorView.this = r4;
        }

        @Override // com.facebook.rebound.AbstractC10420i
        /* renamed from: a */
        public final void mo22809a(C10414e c10414e) {
            float f = (float) c10414e.f34074d.f34085a;
            float f2 = SpringConfiguratorView.this.f34106f;
            SpringConfiguratorView.this.setTranslationY((f * (SpringConfiguratorView.this.f34105e - f2)) + f2);
        }

        @Override // com.facebook.rebound.AbstractC10420i
        /* renamed from: b */
        public final void mo22808b(C10414e c10414e) {
        }

        @Override // com.facebook.rebound.AbstractC10420i
        /* renamed from: c */
        public final void mo22807c(C10414e c10414e) {
        }

        @Override // com.facebook.rebound.AbstractC10420i
        /* renamed from: d */
        public final void mo22806d(C10414e c10414e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.rebound.ui.SpringConfiguratorView$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$c.class */
    public final class C10427c implements SeekBar.OnSeekBarChangeListener {
        private C10427c() {
            SpringConfiguratorView.this = r4;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (seekBar == SpringConfiguratorView.this.f34109i) {
                C10418g c10418g = SpringConfiguratorView.this.f34114n;
                double d = ((i * 200.0f) / 100000.0f) + BitmapDescriptorFactory.HUE_RED;
                c10418g.f34097b = C10412c.m22849a(d);
                SpringConfiguratorView.this.f34113m.setText("T:".concat(String.valueOf(SpringConfiguratorView.f34101a.format(d))));
            }
            if (seekBar == SpringConfiguratorView.this.f34110j) {
                C10418g c10418g2 = SpringConfiguratorView.this.f34114n;
                double d2 = ((i * 50.0f) / 100000.0f) + BitmapDescriptorFactory.HUE_RED;
                c10418g2.f34096a = C10412c.m22848b(d2);
                SpringConfiguratorView.this.f34112l.setText("F:".concat(String.valueOf(SpringConfiguratorView.f34101a.format(d2))));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* renamed from: com.facebook.rebound.ui.SpringConfiguratorView$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$d.class */
    public final class C10428d extends BaseAdapter {

        /* renamed from: a */
        final List<String> f34118a = new ArrayList();

        /* renamed from: c */
        private final Context f34120c;

        public C10428d(Context context) {
            SpringConfiguratorView.this = r5;
            this.f34120c = context;
        }

        /* renamed from: a */
        public final void m22805a(String str) {
            this.f34118a.add(str);
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f34118a.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.f34118a.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = new TextView(this.f34120c);
                textView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                int m22804a = AbstractC10430a.m22804a(12.0f, SpringConfiguratorView.this.getResources());
                textView.setPadding(m22804a, m22804a, m22804a, m22804a);
                textView.setTextColor(SpringConfiguratorView.this.f34108h);
            } else {
                textView = (TextView) view;
            }
            textView.setText(this.f34118a.get(i));
            return textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.rebound.ui.SpringConfiguratorView$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$e.class */
    public final class C10429e implements AdapterView.OnItemSelectedListener {
        private C10429e() {
            SpringConfiguratorView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SpringConfiguratorView springConfiguratorView = SpringConfiguratorView.this;
            springConfiguratorView.f34114n = (C10418g) springConfiguratorView.f34103c.get(i);
            SpringConfiguratorView springConfiguratorView2 = SpringConfiguratorView.this;
            SpringConfiguratorView.m22818b(springConfiguratorView2, springConfiguratorView2.f34114n);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public SpringConfiguratorView(Context context) {
        this(context, null);
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f34103c = new ArrayList();
        int argb = Color.argb(255, 225, 225, 225);
        this.f34108h = argb;
        C10422k m22825c = C10422k.m22825c();
        this.f34107g = C10419h.m22830a();
        C10428d c10428d = new C10428d(context);
        this.f34102b = c10428d;
        Resources resources = getResources();
        this.f34106f = AbstractC10430a.m22804a(40.0f, resources);
        float m22804a = AbstractC10430a.m22804a(280.0f, resources);
        this.f34105e = m22804a;
        C10414e a = m22825c.m22856a();
        this.f34104d = a;
        a.m22846a(1.0d).m22840b(1.0d).m22842a(new C10426b());
        Resources resources2 = getResources();
        int m22804a2 = AbstractC10430a.m22804a(5.0f, resources2);
        int m22804a3 = AbstractC10430a.m22804a(10.0f, resources2);
        int m22804a4 = AbstractC10430a.m22804a(20.0f, resources2);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, m22804a2, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(AbstractC10430a.m22803a(-1, AbstractC10430a.m22804a(300.0f, resources2)));
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams m22803a = AbstractC10430a.m22803a(-1, -1);
        m22803a.setMargins(0, m22804a4, 0, 0);
        frameLayout2.setLayoutParams(m22803a);
        frameLayout2.setBackgroundColor(Color.argb(100, 0, 0, 0));
        frameLayout.addView(frameLayout2);
        this.f34111k = new Spinner(context, 0);
        FrameLayout.LayoutParams m22803a2 = AbstractC10430a.m22803a(-1, -2);
        m22803a2.gravity = 48;
        m22803a2.setMargins(m22804a3, m22804a3, m22804a3, 0);
        this.f34111k.setLayoutParams(m22803a2);
        frameLayout2.addView(this.f34111k);
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams m22803a3 = AbstractC10430a.m22803a(-1, -2);
        m22803a3.setMargins(0, 0, 0, AbstractC10430a.m22804a(80.0f, resources2));
        m22803a3.gravity = 80;
        linearLayout.setLayoutParams(m22803a3);
        linearLayout.setOrientation(1);
        frameLayout2.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        FrameLayout.LayoutParams m22803a4 = AbstractC10430a.m22803a(-1, -2);
        m22803a4.setMargins(m22804a3, m22804a3, m22804a3, m22804a4);
        linearLayout2.setPadding(m22804a3, m22804a3, m22804a3, m22804a3);
        linearLayout2.setLayoutParams(m22803a4);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2);
        SeekBar seekBar = new SeekBar(context);
        this.f34109i = seekBar;
        seekBar.setLayoutParams(layoutParams);
        linearLayout2.addView(this.f34109i);
        TextView textView = new TextView(getContext());
        this.f34113m = textView;
        textView.setTextColor(argb);
        FrameLayout.LayoutParams m22803a5 = AbstractC10430a.m22803a(AbstractC10430a.m22804a(50.0f, resources2), -1);
        this.f34113m.setGravity(19);
        this.f34113m.setLayoutParams(m22803a5);
        this.f34113m.setMaxLines(1);
        linearLayout2.addView(this.f34113m);
        LinearLayout linearLayout3 = new LinearLayout(context);
        FrameLayout.LayoutParams m22803a6 = AbstractC10430a.m22803a(-1, -2);
        m22803a6.setMargins(m22804a3, m22804a3, m22804a3, m22804a4);
        linearLayout3.setPadding(m22804a3, m22804a3, m22804a3, m22804a3);
        linearLayout3.setLayoutParams(m22803a6);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3);
        SeekBar seekBar2 = new SeekBar(context);
        this.f34110j = seekBar2;
        seekBar2.setLayoutParams(layoutParams);
        linearLayout3.addView(this.f34110j);
        TextView textView2 = new TextView(getContext());
        this.f34112l = textView2;
        textView2.setTextColor(argb);
        FrameLayout.LayoutParams m22803a7 = AbstractC10430a.m22803a(AbstractC10430a.m22804a(50.0f, resources2), -1);
        this.f34112l.setGravity(19);
        this.f34112l.setLayoutParams(m22803a7);
        this.f34112l.setMaxLines(1);
        linearLayout3.addView(this.f34112l);
        View view = new View(context);
        FrameLayout.LayoutParams m22803a8 = AbstractC10430a.m22803a(AbstractC10430a.m22804a(60.0f, resources2), AbstractC10430a.m22804a(40.0f, resources2));
        m22803a8.gravity = 49;
        view.setLayoutParams(m22803a8);
        view.setOnTouchListener(new View$OnTouchListenerC10425a());
        view.setBackgroundColor(Color.argb(255, 0, 164, (int) LossReason.f33015xd24c0733));
        frameLayout.addView(view);
        addView(frameLayout);
        C10427c c10427c = new C10427c();
        this.f34109i.setMax(100000);
        this.f34109i.setOnSeekBarChangeListener(c10427c);
        this.f34110j.setMax(100000);
        this.f34110j.setOnSeekBarChangeListener(c10427c);
        this.f34111k.setAdapter((SpinnerAdapter) c10428d);
        this.f34111k.setOnItemSelectedListener(new C10429e());
        m22820b();
        setTranslationY(m22804a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m22820b() {
        Map unmodifiableMap = Collections.unmodifiableMap(this.f34107g.f34099a);
        C10428d c10428d = this.f34102b;
        c10428d.f34118a.clear();
        c10428d.notifyDataSetChanged();
        this.f34103c.clear();
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            if (entry.getKey() != C10418g.f34095c) {
                this.f34103c.add(entry.getKey());
                this.f34102b.m22805a((String) entry.getValue());
            }
        }
        this.f34103c.add(C10418g.f34095c);
        this.f34102b.m22805a((String) unmodifiableMap.get(C10418g.f34095c));
        this.f34102b.notifyDataSetChanged();
        if (this.f34103c.size() > 0) {
            this.f34111k.setSelection(0);
        }
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v31, types: [double] */
    /* renamed from: b */
    static /* synthetic */ void m22818b(SpringConfiguratorView springConfiguratorView, C10418g c10418g) {
        double d = c10418g.f34097b;
        int round = Math.round((((d == 0.0d ? (char) 0 : ((d - 194.0d) / 3.62d) + 30.0d) - BitmapDescriptorFactory.HUE_RED) * 100000.0f) / 200.0f);
        double d2 = c10418g.f34096a;
        int round2 = Math.round((((d2 == 0.0d ? (char) 0 : 8.0d + ((d2 - 25.0d) / 3.0d)) - BitmapDescriptorFactory.HUE_RED) * 100000.0f) / 50.0f);
        springConfiguratorView.f34109i.setProgress(round);
        springConfiguratorView.f34110j.setProgress(round2);
    }

    /* renamed from: g */
    static /* synthetic */ void m22813g(SpringConfiguratorView springConfiguratorView) {
        double d = springConfiguratorView.f34104d.f34078h;
        C10414e c10414e = springConfiguratorView.f34104d;
        Object[] objArr = 4607182418800017408;
        if (d == 1.0d) {
            objArr = null;
        }
        c10414e.m22840b(objArr == 1 ? 1.0d : 0.0d);
    }
}
