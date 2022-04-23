package com.callerid.block.customview;

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
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.R$styleable;
import com.callerid.block.util.C1176f;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ExpandTextView.class */
public class ExpandTextView extends LinearLayout implements View.OnClickListener {

    /* renamed from: b */
    private Context f4139b;

    /* renamed from: c */
    private String f4140c;

    /* renamed from: d */
    private String f4141d;

    /* renamed from: e */
    private String f4142e;

    /* renamed from: f */
    private String f4143f;

    /* renamed from: g */
    private int f4144g;

    /* renamed from: h */
    private int f4145h;

    /* renamed from: i */
    private int f4146i;

    /* renamed from: j */
    private Drawable f4147j;

    /* renamed from: k */
    private int f4148k;

    /* renamed from: l */
    private float f4149l;

    /* renamed from: m */
    private float f4150m;

    /* renamed from: n */
    private float f4151n;

    /* renamed from: o */
    private int f4152o;

    /* renamed from: p */
    private TextView f4153p;

    /* renamed from: q */
    private TextView f4154q;

    /* renamed from: r */
    private TextView f4155r;

    /* renamed from: s */
    private ImageView f4156s;

    /* renamed from: t */
    private RelativeLayout f4157t;

    /* renamed from: u */
    private TextView f4158u;

    /* renamed from: v */
    private AbstractC0942d f4159v;

    /* renamed from: w */
    private boolean f4160w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.customview.ExpandTextView$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ExpandTextView$a.class */
    public class C0927a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ ViewGroup.LayoutParams f4161a;

        C0927a(ViewGroup.LayoutParams layoutParams) {
            this.f4161a = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f4161a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            ExpandTextView.this.f4154q.setLayoutParams(this.f4161a);
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
        this.f4139b = context;
        setOrientation(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandTextView);
        this.f4140c = obtainStyledAttributes.getString(11);
        this.f4141d = obtainStyledAttributes.getString(1);
        this.f4142e = obtainStyledAttributes.getString(4);
        this.f4143f = obtainStyledAttributes.getString(3);
        this.f4144g = obtainStyledAttributes.getColor(10, -1979711488);
        this.f4145h = obtainStyledAttributes.getColor(8, -570425344);
        this.f4146i = obtainStyledAttributes.getColor(9, -570425344);
        this.f4147j = obtainStyledAttributes.getDrawable(6);
        this.f4148k = obtainStyledAttributes.getInt(7, 4);
        this.f4149l = obtainStyledAttributes.getDimension(12, C1176f.m9850b(this.f4139b, 16.0f));
        this.f4150m = obtainStyledAttributes.getDimension(2, C1176f.m9850b(this.f4139b, 14.0f));
        this.f4151n = obtainStyledAttributes.getDimension(5, C1176f.m9850b(this.f4139b, 12.0f));
        this.f4152o = obtainStyledAttributes.getInt(0, 600);
        obtainStyledAttributes.recycle();
        m10561c();
    }

    /* renamed from: b */
    private void m10562b() {
        int i;
        int i2;
        if (!this.f4160w) {
            this.f4160w = true;
            int minMeasureHeight = getMinMeasureHeight();
            int maxMeasureHeight = getMaxMeasureHeight();
            int i3 = maxMeasureHeight;
            if (maxMeasureHeight < minMeasureHeight) {
                i3 = minMeasureHeight;
            }
            this.f4155r.setText(this.f4142e);
            ObjectAnimator.ofFloat(this.f4156s, "rotation", 0.0f, 180.0f).start();
            AbstractC0942d dVar = this.f4159v;
            i2 = minMeasureHeight;
            i = i3;
            if (dVar != null) {
                dVar.m10487a();
                i2 = minMeasureHeight;
                i = i3;
            }
        } else {
            this.f4160w = false;
            int maxMeasureHeight2 = getMaxMeasureHeight();
            int minMeasureHeight2 = getMinMeasureHeight();
            int i4 = maxMeasureHeight2;
            if (maxMeasureHeight2 < minMeasureHeight2) {
                i4 = minMeasureHeight2;
            }
            this.f4155r.setText(this.f4143f);
            ObjectAnimator.ofFloat(this.f4156s, "rotation", -180.0f, 0.0f).start();
            AbstractC0942d dVar2 = this.f4159v;
            i2 = i4;
            i = minMeasureHeight2;
            if (dVar2 != null) {
                dVar2.m10486b();
                i = minMeasureHeight2;
                i2 = i4;
            }
        }
        if (this.f4152o < 0) {
            this.f4152o = 600;
        }
        ViewGroup.LayoutParams layoutParams = this.f4154q.getLayoutParams();
        ValueAnimator ofInt = ValueAnimator.ofInt(i2, i);
        ofInt.setDuration(this.f4152o);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.addUpdateListener(new C0927a(layoutParams));
        ofInt.start();
    }

