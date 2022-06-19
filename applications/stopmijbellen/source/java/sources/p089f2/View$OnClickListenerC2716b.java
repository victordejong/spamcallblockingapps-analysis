package p089f2;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0444l;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p076e0.C2511f;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p111h2.C3003b;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: f2.b */
/* loaded from: classes-dex2jar.jar:f2/b.class */
public class View$OnClickListenerC2716b extends DialogInterface$OnCancelListenerC0444l implements View.OnClickListener, View.OnLongClickListener {

    /* renamed from: t */
    public static final /* synthetic */ int f9333t = 0;

    /* renamed from: a */
    public int[] f9334a;

    /* renamed from: b */
    public int[][] f9335b;

    /* renamed from: c */
    public int f9336c;

    /* renamed from: d */
    public AbstractC2724h f9337d;

    /* renamed from: e */
    public GridView f9338e;

    /* renamed from: f */
    public View f9339f;

    /* renamed from: g */
    public EditText f9340g;

    /* renamed from: h */
    public View f9341h;

    /* renamed from: i */
    public TextWatcher f9342i;

    /* renamed from: j */
    public SeekBar f9343j;

    /* renamed from: k */
    public TextView f9344k;

    /* renamed from: l */
    public SeekBar f9345l;

    /* renamed from: m */
    public TextView f9346m;

    /* renamed from: n */
    public SeekBar f9347n;

    /* renamed from: o */
    public TextView f9348o;

    /* renamed from: p */
    public SeekBar f9349p;

    /* renamed from: q */
    public TextView f9350q;

    /* renamed from: r */
    public SeekBar.OnSeekBarChangeListener f9351r;

    /* renamed from: s */
    public int f9352s;

