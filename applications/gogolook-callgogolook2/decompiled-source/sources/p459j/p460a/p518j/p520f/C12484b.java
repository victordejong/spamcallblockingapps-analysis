package p459j.p460a.p518j.p520f;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$integer;
import gogolook.callgogolook2.R$mipmap;
import java.util.HashMap;
import p459j.p460a.p518j.p519e.C12479a;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
/* renamed from: j.a.j.f.b */
/* loaded from: classes2-dex2jar.jar:j/a/j/f/b.class */
public class C12484b extends RelativeLayout {

    /* renamed from: a */
    public RelativeLayout f28131a;

    /* renamed from: b */
    public RelativeLayout f28132b;

    /* renamed from: c */
    public ImageView f28133c;

    /* renamed from: d */
    public ImageView f28134d;

    /* renamed from: e */
    public RelativeLayout f28135e;

    /* renamed from: f */
    public ImageView f28136f;

    /* renamed from: g */
    public RelativeLayout f28137g;

    /* renamed from: h */
    public TextView f28138h;

    /* renamed from: i */
    public TextView f28139i;

    /* renamed from: j */
    public RelativeLayout f28140j;

    /* renamed from: k */
    public LinearLayout f28141k;

    /* renamed from: l */
    public RelativeLayout f28142l;

    /* renamed from: m */
    public boolean f28143m = false;

    /* renamed from: n */
    public boolean f28144n = true;

    /* renamed from: o */
    public boolean f28145o = true;

    /* renamed from: p */
    public boolean f28146p = true;

    /* renamed from: q */
    public boolean f28147q = false;

    /* renamed from: r */
    public boolean f28148r = false;

    /* renamed from: s */
    public int f28149s = -1;

    /* renamed from: t */
    public int f28150t = 130;

    /* renamed from: u */
    public HashMap<Integer, C12483a> f28151u = new HashMap<>();

    /* renamed from: v */
    public HashMap<Integer, View> f28152v = new HashMap<>();

    /* renamed from: w */
    public View.OnClickListener f28153w;

