package com.allinone.callerid.customview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$styleable;
import com.allinone.callerid.util.C3774j;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandableTextView.class */
public class ExpandableTextView extends LinearLayout implements View.OnClickListener {

    /* renamed from: A */
    private View f8526A;

    /* renamed from: d */
    protected TextView f8527d;

    /* renamed from: e */
    protected TextView f8528e;

    /* renamed from: f */
    private boolean f8529f;

    /* renamed from: g */
    private boolean f8530g;

    /* renamed from: h */
    private Drawable f8531h;

    /* renamed from: i */
    private Drawable f8532i;

    /* renamed from: j */
    private int f8533j;

    /* renamed from: k */
    private boolean f8534k;

    /* renamed from: l */
    private AbstractC2431d f8535l;

    /* renamed from: m */
    private SparseBooleanArray f8536m;

    /* renamed from: n */
    private int f8537n;

    /* renamed from: o */
    private int f8538o;

    /* renamed from: p */
    private int f8539p;

    /* renamed from: q */
    private int f8540q;

    /* renamed from: r */
    private int f8541r;

    /* renamed from: s */
    private int f8542s;

    /* renamed from: t */
    private int f8543t;

    /* renamed from: u */
    private float f8544u;

    /* renamed from: v */
    private float f8545v;

    /* renamed from: w */
    private String f8546w;

    /* renamed from: x */
    private String f8547x;

    /* renamed from: y */
    private int f8548y;

    /* renamed from: z */
    private int f8549z;

    /* renamed from: com.allinone.callerid.customview.ExpandableTextView$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandableTextView$a.class */
    class C2428a implements ValueAnimator.AnimatorUpdateListener {
        C2428a() {
            ExpandableTextView.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f8527d.setMaxHeight(intValue - expandableTextView.f8541r);
            ExpandableTextView.this.getLayoutParams().height = intValue;
            ExpandableTextView.this.requestLayout();
        }
    }

    /* renamed from: com.allinone.callerid.customview.ExpandableTextView$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandableTextView$b.class */
    class C2429b implements Animator.AnimatorListener {
        C2429b() {
            ExpandableTextView.this = r4;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTextView.this.f8534k = false;
            if (ExpandableTextView.this.f8535l != null) {
                AbstractC2431d abstractC2431d = ExpandableTextView.this.f8535l;
                ExpandableTextView expandableTextView = ExpandableTextView.this;
                abstractC2431d.m27411a(expandableTextView.f8527d, !expandableTextView.f8530g);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.allinone.callerid.customview.ExpandableTextView$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandableTextView$c.class */
    class RunnableC2430c implements Runnable {
        RunnableC2430c() {
            ExpandableTextView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f8541r = expandableTextView.getHeight() - ExpandableTextView.this.f8527d.getHeight();
        }
    }

    /* renamed from: com.allinone.callerid.customview.ExpandableTextView$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ExpandableTextView$d.class */
    public interface AbstractC2431d {
        /* renamed from: a */
        void m27411a(TextView textView, boolean z);
    }

    public ExpandableTextView(Context context) {
        this(context, null);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8530g = true;
        m27413p(attributeSet);
    }

    @TargetApi(11)
    public ExpandableTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8530g = true;
        m27413p(attributeSet);
    }

    /* renamed from: j */
    private void m27415j() {
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R$layout.item_expand_collapse, this);
        this.f8527d = (TextView) findViewById(R$id.expandable_text);
        this.f8526A = findViewById(R$id.view);
        this.f8527d.setOnClickListener(this);
        this.f8528e = (TextView) findViewById(R$id.expand_collapse);
        m27412q();
        this.f8528e.setOnClickListener(this);
        this.f8527d.setTextColor(this.f8542s);
        this.f8527d.getPaint().setTextSize(this.f8544u);
        this.f8528e.setTextColor(this.f8543t);
        this.f8528e.getPaint().setTextSize(this.f8545v);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = this.f8548y;
        this.f8528e.setLayoutParams(layoutParams);
    }

    /* renamed from: o */
    private static int m27414o(TextView textView) {
        return textView.getLayout().getLineTop(textView.getLineCount()) + textView.getCompoundPaddingTop() + textView.getCompoundPaddingBottom();
    }