    /* renamed from: c */
    private void m10561c() {
        View.inflate(this.f4139b, R$layout.expand_text_view, this);
        this.f4153p = (TextView) findViewById(R$id.tv_title);
        this.f4154q = (TextView) findViewById(R$id.tv_content);
        this.f4155r = (TextView) findViewById(R$id.tv_more_hint);
        this.f4156s = (ImageView) findViewById(R$id.iv_arrow_more);
        this.f4157t = (RelativeLayout) findViewById(R$id.rl_show_more);
        this.f4153p.setText(this.f4140c);
        this.f4153p.setTextSize(0, this.f4149l);
        this.f4153p.setTextColor(this.f4144g);
        this.f4154q.setText(this.f4141d);
        this.f4154q.setTextSize(0, this.f4150m);
        this.f4154q.setTextColor(this.f4145h);
        this.f4155r.setText(this.f4143f);
        this.f4155r.setTextSize(0, this.f4151n);
        this.f4155r.setTextColor(this.f4146i);
        if (this.f4147j == null) {
            this.f4147j = getResources().getDrawable(R$drawable.ic_arrow_down_light_round);
        }
        this.f4156s.setImageDrawable(this.f4147j);
        this.f4157t.setOnClickListener(this);
        ViewGroup.LayoutParams layoutParams = this.f4154q.getLayoutParams();
        layoutParams.height = getMinMeasureHeight();
        this.f4154q.setLayoutParams(layoutParams);
    }

    public int getAnimationDuration() {
        return this.f4152o;
    }

    public String getContent() {
        return this.f4141d;
    }

    public int getContentTextColor() {
        return this.f4145h;
    }

    public float getContentTextSize() {
        return this.f4150m;
    }

    public String getExpandHint() {
        return this.f4143f;
    }

    public String getFoldHint() {
        return this.f4142e;
    }

    public int getHintTextColor() {
        return this.f4146i;
    }

    public float getHintTextSize() {
        return this.f4151n;
    }

    public Drawable getIndicateImage() {
        return this.f4147j;
    }

    public int getMaxMeasureHeight() {
        this.f4154q.measure(View.MeasureSpec.makeMeasureSpec(this.f4154q.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(3000, Integer.MIN_VALUE));
        return this.f4154q.getMeasuredHeight();
    }

    public int getMinMeasureHeight() {
        if (this.f4158u == null) {
            TextView textView = new TextView(this.f4139b);
            this.f4158u = textView;
            textView.setTextSize(0, this.f4150m);
            this.f4158u.setLineSpacing(C1176f.m9851a(this.f4139b, 6.0f), 1.0f);
            this.f4158u.setLines(this.f4148k);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f4154q.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE);
        this.f4158u.setLayoutParams(this.f4154q.getLayoutParams());
        this.f4158u.measure(makeMeasureSpec, makeMeasureSpec2);
        return this.f4158u.getMeasuredHeight();
    }

    public int getMinVisibleLines() {
        return this.f4148k;
    }

    public AbstractC0942d getReadMoreListener() {
        return this.f4159v;
    }

    public String getTitle() {
        return this.f4140c;
    }

    public int getTitleTextColor() {
        return this.f4144g;
    }

    public float getTitleTextSize() {
        return this.f4149l;
    }

    public View getTitleView() {
        return this.f4153p;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131297010) {
            m10562b();
        }
    }

    public void setAnimationDuration(int i) {
        this.f4152o = i;
    }

    public void setContent(String str) {
        this.f4141d = str;
        this.f4154q.setText(str);
    }

    public void setContentTextColor(int i) {
        this.f4145h = i;
        this.f4154q.setTextColor(i);
    }

    public void setContentTextSize(float f) {
        this.f4150m = C1176f.m9850b(this.f4139b, f);
        this.f4154q.setTextSize(f);
        this.f4158u = null;
        ViewGroup.LayoutParams layoutParams = this.f4154q.getLayoutParams();
        layoutParams.height = getMinMeasureHeight();
        this.f4154q.setLayoutParams(layoutParams);
    }

    public void setExpandHint(String str) {
        this.f4143f = str;
    }

    public void setFoldHint(String str) {
        this.f4142e = str;
    }

    public void setHintTextColor(int i) {
        this.f4146i = i;
        this.f4155r.setTextColor(i);
    }

    public void setHintTextSize(float f) {
        this.f4151n = C1176f.m9850b(this.f4139b, f);
        this.f4155r.setTextSize(f);
    }

    public void setIndicateImage(int i) {
        Drawable drawable = getResources().getDrawable(i);
        this.f4147j = drawable;
        this.f4156s.setImageDrawable(drawable);
    }

    public void setIndicateImage(Drawable drawable) {
        this.f4147j = drawable;
        this.f4156s.setImageDrawable(drawable);
    }

    public void setMinVisibleLines(int i) {
        this.f4148k = i;
        this.f4158u = null;
        ViewGroup.LayoutParams layoutParams = this.f4154q.getLayoutParams();
        layoutParams.height = getMinMeasureHeight();
        this.f4154q.setLayoutParams(layoutParams);
    }

    public void setOnReadMoreListener(AbstractC0942d dVar) {
        this.f4159v = dVar;
    }

    public void setTitle(String str) {
        this.f4140c = str;
        this.f4153p.setText(str);
    }

    public void setTitleTextColor(int i) {
        this.f4144g = i;
        this.f4153p.setTextColor(i);
    }

    public void setTitleTextSize(float f) {
        this.f4149l = C1176f.m9850b(this.f4139b, f);
        this.f4153p.setTextSize(f);
    }
}