    /* renamed from: j.a.j.f.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/j/f/b$a.class */
    public class View$OnClickListenerC12485a implements View.OnClickListener {
        public View$OnClickListenerC12485a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12484b.this.f28153w != null) {
                C12484b.this.f28153w.onClick(view);
            } else if (C12484b.this.f28148r || !C12484b.this.f28140j.isShown()) {
                C12484b.this.m6042b().onOptionsItemSelected(C12479a.m6054b());
            } else {
                C12484b.this.m6027e();
            }
        }
    }

    /* renamed from: j.a.j.f.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/j/f/b$b.class */
    public class View$OnClickListenerC12486b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ MenuItem f28155a;

        public View$OnClickListenerC12486b(MenuItem menuItem) {
            this.f28155a = menuItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f28155a.isEnabled()) {
                C12484b.this.m6042b().onOptionsItemSelected(this.f28155a);
            }
        }
    }

    public C12484b(Context context) {
        super(context);
        setBackgroundResource(2131230730);
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.whoscall_action_bar_height);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.height = dimensionPixelSize;
        this.f28131a = new RelativeLayout(context);
        addView(this.f28131a, layoutParams);
        new RelativeLayout.LayoutParams(-2, -2).height = dimensionPixelSize;
        this.f28132b = new RelativeLayout(context);
        this.f28132b.setBackgroundResource(R$drawable.actionbar_selector);
        this.f28132b.setPadding(0, 0, resources.getDimensionPixelSize(R$dimen.icon_layout_right_padding), 0);
        this.f28131a.addView(this.f28132b);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        this.f28133c = new ImageView(context);
        this.f28133c.setVisibility(8);
        this.f28133c.setPadding(resources.getDimensionPixelSize(R$dimen.app_icon_left_padding), 0, 0, 0);
        this.f28133c.setImageResource(R$mipmap.ic_launcher);
        this.f28132b.addView(this.f28133c, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(15);
        this.f28134d = new ImageView(context);
        this.f28134d.setVisibility(8);
        this.f28134d.setPadding(resources.getDimensionPixelSize(R$dimen.logo_icon_left_padding), 0, 0, 0);
        this.f28132b.addView(this.f28134d, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(11);
        layoutParams4.height = dimensionPixelSize;
        this.f28141k = new LinearLayout(context);
        this.f28141k.setId(R$id.menu_layout);
        this.f28141k.setOrientation(0);
        this.f28141k.setGravity(16);
        this.f28131a.addView(this.f28141k, layoutParams4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(9);
        layoutParams5.addRule(0, this.f28141k.getId());
        layoutParams5.height = dimensionPixelSize;
        this.f28135e = new RelativeLayout(context);
        this.f28135e.setPadding(0, 0, resources.getDimensionPixelSize(R$dimen.home_layout_right_padding), 0);
        this.f28131a.addView(this.f28135e, layoutParams5);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(15);
        layoutParams6.width = dimensionPixelSize;
        layoutParams6.height = dimensionPixelSize;
        this.f28136f = new ImageView(context);
        this.f28136f.setId(R$id.home_as_up_button);
        this.f28136f.setImageResource(R$drawable.actionbar_back_btn);
        this.f28136f.setBackgroundResource(R$drawable.actionbar_selector);
        this.f28135e.addView(this.f28136f, layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(15);
        layoutParams7.addRule(1, this.f28136f.getId());
        layoutParams7.leftMargin = resources.getDimensionPixelSize(R$dimen.title_left_margin);
        this.f28137g = new RelativeLayout(context);
        this.f28135e.addView(this.f28137g, layoutParams7);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        this.f28138h = new TextView(context);
        this.f28138h.setId(2131363302);
        this.f28138h.setTextColor(-1);
        this.f28138h.setTextSize(resources.getInteger(R$integer.title_text_size));
        this.f28138h.setMaxLines(1);
        this.f28137g.addView(this.f28138h, layoutParams8);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams9.addRule(3, this.f28138h.getId());
        this.f28139i = new TextView(context);
        this.f28139i.setTextColor(-1);
        this.f28139i.setTextSize(resources.getInteger(R$integer.sub_title_text_size));
        this.f28139i.setVisibility(8);
        this.f28139i.setMaxLines(1);
        this.f28137g.addView(this.f28139i, layoutParams9);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams10.addRule(15);
        layoutParams10.addRule(1, this.f28136f.getId());
        this.f28140j = new RelativeLayout(context);
        this.f28135e.addView(this.f28140j, layoutParams10);
        this.f28140j.setVisibility(8);
        ViewGroup.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -2);
        this.f28142l = new RelativeLayout(context);
        addView(this.f28142l, layoutParams11);
        m6022g();
        m6024f();
    }

    /* renamed from: a */
    public View m6049a(int i) {
        return this.f28152v.get(Integer.valueOf(i));
    }

    /* renamed from: a */
    public C12483a m6046a(MenuItem menuItem) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        C12483a aVar = new C12483a(getContext());
        this.f28141k.addView(aVar, layoutParams);
        this.f28151u.put(Integer.valueOf(menuItem.getItemId()), aVar);
        aVar.setOnClickListener(new View$OnClickListenerC12486b(menuItem));
        if (menuItem.hasSubMenu()) {
            int i = 0;
            boolean z = false;
            for (int i2 = 0; i2 < menuItem.getSubMenu().size(); i2++) {
                if (menuItem.getSubMenu().getItem(i2).isVisible()) {
                    z = true;
                }
            }
            if (!z) {
                i = 8;
            }
            aVar.setVisibility(i);
        }
        if (menuItem.isEnabled()) {
            aVar.m6051a(menuItem, this.f28149s, 255);
        } else {
            aVar.m6051a(menuItem, this.f28149s, this.f28150t);
        }
        return aVar;
    }

    /* renamed from: a */
    public void m6050a() {
        this.f28141k.removeAllViews();
    }

    /* renamed from: a */
    public void m6048a(int i, int i2) {
        View inflate = m6042b().getLayoutInflater().inflate(i2, (ViewGroup) null);
        this.f28152v.put(Integer.valueOf(i), inflate);
        this.f28140j.addView(inflate, -1, -2);
        inflate.setVisibility(8);
    }

    /* renamed from: a */
    public void m6047a(Menu menu) {
        if (menu != null) {
            for (int i = 0; i < menu.size(); i++) {
                m6040b(menu.getItem(i));
            }
        }
    }

    /* renamed from: a */
    public void m6044a(CharSequence charSequence) {
        this.f28139i.setText(charSequence);
        TextView textView = this.f28139i;
        textView.setVisibility(TextUtils.isEmpty(textView.getText()) ? 8 : 0);
    }

    /* renamed from: a */
    public void m6043a(boolean z) {
        this.f28145o = z;
        if (z) {
            this.f28136f.setVisibility(0);
        } else {
            this.f28136f.setVisibility(8);
        }
    }

    /* renamed from: b */
    public final Activity m6042b() {
        return (Activity) getContext();
    }

    /* renamed from: b */
    public void m6041b(int i) {
        this.f28136f.setImageResource(i);
    }

    /* renamed from: b */
    public final void m6040b(MenuItem menuItem) {
        C12483a aVar = this.f28151u.get(Integer.valueOf(menuItem.getItemId()));
        if (menuItem.isEnabled()) {
            aVar.m6051a(menuItem, this.f28149s, 255);
        } else {
            aVar.m6051a(menuItem, this.f28149s, this.f28150t);
        }
    }

    /* renamed from: b */
    public void m6038b(CharSequence charSequence) {
        this.f28138h.setText(charSequence);
    }

    /* renamed from: b */
    public void m6037b(boolean z) {
        this.f28148r = z;
        if (z) {
            this.f28137g.setVisibility(8);
            this.f28140j.setVisibility(0);
            return;
        }
        this.f28137g.setVisibility(0);
        this.f28140j.setVisibility(8);
    }

    /* renamed from: c */
    public int m6036c() {
        if (getBackground() instanceof ColorDrawable) {
            return ((ColorDrawable) getBackground()).getColor();
        }
        return 1;
    }

    /* renamed from: c */
    public void m6035c(int i) {
        this.f28139i.setTextColor(i);
    }

    /* renamed from: c */
    public void m6034c(MenuItem menuItem) {
        this.f28137g.setVisibility(8);
        this.f28141k.setVisibility(8);
        this.f28140j.setVisibility(0);
        this.f28152v.get(Integer.valueOf(menuItem.getItemId())).setVisibility(0);
    }

    /* renamed from: c */
    public void m6032c(boolean z) {
        this.f28143m = z;
        if (z) {
            this.f28135e.setVisibility(8);
            this.f28132b.setVisibility(0);
            this.f28133c.setVisibility(0);
            this.f28134d.setVisibility(8);
            return;
        }
        this.f28135e.setVisibility(0);
        this.f28132b.setVisibility(8);
        this.f28133c.setVisibility(8);
        this.f28134d.setVisibility(8);
    }

    /* renamed from: d */
    public void m6031d() {
        setVisibility(8);
    }

    /* renamed from: d */
    public void m6030d(int i) {
        this.f28138h.setText(i);
    }

    /* renamed from: d */
    public void m6028d(boolean z) {
        this.f28144n = z;
        if (z) {
            this.f28137g.setVisibility(0);
        } else {
            this.f28137g.setVisibility(8);
        }
    }

    /* renamed from: e */
    public void m6027e() {
        this.f28137g.setVisibility(0);
        this.f28141k.setVisibility(0);
        this.f28140j.setVisibility(8);
        m6022g();
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (inputMethodManager.isActive() && m6042b().getCurrentFocus() != null) {
                inputMethodManager.hideSoftInputFromWindow(m6042b().getCurrentFocus().getWindowToken(), 0);
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: e */
    public void m6026e(int i) {
        this.f28138h.setTextColor(i);
    }

    /* renamed from: e */
    public void m6025e(boolean z) {
        this.f28147q = z;
        if (this.f28143m) {
            this.f28135e.setVisibility(8);
            this.f28132b.setVisibility(0);
            this.f28133c.setVisibility(8);
            this.f28134d.setVisibility(0);
            return;
        }
        this.f28135e.setVisibility(0);
        this.f28132b.setVisibility(8);
        this.f28133c.setVisibility(8);
        this.f28134d.setVisibility(8);
    }

    /* renamed from: f */
    public final void m6024f() {
        View$OnClickListenerC12485a aVar = new View$OnClickListenerC12485a();
        this.f28135e.setOnClickListener(aVar);
        this.f28132b.setOnClickListener(aVar);
    }

    /* renamed from: f */
    public void m6023f(boolean z) {
        this.f28146p = z;
    }

    /* renamed from: g */
    public void m6022g() {
        m6032c(this.f28143m);
        m6028d(this.f28144n);
        m6043a(this.f28145o);
        m6023f(this.f28146p);
        m6025e(this.f28147q);
        m6037b(this.f28148r);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if ((i == -1 || i == 0) && C14017g4.m2805s()) {
            setElevation(0.0f);
        }
    }
}
