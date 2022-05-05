package com.android.contacts.dialpad;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingCandidate.class */
public class AsusHandwritingCandidate extends View {

    /* renamed from: a  reason: collision with root package name */
    protected static final List<CharSequence> f823a = new ArrayList();
    protected int D;
    protected int E;
    protected GestureDetector F;
    protected a c;
    protected boolean d;
    protected CharSequence e;
    protected int f;
    protected Drawable h;
    protected Rect i;
    protected Drawable j;
    protected int o;
    protected int p;
    protected boolean w;
    protected int x;

    /* renamed from: b  reason: collision with root package name */
    protected List<CharSequence> f824b = f823a;
    protected int g = -1;
    private boolean H = false;
    private boolean I = false;
    protected int[] l = new int[10];
    protected int[] m = new int[10];
    protected int[] n = new int[10];
    protected float y = 0.0f;
    protected float z = 0.0f;
    protected boolean A = false;
    protected boolean B = false;
    protected int C = -1;
    private PopupWindow J = null;
    private PopupWindow K = null;
    private boolean L = false;
    private GridLayout M = null;
    private int N = 0;
    private int O = 0;
    b G = new b();
    protected int q = -16777216;
    protected int r = -1;
    protected int s = -16777216;
    protected int t = -16777216;
    protected boolean k = true;
    protected Paint u = new Paint();
    protected int v = (int) this.u.descent();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingCandidate$a.class */
    public interface a {
        void a(CharSequence charSequence);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingCandidate$b.class */
    protected final class b {
        static final /* synthetic */ boolean d;

        /* renamed from: a  reason: collision with root package name */
        boolean f831a;

        /* renamed from: b  reason: collision with root package name */
        float f832b;
        final float c = 0.3f;

        static {
            d = !AsusHandwritingCandidate.class.desiredAssertionStatus();
        }

        public b() {
            a();
        }

        public final void a() {
            this.f831a = true;
            this.f832b = 0.0f;
        }
    }