    /* renamed from: p */
    private void m27413p(AttributeSet attributeSet) {
        this.f8536m = new SparseBooleanArray();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ExpandableTextView);
        this.f8538o = obtainStyledAttributes.getInt(9, 5);
        this.f8533j = obtainStyledAttributes.getInt(0, 200);
        this.f8531h = obtainStyledAttributes.getDrawable(8);
        this.f8532i = obtainStyledAttributes.getDrawable(1);
        this.f8546w = obtainStyledAttributes.getString(10);
        this.f8547x = obtainStyledAttributes.getString(11);
        if (this.f8531h == null) {
            this.f8531h = C0586a.m33348f(getContext(), R$drawable.iv_comments_more_up);
        }
        if (this.f8532i == null) {
            this.f8532i = C0586a.m33348f(getContext(), R$drawable.iv_comments_more_down);
        }
        if (TextUtils.isEmpty(this.f8546w)) {
            this.f8546w = getContext().getString(R$string.collapse);
        }
        if (TextUtils.isEmpty(this.f8547x)) {
            this.f8547x = getContext().getString(R$string.expand);
        }
        this.f8542s = obtainStyledAttributes.getColor(5, C0586a.m33350d(getContext(), R$color.name));
        this.f8544u = obtainStyledAttributes.getDimension(6, C3774j.m24168b(getContext(), 14.0f));
        this.f8543t = obtainStyledAttributes.getColor(3, C0586a.m33350d(getContext(), 2131099706));
        this.f8545v = obtainStyledAttributes.getDimension(4, C3774j.m24168b(getContext(), 14.0f));
        this.f8548y = obtainStyledAttributes.getInt(2, 3);
        this.f8549z = obtainStyledAttributes.getInt(7, 3);
        obtainStyledAttributes.recycle();
        setOrientation(1);
        setVisibility(8);
    }

    /* renamed from: q */
    private void m27412q() {
        int i;
        Resources resources;
        if (3 == this.f8549z) {
            this.f8528e.setCompoundDrawablesWithIntrinsicBounds(this.f8530g ? this.f8532i : this.f8531h, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.f8528e.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.f8530g ? this.f8532i : this.f8531h, (Drawable) null);
        }
        TextView textView = this.f8528e;
        if (this.f8530g) {
            resources = getResources();
            i = 2131755372;
        } else {
            resources = getResources();
            i = 2131755220;
        }
        textView.setText(resources.getString(i));
        if (this.f8530g) {
            this.f8526A.setVisibility(0);
        } else {
            this.f8526A.setVisibility(8);
        }
    }

    public CharSequence getText() {
        TextView textView = this.f8527d;
        return textView == null ? "" : textView.getText();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ValueAnimator valueAnimator;
        if (this.f8528e.getVisibility() != 0) {
            return;
        }
        this.f8530g = !this.f8530g;
        m27412q();
        SparseBooleanArray sparseBooleanArray = this.f8536m;
        if (sparseBooleanArray != null) {
            sparseBooleanArray.put(this.f8537n, this.f8530g);
        }
        this.f8534k = true;
        if (this.f8530g) {
            new ValueAnimator();
            valueAnimator = ValueAnimator.ofInt(getHeight(), this.f8539p);
        } else {
            new ValueAnimator();
            valueAnimator = ValueAnimator.ofInt(getHeight(), (getHeight() + this.f8540q) - this.f8527d.getHeight());
        }
        valueAnimator.addUpdateListener(new C2428a());
        valueAnimator.addListener(new C2429b());
        valueAnimator.setDuration(this.f8533j);
        valueAnimator.start();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        m27415j();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f8534k;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.f8529f || getVisibility() == 8) {
            super.onMeasure(i, i2);
            return;
        }
        this.f8529f = false;
        this.f8528e.setVisibility(8);
        this.f8526A.setVisibility(8);
        this.f8527d.setMaxLines(Integer.MAX_VALUE);
        super.onMeasure(i, i2);
        if (this.f8527d.getLineCount() <= this.f8538o) {
            return;
        }
        this.f8540q = m27414o(this.f8527d);
        if (this.f8530g) {
            this.f8527d.setMaxLines(this.f8538o);
        }
        this.f8528e.setVisibility(0);
        this.f8526A.setVisibility(0);
        super.onMeasure(i, i2);
        if (!this.f8530g) {
            return;
        }
        this.f8527d.post(new RunnableC2430c());
        this.f8539p = getMeasuredHeight();
    }

    public void setOnExpandStateChangeListener(AbstractC2431d abstractC2431d) {
        this.f8535l = abstractC2431d;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 0) {
            super.setOrientation(i);
            return;
        }
        throw new IllegalArgumentException("ExpandableTextView only supports Vertical Orientation.");
    }

    public void setText(CharSequence charSequence) {
        this.f8529f = true;
        this.f8527d.setText(charSequence);
        setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    public void setText(CharSequence charSequence, int i) {
        Resources resources;
        int i2;
        this.f8537n = i;
        this.f8530g = this.f8536m.get(i, true);
        clearAnimation();
        m27412q();
        TextView textView = this.f8528e;
        if (this.f8530g) {
            resources = getResources();
            i2 = 2131755372;
        } else {
            resources = getResources();
            i2 = 2131755220;
        }
        textView.setText(resources.getString(i2));
        setText(charSequence);
        getLayoutParams().height = -2;
        requestLayout();
    }
}
