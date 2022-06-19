package com.allinone.callerid.customview;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$styleable;
import com.allinone.callerid.util.C3774j;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandTextView.class */
public class ExpandTextView extends LinearLayout implements View.OnClickListener {

    /* renamed from: d */
    private Context f8502d;

    /* renamed from: e */
    private String f8503e;

    /* renamed from: f */
    private String f8504f;

    /* renamed from: g */
    private String f8505g;

    /* renamed from: h */
    private String f8506h;

    /* renamed from: i */
    private int f8507i;

    /* renamed from: j */
    private int f8508j;

    /* renamed from: k */
    private int f8509k;

    /* renamed from: l */
    private Drawable f8510l;

    /* renamed from: m */
    private int f8511m;

    /* renamed from: n */
    private float f8512n;

    /* renamed from: o */
    private float f8513o;

    /* renamed from: p */
    private float f8514p;

    /* renamed from: q */
    private int f8515q;

    /* renamed from: r */
    private TextView f8516r;

    /* renamed from: s */
    private TextView f8517s;

    /* renamed from: t */
    private TextView f8518t;

    /* renamed from: u */
    private ImageView f8519u;

    /* renamed from: v */
    private RelativeLayout f8520v;

    /* renamed from: w */
    private TextView f8521w;

    /* renamed from: x */
    private AbstractC2445c f8522x;

    /* renamed from: y */
    private boolean f8523y;

    /* renamed from: com.allinone.callerid.customview.ExpandTextView$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandTextView$a.class */
    public class C2427a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ ViewGroup.LayoutParams f8524a;

