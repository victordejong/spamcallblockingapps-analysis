package com.facebook.rebound.ui;

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
import com.facebook.rebound.g;
import com.facebook.rebound.h;
import com.facebook.rebound.i;
import com.facebook.rebound.k;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView.class */
public class SpringConfiguratorView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final DecimalFormat f20140a = new DecimalFormat("#.#");

    /* renamed from: b  reason: collision with root package name */
    private final d f20141b;

    /* renamed from: c  reason: collision with root package name */
    private final List<g> f20142c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.rebound.e f20143d;
    private final float e;
    private final float f;
    private final h g;
    private final int h;
    private SeekBar i;
    private SeekBar j;
    private Spinner k;
    private TextView l;
    private TextView m;
    private g n;

    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$a.class */
    final class a implements View.OnTouchListener {
        private a() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return true;
            }
            SpringConfiguratorView.g(SpringConfiguratorView.this);
            return true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$b.class */
    final class b implements i {
        private b() {
        }

        @Override // com.facebook.rebound.i
        public final void a(com.facebook.rebound.e eVar) {
            float f = (float) eVar.f20128d.f20129a;
            float f2 = SpringConfiguratorView.this.f;
            SpringConfiguratorView.this.setTranslationY((f * (SpringConfiguratorView.this.e - f2)) + f2);
        }

        @Override // com.facebook.rebound.i
        public final void b(com.facebook.rebound.e eVar) {
        }

        @Override // com.facebook.rebound.i
        public final void c(com.facebook.rebound.e eVar) {
        }

        @Override // com.facebook.rebound.i
        public final void d(com.facebook.rebound.e eVar) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$c.class */
    final class c implements SeekBar.OnSeekBarChangeListener {
        private c() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (seekBar == SpringConfiguratorView.this.i) {
                g gVar = SpringConfiguratorView.this.n;
                double d2 = ((i * 200.0f) / 100000.0f) + BitmapDescriptorFactory.HUE_RED;
                gVar.f20137b = com.facebook.rebound.c.a(d2);
                SpringConfiguratorView.this.m.setText("T:".concat(String.valueOf(SpringConfiguratorView.f20140a.format(d2))));
            }
            if (seekBar == SpringConfiguratorView.this.j) {
                g gVar2 = SpringConfiguratorView.this.n;
                double d3 = ((i * 50.0f) / 100000.0f) + BitmapDescriptorFactory.HUE_RED;
                gVar2.f20136a = com.facebook.rebound.c.b(d3);
                SpringConfiguratorView.this.l.setText("F:".concat(String.valueOf(SpringConfiguratorView.f20140a.format(d3))));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$d.class */
    public final class d extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f20147a = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final Context f20149c;

        public d(Context context) {
            this.f20149c = context;
        }

        public final void a(String str) {
            this.f20147a.add(str);
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f20147a.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.f20147a.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = new TextView(this.f20149c);
                textView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                int a2 = com.facebook.rebound.ui.a.a(12.0f, SpringConfiguratorView.this.getResources());
                textView.setPadding(a2, a2, a2, a2);
                textView.setTextColor(SpringConfiguratorView.this.h);
            } else {
                textView = (TextView) view;
            }
            textView.setText(this.f20147a.get(i));
            return textView;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/ui/SpringConfiguratorView$e.class */
    final class e implements AdapterView.OnItemSelectedListener {
        private e() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SpringConfiguratorView springConfiguratorView = SpringConfiguratorView.this;
            springConfiguratorView.n = (g) springConfiguratorView.f20142c.get(i);
            SpringConfiguratorView springConfiguratorView2 = SpringConfiguratorView.this;
            SpringConfiguratorView.b(springConfiguratorView2, springConfiguratorView2.n);
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
        this.f20142c = new ArrayList();
        int argb = Color.argb(255, 225, 225, 225);
        this.h = argb;
        k c2 = k.c();
        this.g = h.a();
        d dVar = new d(context);
        this.f20141b = dVar;
        Resources resources = getResources();
        this.f = com.facebook.rebound.ui.a.a(40.0f, resources);
        float a2 = com.facebook.rebound.ui.a.a(280.0f, resources);
        this.e = a2;
        com.facebook.rebound.e a3 = c2.a();
        this.f20143d = a3;
        a3.a(1.0d).b(1.0d).a(new b());
        Resources resources2 = getResources();
        int a4 = com.facebook.rebound.ui.a.a(5.0f, resources2);
        int a5 = com.facebook.rebound.ui.a.a(10.0f, resources2);
        int a6 = com.facebook.rebound.ui.a.a(20.0f, resources2);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, a4, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(com.facebook.rebound.ui.a.a(-1, com.facebook.rebound.ui.a.a(300.0f, resources2)));
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams a7 = com.facebook.rebound.ui.a.a(-1, -1);
        a7.setMargins(0, a6, 0, 0);
        frameLayout2.setLayoutParams(a7);
        frameLayout2.setBackgroundColor(Color.argb(100, 0, 0, 0));
        frameLayout.addView(frameLayout2);
        this.k = new Spinner(context, 0);
        FrameLayout.LayoutParams a8 = com.facebook.rebound.ui.a.a(-1, -2);
        a8.gravity = 48;
        a8.setMargins(a5, a5, a5, 0);
        this.k.setLayoutParams(a8);
        frameLayout2.addView(this.k);
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams a9 = com.facebook.rebound.ui.a.a(-1, -2);
        a9.setMargins(0, 0, 0, com.facebook.rebound.ui.a.a(80.0f, resources2));
        a9.gravity = 80;
        linearLayout.setLayoutParams(a9);
        linearLayout.setOrientation(1);
        frameLayout2.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        FrameLayout.LayoutParams a10 = com.facebook.rebound.ui.a.a(-1, -2);
        a10.setMargins(a5, a5, a5, a6);
        linearLayout2.setPadding(a5, a5, a5, a5);
        linearLayout2.setLayoutParams(a10);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2);
        SeekBar seekBar = new SeekBar(context);
        this.i = seekBar;
        seekBar.setLayoutParams(layoutParams);
        linearLayout2.addView(this.i);
        TextView textView = new TextView(getContext());
        this.m = textView;
        textView.setTextColor(argb);
        FrameLayout.LayoutParams a11 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.a(50.0f, resources2), -1);
        this.m.setGravity(19);
        this.m.setLayoutParams(a11);
        this.m.setMaxLines(1);
        linearLayout2.addView(this.m);
        LinearLayout linearLayout3 = new LinearLayout(context);
        FrameLayout.LayoutParams a12 = com.facebook.rebound.ui.a.a(-1, -2);
        a12.setMargins(a5, a5, a5, a6);
        linearLayout3.setPadding(a5, a5, a5, a5);
        linearLayout3.setLayoutParams(a12);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3);
        SeekBar seekBar2 = new SeekBar(context);
        this.j = seekBar2;
        seekBar2.setLayoutParams(layoutParams);
        linearLayout3.addView(this.j);
        TextView textView2 = new TextView(getContext());
        this.l = textView2;
        textView2.setTextColor(argb);
        FrameLayout.LayoutParams a13 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.a(50.0f, resources2), -1);
        this.l.setGravity(19);
        this.l.setLayoutParams(a13);
        this.l.setMaxLines(1);
        linearLayout3.addView(this.l);
        View view = new View(context);
        FrameLayout.LayoutParams a14 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.a(60.0f, resources2), com.facebook.rebound.ui.a.a(40.0f, resources2));
        a14.gravity = 49;
        view.setLayoutParams(a14);
        view.setOnTouchListener(new a());
        view.setBackgroundColor(Color.argb(255, 0, 164, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE));
        frameLayout.addView(view);
        addView(frameLayout);
        c cVar = new c();
        this.i.setMax(100000);
        this.i.setOnSeekBarChangeListener(cVar);
        this.j.setMax(100000);
        this.j.setOnSeekBarChangeListener(cVar);
        this.k.setAdapter((SpinnerAdapter) dVar);
        this.k.setOnItemSelectedListener(new e());
        b();
        setTranslationY(a2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b() {
        Map unmodifiableMap = Collections.unmodifiableMap(this.g.f20139a);
        d dVar = this.f20141b;
        dVar.f20147a.clear();
        dVar.notifyDataSetChanged();
        this.f20142c.clear();
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            if (entry.getKey() != g.f20135c) {
                this.f20142c.add(entry.getKey());
                this.f20141b.a((String) entry.getValue());
            }
        }
        this.f20142c.add(g.f20135c);
        this.f20141b.a((String) unmodifiableMap.get(g.f20135c));
        this.f20141b.notifyDataSetChanged();
        if (this.f20142c.size() > 0) {
            this.k.setSelection(0);
        }
    }

    static /* synthetic */ void b(SpringConfiguratorView springConfiguratorView, g gVar) {
        double d2 = gVar.f20137b;
        double d3 = 0.0d;
        int round = Math.round(((((float) (d2 == 0.0d ? 0.0d : ((d2 - 194.0d) / 3.62d) + 30.0d)) - BitmapDescriptorFactory.HUE_RED) * 100000.0f) / 200.0f);
        double d4 = gVar.f20136a;
        if (d4 != 0.0d) {
            d3 = 8.0d + ((d4 - 25.0d) / 3.0d);
        }
        int round2 = Math.round(((((float) d3) - BitmapDescriptorFactory.HUE_RED) * 100000.0f) / 50.0f);
        springConfiguratorView.i.setProgress(round);
        springConfiguratorView.j.setProgress(round2);
    }

    static /* synthetic */ void g(SpringConfiguratorView springConfiguratorView) {
        double d2 = springConfiguratorView.f20143d.h;
        com.facebook.rebound.e eVar = springConfiguratorView.f20143d;
        double d3 = 1.0d;
        if (d2 == 1.0d) {
            d3 = 0.0d;
        }
        eVar.b(d3);
    }
}