    public AsusHandwritingCandidate(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = context.getResources().getDrawable(2131165456);
        context.getSystemService("layout_inflater");
        this.E = (int) a(context, context.getResources().getInteger(2131361799));
        this.j = context.getResources().getDrawable(2131165448);
        this.u.setColor(this.q);
        this.u.setAntiAlias(true);
        this.u.setTextSize(this.E);
        this.u.setStrokeWidth(0.0f);
        this.F = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.android.contacts.dialpad.AsusHandwritingCandidate.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                AsusHandwritingCandidate.this.w = true;
                AsusHandwritingCandidate.this.z = 0.0f;
                AsusHandwritingCandidate.this.y = 0.0f;
                AsusHandwritingCandidate.this.setScrollX(AsusHandwritingCandidate.this.getScrollX() + ((int) AsusHandwritingCandidate.this.a(f)));
                AsusHandwritingCandidate.this.x = AsusHandwritingCandidate.this.getScrollX();
                b bVar = AsusHandwritingCandidate.this.G;
                if (bVar.f831a) {
                    bVar.f832b = f;
                    bVar.f831a = false;
                } else {
                    bVar.f832b = (bVar.c * bVar.f832b) + ((1.0f - bVar.c) * f);
                }
                AsusHandwritingCandidate.this.invalidate();
                return true;
            }
        });
        this.F.setIsLongpressEnabled(false);
        setHorizontalFadingEdgeEnabled(true);
        setWillNotDraw(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        d();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int integer = context.getResources().getInteger(2131361800);
        this.o = (int) (displayMetrics.density * 8.0f);
        this.p = (int) a(context, integer);
    }

    private static float a(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f > f3 ? f3 : f;
        }
        return f2;
    }

    private static float a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    private static int b(int i, int i2) {
        int i3 = i + 20;
        return i3 % i2 == 0 ? i3 / i2 : (i3 / i2) + 1;
    }

    private int c(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (this.M == null || this.f824b == null || this.f824b.size() == 0) {
            i3 = 0;
        } else {
            int i8 = i2;
            if (i2 == 0) {
                i8 = this.M.getColumnCount();
            }
            DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
            int columnCount = (!this.H || !this.I) ? displayMetrics.widthPixels / this.M.getColumnCount() : this.J.getWidth() / this.M.getColumnCount();
            if (PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
                i5 = (int) (76.0f * displayMetrics.density);
                i3 = i8;
                i4 = i;
            } else {
                i5 = (int) (48.0f * displayMetrics.density);
                i4 = i;
                i3 = i8;
            }
            while (i4 < this.f824b.size()) {
                CharSequence charSequence = this.f824b.get(i4);
                int b2 = b((int) this.u.measureText(charSequence.toString()), columnCount);
                int i9 = i3 - b2;
                if (i9 < (i4 + 1 < this.f824b.size() ? b((int) this.u.measureText(this.f824b.get(i4 + 1).toString()), columnCount) : 0)) {
                    i6 = b2 + i9;
                    i7 = 0;
                } else {
                    i6 = b2;
                    i7 = i9;
                }
                TextView textView = new TextView(getContext());
                GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(Integer.MIN_VALUE), GridLayout.spec(Integer.MIN_VALUE, i6));
                layoutParams.setGravity(119);
                textView.setLayoutParams(layoutParams);
                textView.setText(charSequence);
                textView.setTextColor(-16777216);
                textView.setBackgroundDrawable(getResources().getDrawable(2131165857));
                textView.getPaint().setTextSize(this.u.getTextSize());
                textView.setGravity(17);
                textView.setWidth(columnCount * i6);
                textView.setHeight(i5);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.AsusHandwritingCandidate.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int indexOfChild = AsusHandwritingCandidate.this.M.indexOfChild(view);
                        if (indexOfChild >= 0 && AsusHandwritingCandidate.this.f824b.size() > 0 && indexOfChild < AsusHandwritingCandidate.this.f824b.size()) {
                            AsusHandwritingCandidate.this.a(indexOfChild, AsusHandwritingCandidate.this.f824b.get(indexOfChild));
                            AsusHandwritingCandidate.this.a();
                        }
                        if (AsusHandwritingCandidate.this.J.isShowing()) {
                            AsusHandwritingCandidate.this.J.dismiss();
                        }
                    }
                });
                this.M.addView(textView);
                if (i7 <= 0) {
                    i3 = this.M.getColumnCount();
                    textView.setBackgroundDrawable(getResources().getDrawable(2131165856));
                } else {
                    i3 = i7;
                }
                i4++;
            }
            this.O = this.f824b.size();
        }
        return i3;
    }

    private void d() {
        this.f824b = f823a;
        this.g = -1;
        this.e = null;
        this.f = -1;
        this.D = 0;
        invalidate();
        Arrays.fill(this.l, 0);
        Arrays.fill(this.n, 0);
        setScrollX(0);
        this.z = 0.0f;
        this.y = 0.0f;
        if (this.J != null && this.J.isShowing()) {
            this.J.dismiss();
        }
    }

    protected final float a(float f) {
        float scrollX = getScrollX();
        int width = getWidth();
        int max = Math.max(0, this.D - width);
        float f2 = width / 4;
        float f3 = scrollX;
        if (scrollX >= 0.0f) {
            f3 = scrollX > ((float) max) ? scrollX - max : 0.0f;
        }
        float min = Math.min(Math.abs(f3), f2);
        float pow = ((float) Math.pow(1.0f - ((min * min) / (f2 * f2)), 0.8d)) * f;
        return (f3 * f >= 0.0f || Math.abs(pow) >= 1.0f) ? pow : f / Math.abs(f);
    }

    protected final void a() {
        if (this.e != null) {
            this.c.a(this.e);
        }
        a(this.f, (CharSequence) null);
    }

    public final void a(int i, int i2) {
        if (this.f824b != null && this.f824b.size() > 0) {
            if (this.J == null) {
                this.J = new PopupWindow(((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(2131427543, (ViewGroup) null, false));
            }
            this.J.setHeight(i);
            this.J.setWidth(i2);
            this.K = this.J;
            View contentView = this.K.getContentView();
            if (contentView != null) {
                contentView.findViewById(2131296935).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.AsusHandwritingCandidate.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (AsusHandwritingCandidate.this.K.isShowing()) {
                            AsusHandwritingCandidate.this.K.dismiss();
                        }
                    }
                });
                this.M = (GridLayout) contentView.findViewById(2131296792);
                if (this.M != null) {
                    if (this.M.getChildCount() != 0) {
                        this.M.removeAllViews();
                    }
                    final ScrollView scrollView = (ScrollView) contentView.findViewById(2131296796);
                    if (scrollView != null) {
                        scrollView.setScrollY(0);
                        scrollView.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.dialpad.AsusHandwritingCandidate.3

                            /* renamed from: a  reason: collision with root package name */
                            GestureDetector f827a;

                            {
                                this.f827a = new GestureDetector(AsusHandwritingCandidate.this.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.android.contacts.dialpad.AsusHandwritingCandidate.3.1
                                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                                    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                                        scrollView.getScrollY();
                                        AsusHandwritingCandidate.this.M.getHeight();
                                        scrollView.getHeight();
                                        return true;
                                    }
                                });
                            }

                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                this.f827a.onTouchEvent(motionEvent);
                                if (AsusHandwritingCandidate.this.K.isShowing() && motionEvent.getAction() == 0) {
                                    AsusHandwritingCandidate.this.L = true;
                                }
                                if (!AsusHandwritingCandidate.this.K.isShowing() || motionEvent.getAction() != 1 || !AsusHandwritingCandidate.this.L) {
                                    return false;
                                }
                                AsusHandwritingCandidate.this.L = false;
                                AsusHandwritingCandidate.this.c();
                                return false;
                            }
                        });
                    }
                    this.N = c(0, this.M.getColumnCount());
                    this.K.showAsDropDown(this, 0, getHeight() * (-1));
                }
            }
        }
    }

    protected final void a(int i, CharSequence charSequence) {
        this.f = i;
        this.e = charSequence;
    }

    public final void b() {
        this.c = null;
    }

    public final void c() {
        if (this.K != null && this.K.isShowing()) {
            this.K.dismiss();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return this.D;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int max;
        int i;
        this.D = 0;
        if (this.f824b != null) {
            int height = getHeight();
            if (this.i == null) {
                this.i = new Rect(0, 0, 0, 0);
                if (getBackground() != null) {
                    getBackground().getPadding(this.i);
                }
            }
            this.j.setBounds(0, this.i.top, this.j.getIntrinsicWidth(), getHeight());
            int i2 = 0;
            int size = this.f824b.size();
            Rect rect = this.i;
            Paint paint = this.u;
            int i3 = this.g;
            int scrollX = getScrollX();
            boolean z = this.w;
            int textSize = ((int) ((height + this.u.getTextSize()) - this.v)) / 2;
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 == 0 && canvas != null) {
                    canvas.translate(i2, 0.0f);
                    this.j.draw(canvas);
                    canvas.translate(-i2, 0.0f);
                }
                CharSequence charSequence = this.f824b.get(i4);
                if (!(charSequence == null || charSequence.length() == 0)) {
                    int i5 = 0;
                    paint.setUnderlineText(false);
                    if (charSequence.charAt(0) == 40959) {
                        if (charSequence.charAt(1) != '~') {
                            paint.setUnderlineText(true);
                            i5 = 1;
                            paint.setColor(this.t);
                        } else {
                            continue;
                        }
                    } else if (this.f == i4 && this.k) {
                        paint.setTypeface(Typeface.DEFAULT_BOLD);
                        paint.setColor(this.r);
                    } else if (i4 != 0 || !this.k) {
                        paint.setColor(this.s);
                    } else {
                        paint.setColor(this.q);
                    }
                    if (i4 >= 10) {
                        break;
                    }
                    if (this.l[i4] != 0) {
                        i = this.l[i4];
                        max = this.m[i4];
                    } else {
                        int measureText = (int) paint.measureText(charSequence, i5, charSequence.length());
                        max = Math.max(this.o, (this.p - measureText) / 2);
                        i = measureText + (max * 2);
                        this.l[i4] = i;
                        this.m[i4] = max;
                    }
                    this.n[i4] = i2;
                    if (i3 + scrollX >= i2 && i3 + scrollX < i2 + i && !z && this.g != -1) {
                        if (canvas != null) {
                            canvas.translate(i2, 0.0f);
                            this.h.setBounds(0, rect.top, i, height);
                            this.h.draw(canvas);
                            canvas.translate(-i2, 0.0f);
                        }
                        this.C = i4;
                    }
                    if (canvas != null) {
                        if (charSequence instanceof SpannableStringBuilder) {
                            for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) ((SpannableStringBuilder) charSequence).getSpans(0, charSequence.length(), ForegroundColorSpan.class)) {
                                paint.setColor(foregroundColorSpan.getForegroundColor());
                            }
                        }
                        if (this.f == i4 && this.k && this.g == -1) {
                            canvas.translate(i2, 0.0f);
                            this.h.setBounds(0, rect.top, i, height);
                            this.h.draw(canvas);
                            canvas.translate(-i2, 0.0f);
                        }
                        canvas.drawText(charSequence, i5, charSequence.length(), i2 + max, textSize, paint);
                        paint.setColor(this.s);
                        canvas.translate(i2 + i, 0.0f);
                        this.j.draw(canvas);
                        canvas.translate((-i2) - i, 0.0f);
                    }
                    paint.setTypeface(Typeface.DEFAULT);
                    i2 += i;
                }
            }
            this.D = i2;
            if (this.x != getScrollX()) {
                if (this.x > getScrollX()) {
                    setScrollX(((int) ((Math.pow(Math.min(this.x - getScrollX(), 100.0d) / 100.0d, 1.5d) * 12.0d) + 1.0d)) + getScrollX());
                    if (getScrollX() >= this.x) {
                        setScrollX(this.x);
                        requestLayout();
                    }
                } else {
                    setScrollX(getScrollX() - ((int) ((Math.pow(Math.min(getScrollX() - this.x, 100.0d) / 100.0d, 1.5d) * 12.0d) + 1.0d)));
                    if (getScrollX() <= this.x) {
                        setScrollX(this.x);
                        requestLayout();
                    }
                }
                invalidate();
            }
            if (!this.A) {
                float abs = 0.0f == this.y ? 0.0f : this.y / Math.abs(this.y);
                float scrollX2 = getScrollX();
                int max2 = Math.max(0, this.D - getWidth());
                if (scrollX2 < 0.0f || scrollX2 > max2) {
                    if (scrollX2 >= 0.0f) {
                        scrollX2 -= max2;
                    }
                    if (abs * scrollX2 > 0.0f) {
                        this.z = abs * (-0.005f) * scrollX2 * scrollX2;
                        this.z = a(this.z, -10.0f, 10.0f);
                    } else {
                        this.z = 0.0f;
                        this.y = 0.0f;
                        if (scrollX2 < 0.0f) {
                            this.x = 0;
                        } else {
                            this.x = max2;
                        }
                        invalidate();
                    }
                } else if (0.0f != this.y) {
                    this.z = abs * (-0.6f);
                } else {
                    this.z = 0.0f;
                }
                if (!(0.0f == this.z && 0.0f == this.y)) {
                    float scrollX3 = getScrollX();
                    int max3 = Math.max(0, this.D - getWidth());
                    float f = this.y;
                    setScrollX(getScrollX() + ((int) a(this.y * 1.0f)));
                    this.y += this.z * 1.0f;
                    if (Math.abs(this.y) < 1.0f) {
                        this.y = 0.0f;
                    }
                    if ((f * this.y <= 0.0f && getScrollX() >= 0 && getScrollX() <= max3) || ((scrollX3 < 0.0f && getScrollX() >= 0) || (scrollX3 > max3 && getScrollX() <= max3))) {
                        this.y = 0.0f;
                        this.z = 0.0f;
                        if (scrollX3 < 0.0f && getScrollX() >= 0) {
                            setScrollX(0);
                        } else if (scrollX3 > max3 && getScrollX() <= max3) {
                            setScrollX(getScrollX() + max3);
                        }
                    }
                    this.x = getScrollX();
                    requestLayout();
                    invalidate();
                }
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        this.g = x;
        if (this.F.onTouchEvent(motionEvent)) {
            return true;
        }
        switch (action) {
            case 0:
                this.A = true;
                this.B = false;
                this.G.a();
                this.z = 0.0f;
                this.y = 0.0f;
                this.w = false;
                this.C = -1;
                invalidate();
                return true;
            case 1:
                this.A = false;
                this.B = false;
                if (!this.G.f831a) {
                    b bVar = this.G;
                    if (b.d || !bVar.f831a) {
                        this.y = a(bVar.f832b, -30.0f, 30.0f) * 0.7f;
                    } else {
                        throw new AssertionError();
                    }
                }
                if (!this.w && this.C != -1 && this.f824b.size() > 0 && this.C < this.f824b.size()) {
                    a(this.C, this.f824b.get(this.C));
                    a();
                }
                this.g = -1;
                invalidate();
                return true;
            case 2:
                if (y > 0 || this.B) {
                    return true;
                }
                this.B = true;
                return true;
            default:
                return true;
        }
    }

    public void setMoreSuggestions(List<CharSequence> list) {
        if (list != null) {
            this.f824b = new ArrayList(list);
        }
        this.N = c(this.O, this.N);
    }

    public void setOnWordSelectActionListener(a aVar) {
        this.c = aVar;
    }

    public void setSuggestions(List<CharSequence> list, boolean z, int i) {
        d();
        if (list != null && list.size() > 0) {
            this.d = z;
            setScrollX(0);
            this.x = 0;
            this.f = i;
            setMoreSuggestions(list);
            a(i, this.f824b.get(i));
        }
    }
}