        C2427a(ViewGroup.LayoutParams layoutParams) {
            ExpandTextView.this = r4;
            this.f8524a = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f8524a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            ExpandTextView.this.f8517s.setLayoutParams(this.f8524a);
        }
    }

    public ExpandTextView(Context context) {
        this(context, null);
    }

    public ExpandTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ExpandTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8502d = context;
        setOrientation(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandTextView);
        this.f8503e = obtainStyledAttributes.getString(11);
        this.f8504f = obtainStyledAttributes.getString(1);
        this.f8505g = obtainStyledAttributes.getString(4);
        this.f8506h = obtainStyledAttributes.getString(3);
        this.f8507i = obtainStyledAttributes.getColor(10, -1979711488);
        this.f8508j = obtainStyledAttributes.getColor(8, -570425344);
        this.f8509k = obtainStyledAttributes.getColor(9, -570425344);
        this.f8510l = obtainStyledAttributes.getDrawable(6);
        this.f8511m = obtainStyledAttributes.getInt(7, 4);
        this.f8512n = obtainStyledAttributes.getDimension(12, C3774j.m24168b(this.f8502d, 16.0f));
        this.f8513o = obtainStyledAttributes.getDimension(2, C3774j.m24168b(this.f8502d, 14.0f));
        this.f8514p = obtainStyledAttributes.getDimension(5, C3774j.m24168b(this.f8502d, 12.0f));
        this.f8515q = obtainStyledAttributes.getInt(0, 600);
        obtainStyledAttributes.recycle();
        m27421c();
    }

    /* renamed from: b */
    private void m27422b() {
        int i;
        int i2;
        if (!this.f8523y) {
            this.f8523y = true;
            int minMeasureHeight = getMinMeasureHeight();
            int maxMeasureHeight = getMaxMeasureHeight();
            int i3 = maxMeasureHeight;
            if (maxMeasureHeight < minMeasureHeight) {
                i3 = minMeasureHeight;
            }
            this.f8518t.setText(this.f8505g);
            ObjectAnimator.ofFloat(this.f8519u, "rotation", 0.0f, 180.0f).start();
            AbstractC2445c abstractC2445c = this.f8522x;
            i = minMeasureHeight;
            i2 = i3;
            if (abstractC2445c != null) {
                abstractC2445c.mo26104b();
                i = minMeasureHeight;
                i2 = i3;
            }
        } else {
            this.f8523y = false;
            int maxMeasureHeight2 = getMaxMeasureHeight();
            int minMeasureHeight2 = getMinMeasureHeight();
            int i4 = maxMeasureHeight2;
            if (maxMeasureHeight2 < minMeasureHeight2) {
                i4 = minMeasureHeight2;
            }
            this.f8518t.setText(this.f8506h);
            ObjectAnimator.ofFloat(this.f8519u, "rotation", -180.0f, 0.0f).start();
            AbstractC2445c abstractC2445c2 = this.f8522x;
            i = i4;
            i2 = minMeasureHeight2;
            if (abstractC2445c2 != null) {
                abstractC2445c2.mo26105a();
                i2 = minMeasureHeight2;
                i = i4;
            }
        }
        if (this.f8515q < 0) {
            this.f8515q = 600;
        }
        ViewGroup.LayoutParams layoutParams = this.f8517s.getLayoutParams();
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.setDuration(this.f8515q);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.addUpdateListener(new C2427a(layoutParams));
        ofInt.start();
    }

    /* renamed from: c */
    private void m27421c() {
        View.inflate(this.f8502d, R$layout.expand_text_view, this);
        this.f8516r = (TextView) findViewById(R$id.tv_title);
        this.f8517s = (TextView) findViewById(R$id.tv_content);
        this.f8518t = (TextView) findViewById(R$id.tv_more_hint);
        this.f8519u = (ImageView) findViewById(R$id.iv_arrow_more);
        this.f8520v = (RelativeLayout) findViewById(R$id.rl_show_more);
        this.f8516r.setText(this.f8503e);
        this.f8516r.setTextSize(0, this.f8512n);
        this.f8516r.setTextColor(this.f8507i);
        this.f8517s.setText(this.f8504f);
        this.f8517s.setTextSize(0, this.f8513o);
        this.f8517s.setTextColor(this.f8508j);
        this.f8518t.setText(this.f8506h);
        this.f8518t.setTextSize(0, this.f8514p);
        this.f8518t.setTextColor(this.f8509k);
        if (this.f8510l == null) {
            this.f8510l = getResources().getDrawable(R$drawable.ic_arrow_down_light_round);
        }
        this.f8519u.setImageDrawable(this.f8510l);
        this.f8520v.setOnClickListener(this);
        ViewGroup.LayoutParams layoutParams = this.f8517s.getLayoutParams();
        layoutParams.height = getMinMeasureHeight();
        this.f8517s.setLayoutParams(layoutParams);
    }

    public int getAnimationDuration() {
        return this.f8515q;
    }

    public String getContent() {
        return this.f8504f;
    }

    public int getContentTextColor() {
        return this.f8508j;
    }

    public float getContentTextSize() {
        return this.f8513o;
    }

    public String getExpandHint() {
        return this.f8506h;
    }

    public String getFoldHint() {
        return this.f8505g;
    }

    public int getHintTextColor() {
        return this.f8509k;
    }

    public float getHintTextSize() {
        return this.f8514p;
    }

    public Drawable getIndicateImage() {
        return this.f8510l;
    }

    public int getMaxMeasureHeight() {
        this.f8517s.measure(View.MeasureSpec.makeMeasureSpec(this.f8517s.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(3000, Integer.MIN_VALUE));
        return this.f8517s.getMeasuredHeight();
    }

    public int getMinMeasureHeight() {
        if (this.f8521w == null) {
            TextView textView = new TextView(this.f8502d);
            this.f8521w = textView;
            textView.setTextSize(0, this.f8513o);
            this.f8521w.setLineSpacing(C3774j.m24169a(this.f8502d, 6.0f), 1.0f);
            this.f8521w.setLines(this.f8511m);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f8517s.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE);
        this.f8521w.setLayoutParams(this.f8517s.getLayoutParams());
        this.f8521w.measure(makeMeasureSpec, makeMeasureSpec2);
        return this.f8521w.getMeasuredHeight();
    }

    public int getMinVisibleLines() {
        return this.f8511m;
    }

    public AbstractC2445c getReadMoreListener() {
        return this.f8522x;
    }

    public String getTitle() {
        return this.f8503e;
    }

    public int getTitleTextColor() {
        return this.f8507i;
    }

    public float getTitleTextSize() {
        return this.f8512n;
    }

    public View getTitleView() {
        return this.f8516r;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131297540) {
            m27422b();
        }
    }

    public void setAnimationDuration(int i) {
        this.f8515q = i;
    }

    public void setContent(String str) {
        this.f8504f = str;
        this.f8517s.setText(str);
    }

    public void setContentTextColor(int i) {
        this.f8508j = i;
        this.f8517s.setTextColor(i);
    }

    public void setContentTextSize(float f) {
        this.f8513o = C3774j.m24168b(this.f8502d, f);
        this.f8517s.setTextSize(f);
        this.f8521w = null;
        ViewGroup.LayoutParams layoutParams = this.f8517s.getLayoutParams();
        layoutParams.height = getMinMeasureHeight();
        this.f8517s.setLayoutParams(layoutParams);
    }

    public void setExpandHint(String str) {
        this.f8506h = str;
    }

    public void setFoldHint(String str) {
        this.f8505g = str;
    }

    public void setHintTextColor(int i) {
        this.f8509k = i;
        this.f8518t.setTextColor(i);
    }

    public void setHintTextSize(float f) {
        this.f8514p = C3774j.m24168b(this.f8502d, f);
        this.f8518t.setTextSize(f);
    }

    public void setIndicateImage(int i) {
        Drawable drawable = getResources().getDrawable(i);
        this.f8510l = drawable;
        this.f8519u.setImageDrawable(drawable);
    }

    public void setIndicateImage(Drawable drawable) {
        this.f8510l = drawable;
        this.f8519u.setImageDrawable(drawable);
    }

    public void setMinVisibleLines(int i) {
        this.f8511m = i;
        this.f8521w = null;
        ViewGroup.LayoutParams layoutParams = this.f8517s.getLayoutParams();
        layoutParams.height = getMinMeasureHeight();
        this.f8517s.setLayoutParams(layoutParams);
    }

    public void setOnReadMoreListener(AbstractC2445c abstractC2445c) {
        this.f8522x = abstractC2445c;
    }

    public void setTitle(String str) {
        this.f8503e = str;
        this.f8516r.setText(str);
    }

    public void setTitleTextColor(int i) {
        this.f8507i = i;
        this.f8516r.setTextColor(i);
    }

    public void setTitleTextSize(float f) {
        this.f8512n = C3774j.m24168b(this.f8502d, f);
        this.f8516r.setTextSize(f);
    }
}