    /* renamed from: f2.b$a */
    /* loaded from: classes-dex2jar.jar:f2/b$a.class */
    public class DialogInterface$OnShowListenerC2717a implements DialogInterface.OnShowListener {
        public DialogInterface$OnShowListenerC2717a() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            int i = View$OnClickListenerC2716b.f9333t;
            view$OnClickListenerC2716b.m3205g();
        }
    }

    /* renamed from: f2.b$b */
    /* loaded from: classes-dex2jar.jar:f2/b$b.class */
    public class C2718b implements View$OnClickListenerC2530g.AbstractC2533c {
        public C2718b() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
        /* renamed from: g */
        public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            int i = View$OnClickListenerC2716b.f9333t;
            view$OnClickListenerC2716b.m3201k(view$OnClickListenerC2530g);
        }
    }

    /* renamed from: f2.b$c */
    /* loaded from: classes-dex2jar.jar:f2/b$c.class */
    public class C2719c implements View$OnClickListenerC2530g.AbstractC2533c {
        public C2719c() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
        /* renamed from: g */
        public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            int i = View$OnClickListenerC2716b.f9333t;
            if (!view$OnClickListenerC2716b.m3204h()) {
                view$OnClickListenerC2530g.cancel();
                return;
            }
            view$OnClickListenerC2530g.m3476h(EnumC2524b.NEGATIVE, View$OnClickListenerC2716b.this.m3209c().f9362d);
            View$OnClickListenerC2716b.this.getArguments().putBoolean("in_sub", false);
            View$OnClickListenerC2716b.this.m3202j(-1);
            View$OnClickListenerC2716b.this.m3206f();
        }
    }

    /* renamed from: f2.b$d */
    /* loaded from: classes-dex2jar.jar:f2/b$d.class */
    public class C2720d implements View$OnClickListenerC2530g.AbstractC2533c {
        public C2720d() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
        /* renamed from: g */
        public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            view$OnClickListenerC2716b.f9337d.mo3197g(view$OnClickListenerC2716b, view$OnClickListenerC2716b.m3208d());
            View$OnClickListenerC2716b.this.dismiss();
        }
    }

    /* renamed from: f2.b$e */
    /* loaded from: classes-dex2jar.jar:f2/b$e.class */
    public class C2721e implements TextWatcher {
        public C2721e() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            try {
                View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
                view$OnClickListenerC2716b.f9352s = Color.parseColor("#" + charSequence.toString());
            } catch (IllegalArgumentException e) {
                View$OnClickListenerC2716b.this.f9352s = -16777216;
            }
            View$OnClickListenerC2716b view$OnClickListenerC2716b2 = View$OnClickListenerC2716b.this;
            view$OnClickListenerC2716b2.f9341h.setBackgroundColor(view$OnClickListenerC2716b2.f9352s);
            if (View$OnClickListenerC2716b.this.f9343j.getVisibility() == 0) {
                int alpha = Color.alpha(View$OnClickListenerC2716b.this.f9352s);
                View$OnClickListenerC2716b.this.f9343j.setProgress(alpha);
                View$OnClickListenerC2716b.this.f9344k.setText(String.format(Locale.US, "%d", Integer.valueOf(alpha)));
            }
            View$OnClickListenerC2716b.this.f9345l.setProgress(Color.red(View$OnClickListenerC2716b.this.f9352s));
            View$OnClickListenerC2716b.this.f9347n.setProgress(Color.green(View$OnClickListenerC2716b.this.f9352s));
            View$OnClickListenerC2716b.this.f9349p.setProgress(Color.blue(View$OnClickListenerC2716b.this.f9352s));
            View$OnClickListenerC2716b.this.getArguments().putBoolean("in_sub", false);
            View$OnClickListenerC2716b.this.m3199m(-1);
            View$OnClickListenerC2716b.this.m3202j(-1);
            View$OnClickListenerC2716b.this.m3205g();
        }
    }

    /* renamed from: f2.b$f */
    /* loaded from: classes-dex2jar.jar:f2/b$f.class */
    public class C2722f implements SeekBar.OnSeekBarChangeListener {
        public C2722f() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        @SuppressLint({"DefaultLocale"})
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
                int i2 = View$OnClickListenerC2716b.f9333t;
                Objects.requireNonNull(view$OnClickListenerC2716b.m3209c());
                View$OnClickListenerC2716b.this.f9340g.setText(String.format("%08X", Integer.valueOf(Color.argb(View$OnClickListenerC2716b.this.f9343j.getProgress(), View$OnClickListenerC2716b.this.f9345l.getProgress(), View$OnClickListenerC2716b.this.f9347n.getProgress(), View$OnClickListenerC2716b.this.f9349p.getProgress()))));
            }
            View$OnClickListenerC2716b view$OnClickListenerC2716b2 = View$OnClickListenerC2716b.this;
            view$OnClickListenerC2716b2.f9344k.setText(String.format("%d", Integer.valueOf(view$OnClickListenerC2716b2.f9343j.getProgress())));
            View$OnClickListenerC2716b view$OnClickListenerC2716b3 = View$OnClickListenerC2716b.this;
            view$OnClickListenerC2716b3.f9346m.setText(String.format("%d", Integer.valueOf(view$OnClickListenerC2716b3.f9345l.getProgress())));
            View$OnClickListenerC2716b view$OnClickListenerC2716b4 = View$OnClickListenerC2716b.this;
            view$OnClickListenerC2716b4.f9348o.setText(String.format("%d", Integer.valueOf(view$OnClickListenerC2716b4.f9347n.getProgress())));
            View$OnClickListenerC2716b view$OnClickListenerC2716b5 = View$OnClickListenerC2716b.this;
            view$OnClickListenerC2716b5.f9350q.setText(String.format("%d", Integer.valueOf(view$OnClickListenerC2716b5.f9349p.getProgress())));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* renamed from: f2.b$g */
    /* loaded from: classes-dex2jar.jar:f2/b$g.class */
    public static class C2723g implements Serializable {

        /* renamed from: a */
        public final int f9359a;

        /* renamed from: b */
        public int f9360b = 2131820879;

        /* renamed from: c */
        public int f9361c = 2131820875;

        /* renamed from: d */
        public int f9362d = 2131820876;

        /* renamed from: e */
        public int f9363e = 2131820878;

        /* renamed from: f */
        public int f9364f = 2131820881;

        /* renamed from: g */
        public boolean f9365g = false;

        /* renamed from: h */
        public boolean f9366h = true;

        public C2723g(Context context, int i) {
            this.f9359a = i;
        }
    }

    /* renamed from: f2.b$h */
    /* loaded from: classes-dex2jar.jar:f2/b$h.class */
    public interface AbstractC2724h {
        /* renamed from: f */
        void mo3198f(View$OnClickListenerC2716b view$OnClickListenerC2716b);

        /* renamed from: g */
        void mo3197g(View$OnClickListenerC2716b view$OnClickListenerC2716b, int i);
    }

    /* renamed from: f2.b$i */
    /* loaded from: classes-dex2jar.jar:f2/b$i.class */
    public class C2725i extends BaseAdapter {
        public C2725i() {
            View$OnClickListenerC2716b.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            int i = View$OnClickListenerC2716b.f9333t;
            if (view$OnClickListenerC2716b.m3204h()) {
                View$OnClickListenerC2716b view$OnClickListenerC2716b2 = View$OnClickListenerC2716b.this;
                return view$OnClickListenerC2716b2.f9335b[view$OnClickListenerC2716b2.m3200l()].length;
            }
            return View$OnClickListenerC2716b.this.f9334a.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            int i2 = View$OnClickListenerC2716b.f9333t;
            if (view$OnClickListenerC2716b.m3204h()) {
                View$OnClickListenerC2716b view$OnClickListenerC2716b2 = View$OnClickListenerC2716b.this;
                return Integer.valueOf(view$OnClickListenerC2716b2.f9335b[view$OnClickListenerC2716b2.m3200l()][i]);
            }
            return Integer.valueOf(View$OnClickListenerC2716b.this.f9334a[i]);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        @SuppressLint({"DefaultLocale"})
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2;
            C2715a c2715a = view;
            if (view == null) {
                c2715a = new C2715a(View$OnClickListenerC2716b.this.getContext());
                int i3 = View$OnClickListenerC2716b.this.f9336c;
                c2715a.setLayoutParams(new AbsListView.LayoutParams(i3, i3));
            }
            C2715a c2715a2 = (C2715a) c2715a;
            View$OnClickListenerC2716b view$OnClickListenerC2716b = View$OnClickListenerC2716b.this;
            int i4 = View$OnClickListenerC2716b.f9333t;
            if (view$OnClickListenerC2716b.m3204h()) {
                View$OnClickListenerC2716b view$OnClickListenerC2716b2 = View$OnClickListenerC2716b.this;
                i2 = view$OnClickListenerC2716b2.f9335b[view$OnClickListenerC2716b2.m3200l()][i];
            } else {
                i2 = View$OnClickListenerC2716b.this.f9334a[i];
            }
            c2715a2.setBackgroundColor(i2);
            if (View$OnClickListenerC2716b.this.m3204h()) {
                c2715a2.setSelected(View$OnClickListenerC2716b.this.m3203i() == i);
            } else {
                c2715a2.setSelected(View$OnClickListenerC2716b.this.m3200l() == i);
            }
            c2715a2.setTag(String.format("%d:%d", Integer.valueOf(i), Integer.valueOf(i2)));
            c2715a2.setOnClickListener(View$OnClickListenerC2716b.this);
            c2715a2.setOnLongClickListener(View$OnClickListenerC2716b.this);
            return c2715a;
        }
    }

    /* renamed from: a */
    public final void m3210a(int i, int i2) {
        int[][] iArr = this.f9335b;
        if (iArr == null || iArr.length - 1 < i) {
            return;
        }
        int[] iArr2 = iArr[i];
        for (int i3 = 0; i3 < iArr2.length; i3++) {
            if (iArr2[i3] == i2) {
                m3202j(i3);
                return;
            }
        }
    }

    /* renamed from: c */
    public final C2723g m3209c() {
        if (getArguments() == null || !getArguments().containsKey("builder")) {
            return null;
        }
        return (C2723g) getArguments().getSerializable("builder");
    }

    /* renamed from: d */
    public final int m3208d() {
        View view = this.f9339f;
        if (view == null || view.getVisibility() != 0) {
            int i = 0;
            if (m3203i() > -1) {
                i = this.f9335b[m3200l()][m3203i()];
            } else if (m3200l() > -1) {
                i = this.f9334a[m3200l()];
            }
            int i2 = i;
            if (i == 0) {
                i2 = C3003b.m2760h(getActivity(), C3681R.attr.colorAccent, C3003b.m2761g(getActivity(), 16843829));
            }
            return i2;
        }
        return this.f9352s;
    }

    /* renamed from: e */
    public int m3207e() {
        int i;
        C2723g m3209c = m3209c();
        if (m3204h()) {
            Objects.requireNonNull(m3209c);
            i = 0;
        } else {
            i = m3209c.f9359a;
        }
        int i2 = i;
        if (i == 0) {
            i2 = m3209c.f9359a;
        }
        return i2;
    }

    /* renamed from: f */
    public final void m3206f() {
        if (this.f9338e.getAdapter() == null) {
            this.f9338e.setAdapter((ListAdapter) new C2725i());
            GridView gridView = this.f9338e;
            Resources resources = getResources();
            ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
            gridView.setSelector(resources.getDrawable(2131231048, null));
        } else {
            ((BaseAdapter) this.f9338e.getAdapter()).notifyDataSetChanged();
        }
        if (getDialog() != null) {
            getDialog().setTitle(m3207e());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
        if (android.graphics.Color.blue(r0) > 247) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3205g() {
        /*
            r3 = this;
            r0 = r3
            android.app.Dialog r0 = r0.getDialog()
            e2.g r0 = (p078e2.View$OnClickListenerC2530g) r0
            r4 = r0
            r0 = r4
            if (r0 != 0) goto Ld
            return
        Ld:
            r0 = r3
            f2.b$g r0 = r0.m3209c()
            boolean r0 = r0.f9366h
            if (r0 == 0) goto Lab
            r0 = r3
            int r0 = r0.m3208d()
            r5 = r0
            r0 = r5
            int r0 = android.graphics.Color.alpha(r0)
            r1 = 64
            if (r0 < r1) goto L49
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = android.graphics.Color.red(r0)
            r1 = 247(0xf7, float:3.46E-43)
            if (r0 <= r1) goto L4f
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = android.graphics.Color.green(r0)
            r1 = 247(0xf7, float:3.46E-43)
            if (r0 <= r1) goto L4f
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = android.graphics.Color.blue(r0)
            r1 = 247(0xf7, float:3.46E-43)
            if (r0 <= r1) goto L4f
        L49:
            java.lang.String r0 = "#DEDEDE"
            int r0 = android.graphics.Color.parseColor(r0)
            r6 = r0
        L4f:
            r0 = r3
            f2.b$g r0 = r0.m3209c()
            boolean r0 = r0.f9366h
            if (r0 == 0) goto L7a
            r0 = r4
            e2.b r1 = p078e2.EnumC2524b.POSITIVE
            com.afollestad.materialdialogs.internal.MDButton r0 = r0.m3481c(r1)
            r1 = r6
            r0.setTextColor(r1)
            r0 = r4
            e2.b r1 = p078e2.EnumC2524b.NEGATIVE
            com.afollestad.materialdialogs.internal.MDButton r0 = r0.m3481c(r1)
            r1 = r6
            r0.setTextColor(r1)
            r0 = r4
            e2.b r1 = p078e2.EnumC2524b.NEUTRAL
            com.afollestad.materialdialogs.internal.MDButton r0 = r0.m3481c(r1)
            r1 = r6
            r0.setTextColor(r1)
        L7a:
            r0 = r3
            android.widget.SeekBar r0 = r0.f9345l
            if (r0 == 0) goto Lab
            r0 = r3
            android.widget.SeekBar r0 = r0.f9343j
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L93
            r0 = r3
            android.widget.SeekBar r0 = r0.f9343j
            r1 = r6
            p100g2.C2803b.m2992e(r0, r1)
        L93:
            r0 = r3
            android.widget.SeekBar r0 = r0.f9345l
            r1 = r6
            p100g2.C2803b.m2992e(r0, r1)
            r0 = r3
            android.widget.SeekBar r0 = r0.f9347n
            r1 = r6
            p100g2.C2803b.m2992e(r0, r1)
            r0 = r3
            android.widget.SeekBar r0 = r0.f9349p
            r1 = r6
            p100g2.C2803b.m2992e(r0, r1)
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p089f2.View$OnClickListenerC2716b.m3205g():void");
    }

    /* renamed from: h */
    public final boolean m3204h() {
        return getArguments().getBoolean("in_sub", false);
    }

    /* renamed from: i */
    public final int m3203i() {
        if (this.f9335b == null) {
            return -1;
        }
        return getArguments().getInt("sub_index", -1);
    }

    /* renamed from: j */
    public final void m3202j(int i) {
        if (this.f9335b == null) {
            return;
        }
        getArguments().putInt("sub_index", i);
    }

    /* renamed from: k */
    public final void m3201k(View$OnClickListenerC2530g view$OnClickListenerC2530g) {
        EnumC2524b enumC2524b = EnumC2524b.NEUTRAL;
        EnumC2524b enumC2524b2 = EnumC2524b.NEGATIVE;
        View$OnClickListenerC2530g view$OnClickListenerC2530g2 = view$OnClickListenerC2530g;
        if (view$OnClickListenerC2530g == null) {
            view$OnClickListenerC2530g2 = (View$OnClickListenerC2530g) getDialog();
        }
        if (this.f9338e.getVisibility() != 0) {
            view$OnClickListenerC2530g2.setTitle(m3209c().f9359a);
            view$OnClickListenerC2530g2.m3476h(enumC2524b, m3209c().f9363e);
            if (m3204h()) {
                view$OnClickListenerC2530g2.m3476h(enumC2524b2, m3209c().f9361c);
            } else {
                view$OnClickListenerC2530g2.m3476h(enumC2524b2, m3209c().f9362d);
            }
            this.f9338e.setVisibility(0);
            this.f9339f.setVisibility(8);
            this.f9340g.removeTextChangedListener(this.f9342i);
            this.f9342i = null;
            this.f9345l.setOnSeekBarChangeListener(null);
            this.f9347n.setOnSeekBarChangeListener(null);
            this.f9349p.setOnSeekBarChangeListener(null);
            this.f9351r = null;
            return;
        }
        view$OnClickListenerC2530g2.setTitle(m3209c().f9363e);
        view$OnClickListenerC2530g2.m3476h(enumC2524b, m3209c().f9364f);
        view$OnClickListenerC2530g2.m3476h(enumC2524b2, m3209c().f9362d);
        this.f9338e.setVisibility(4);
        this.f9339f.setVisibility(0);
        C2721e c2721e = new C2721e();
        this.f9342i = c2721e;
        this.f9340g.addTextChangedListener(c2721e);
        C2722f c2722f = new C2722f();
        this.f9351r = c2722f;
        this.f9345l.setOnSeekBarChangeListener(c2722f);
        this.f9347n.setOnSeekBarChangeListener(this.f9351r);
        this.f9349p.setOnSeekBarChangeListener(this.f9351r);
        if (this.f9343j.getVisibility() != 0) {
            this.f9340g.setText(String.format("%06X", Integer.valueOf(16777215 & this.f9352s)));
            return;
        }
        this.f9343j.setOnSeekBarChangeListener(this.f9351r);
        this.f9340g.setText(String.format("%08X", Integer.valueOf(this.f9352s)));
    }

    /* renamed from: l */
    public final int m3200l() {
        return getArguments().getInt("top_index", -1);
    }

    /* renamed from: m */
    public final void m3199m(int i) {
        if (i > -1) {
            m3210a(i, this.f9334a[i]);
        }
        getArguments().putInt("top_index", i);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof AbstractC2724h) {
            this.f9337d = (AbstractC2724h) getActivity();
        } else if (!(getParentFragment() instanceof AbstractC2724h)) {
            throw new IllegalStateException("ColorChooserDialog needs to be shown from an Activity/Fragment implementing ColorCallback.");
        } else {
            this.f9337d = (AbstractC2724h) getParentFragment();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getTag() != null) {
            int parseInt = Integer.parseInt(((String) view.getTag()).split(":")[0]);
            View$OnClickListenerC2530g view$OnClickListenerC2530g = (View$OnClickListenerC2530g) getDialog();
            C2723g m3209c = m3209c();
            if (m3204h()) {
                m3202j(parseInt);
            } else {
                m3199m(parseInt);
                int[][] iArr = this.f9335b;
                if (iArr != null && parseInt < iArr.length) {
                    view$OnClickListenerC2530g.m3476h(EnumC2524b.NEGATIVE, m3209c.f9361c);
                    getArguments().putBoolean("in_sub", true);
                }
            }
            Objects.requireNonNull(m3209c);
            this.f9352s = m3208d();
            m3205g();
            m3206f();
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l
    public Dialog onCreateDialog(Bundle bundle) {
        int i;
        boolean z;
        if (getArguments() == null || !getArguments().containsKey("builder")) {
            throw new IllegalStateException("ColorChooserDialog should be created using its Builder interface.");
        }
        C2723g m3209c = m3209c();
        Objects.requireNonNull(m3209c);
        if (m3209c.f9365g) {
            this.f9334a = C2726c.f9370c;
            this.f9335b = C2726c.f9371d;
        } else {
            this.f9334a = C2726c.f9368a;
            this.f9335b = C2726c.f9369b;
        }
        if (bundle != null) {
            z = !bundle.getBoolean("in_custom", false);
            i = m3208d();
        } else {
            Objects.requireNonNull(m3209c());
            i = -16777216;
            z = true;
        }
        this.f9336c = getResources().getDimensionPixelSize(2131165589);
        C2723g m3209c2 = m3209c();
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(getActivity());
        c2531a.m3464k(m3207e());
        c2531a.f8837B = false;
        c2531a.m3471d(2131492997, false);
        c2531a.m3468g(m3209c2.f9362d);
        c2531a.m3466i(m3209c2.f9360b);
        c2531a.m3467h(m3209c2.f9363e);
        c2531a.m3462m(null, null);
        c2531a.f8870u = new C2720d();
        c2531a.f8871v = new C2719c();
        c2531a.f8872w = new C2718b();
        c2531a.f8843H = new DialogInterface$OnShowListenerC2717a();
        View$OnClickListenerC2530g view$OnClickListenerC2530g = new View$OnClickListenerC2530g(c2531a);
        View view = view$OnClickListenerC2530g.f8822c.f8864o;
        this.f9338e = (GridView) view.findViewById(2131296791);
        this.f9352s = i;
        this.f9339f = view.findViewById(2131296777);
        this.f9340g = (EditText) view.findViewById(2131296792);
        this.f9341h = view.findViewById(2131296781);
        this.f9343j = (SeekBar) view.findViewById(2131296771);
        this.f9344k = (TextView) view.findViewById(2131296773);
        this.f9345l = (SeekBar) view.findViewById(2131296782);
        this.f9346m = (TextView) view.findViewById(2131296784);
        this.f9347n = (SeekBar) view.findViewById(2131296778);
        this.f9348o = (TextView) view.findViewById(2131296780);
        this.f9349p = (SeekBar) view.findViewById(2131296774);
        this.f9350q = (TextView) view.findViewById(2131296776);
        this.f9340g.setHint("FF2196F3");
        this.f9340g.setFilters(new InputFilter[]{new InputFilter.LengthFilter(8)});
        if (!z) {
            m3201k(view$OnClickListenerC2530g);
        }
        m3206f();
        return view$OnClickListenerC2530g;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        AbstractC2724h abstractC2724h = this.f9337d;
        if (abstractC2724h != null) {
            abstractC2724h.mo3198f(this);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view.getTag() != null) {
            int parseInt = Integer.parseInt(((String) view.getTag()).split(":")[1]);
            C2715a c2715a = (C2715a) view;
            int[] iArr = new int[2];
            Rect rect = new Rect();
            c2715a.getLocationOnScreen(iArr);
            c2715a.getWindowVisibleDisplayFrame(rect);
            Context context = c2715a.getContext();
            int width = c2715a.getWidth();
            int height = c2715a.getHeight();
            int i = iArr[1];
            int i2 = height / 2;
            int i3 = (width / 2) + iArr[0];
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            int i4 = i3;
            if (C3589v.C3594e.m2071d(c2715a) == 0) {
                i4 = context.getResources().getDisplayMetrics().widthPixels - i3;
            }
            Toast makeText = Toast.makeText(context, String.format("#%06X", Integer.valueOf(parseInt & 16777215)), 0);
            if (i2 + i < rect.height()) {
                makeText.setGravity(8388661, i4, (iArr[1] + height) - rect.top);
            } else {
                makeText.setGravity(81, 0, height);
            }
            makeText.show();
            return true;
        }
        return false;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0444l, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("top_index", m3200l());
        bundle.putBoolean("in_sub", m3204h());
        bundle.putInt("sub_index", m3203i());
        View view = this.f9339f;
        bundle.putBoolean("in_custom", view != null && view.getVisibility() == 0);
    }
}
