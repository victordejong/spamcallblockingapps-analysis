package com.android.contacts.link;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import com.android.contacts.widget.AutoScrollListView;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/UnlinkedListView.class */
public class UnlinkedListView extends AutoScrollListView {
    private static final int[] k = {16843609, 16843575, 16843576};
    private int A;
    private Paint B;
    private Drawable C;
    private boolean D;
    private String E;

    /* renamed from: a  reason: collision with root package name */
    public final int f1644a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1645b;
    AbsListView.OnScrollListener c;
    AbsListView.OnScrollListener d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private int i;
    private int j;
    private Context l;
    private a m;
    private ArrayList<ContactInfo> n;
    private ArrayList<ContactInfo> o;
    private Paint p;
    private Paint q;
    private Paint r;
    private String s;
    private float t;
    private boolean u;
    private Paint v;
    private Paint w;
    private String x;
    private float y;
    private boolean z;

    public UnlinkedListView(Context context) {
        this(context, null, Resources.getSystem().getIdentifier("listViewStyle", "attr", "android"));
    }

    public UnlinkedListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, Resources.getSystem().getIdentifier("listViewStyle", "attr", "android"));
    }

    public UnlinkedListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new AbsListView.OnScrollListener() { // from class: com.android.contacts.link.UnlinkedListView.1

            /* renamed from: a  reason: collision with root package name */
            int f1646a = -1;

            /* renamed from: b  reason: collision with root package name */
            String f1647b = "Sub Title";
            String c = "#";
            String d = "#";
            boolean e = false;
            boolean f = false;

            private void a(AbsListView absListView) {
                if (this.e) {
                    View childAt = absListView.getChildAt(0);
                    if (childAt != null) {
                        int bottom = childAt.getBottom();
                        if (bottom < UnlinkedListView.this.f1644a) {
                            UnlinkedListView.this.setSubTitle(this.f1647b, bottom);
                        } else {
                            UnlinkedListView.this.setSubTitle(this.f1647b);
                        }
                    } else {
                        return;
                    }
                } else {
                    UnlinkedListView.this.setSubTitle(this.f1647b);
                }
                if (this.f) {
                    View childAt2 = absListView.getChildAt(0);
                    if (childAt2 != null) {
                        int bottom2 = childAt2.getBottom();
                        if (bottom2 > UnlinkedListView.this.f1645b) {
                            UnlinkedListView.this.setIndexTitle(this.c);
                        } else if (bottom2 > UnlinkedListView.this.f1644a) {
                            UnlinkedListView.this.setIndexTitle(this.c, bottom2);
                        } else {
                            UnlinkedListView.this.setIndexTitle(this.d);
                        }
                    }
                } else {
                    UnlinkedListView.this.setIndexTitle(this.d);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
                if (UnlinkedListView.this.m != null) {
                    if (this.f1646a != i2 || i2 == 0) {
                        this.f1646a = i2;
                        if (UnlinkedListView.this.n == null || this.f1646a >= UnlinkedListView.this.n.size() + 1 || UnlinkedListView.this.n.size() <= 0) {
                            this.f1647b = UnlinkedListView.this.l.getString(2131756095);
                            if (!UnlinkedListView.this.z && UnlinkedListView.this.m != null && UnlinkedListView.this.m.b(-1)) {
                                UnlinkedListView.this.setIndexHeaderEnabled(true);
                            }
                        } else {
                            this.f1647b = UnlinkedListView.this.l.getString(2131756096);
                            UnlinkedListView.this.setIndexHeaderEnabled(false);
                        }
                        this.f1647b = this.f1647b.toUpperCase();
                        if (UnlinkedListView.this.n == null || this.f1646a != UnlinkedListView.this.n.size() || UnlinkedListView.this.n.size() <= 0) {
                            this.e = false;
                        } else {
                            this.e = true;
                        }
                        int size = (UnlinkedListView.this.n == null || UnlinkedListView.this.n.size() <= 0) ? this.f1646a - 1 : (this.f1646a - UnlinkedListView.this.n.size()) - 2;
                        if (size < 0) {
                            this.c = UnlinkedListView.this.m.a();
                            this.d = UnlinkedListView.this.m.a();
                            this.f = false;
                        } else if (UnlinkedListView.this.m.b(size)) {
                            this.c = UnlinkedListView.this.m.a(size);
                            this.d = UnlinkedListView.this.m.c(size);
                            this.f = true;
                        } else {
                            this.c = UnlinkedListView.this.m.a(size);
                            this.d = UnlinkedListView.this.m.a(size);
                            this.f = false;
                        }
                    } else if (this.f1646a == 0) {
                        if (UnlinkedListView.this.n == null || UnlinkedListView.this.n.size() <= 0) {
                            this.f1647b = UnlinkedListView.this.l.getString(2131756095);
                        } else {
                            this.f1647b = UnlinkedListView.this.l.getString(2131756096);
                            UnlinkedListView.this.setIndexHeaderEnabled(false);
                        }
                        this.f1647b = this.f1647b.toUpperCase();
                    }
                    a(absListView);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScrollStateChanged(AbsListView absListView, int i2) {
                if (i2 == 0 && UnlinkedListView.this.m != null) {
                    a(absListView);
                }
            }
        };
        this.d = new AbsListView.OnScrollListener() { // from class: com.android.contacts.link.UnlinkedListView.2

            /* renamed from: a  reason: collision with root package name */
            int f1648a = -1;

            /* renamed from: b  reason: collision with root package name */
            String f1649b = "#";
            String c = "#";
            boolean d = false;

            private void a(AbsListView absListView) {
                if (this.d) {
                    View childAt = absListView.getChildAt(0);
                    if (childAt != null) {
                        int bottom = childAt.getBottom();
                        if (bottom > UnlinkedListView.this.f1645b) {
                            UnlinkedListView.this.setIndexTitle(this.f1649b);
                        } else if (bottom > UnlinkedListView.this.f1644a) {
                            UnlinkedListView.this.setIndexTitle(this.f1649b, bottom);
                        } else {
                            UnlinkedListView.this.setIndexTitle(this.c);
                        }
                    }
                } else {
                    UnlinkedListView.this.setIndexTitle(this.c);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
                if (UnlinkedListView.this.m != null) {
                    if (this.f1648a != i2 || i2 == 0) {
                        this.f1648a = i2;
                        int i5 = this.f1648a - 1;
                        if (i5 < 0) {
                            this.f1649b = UnlinkedListView.this.m.a();
                            this.c = UnlinkedListView.this.m.a();
                            this.d = false;
                        } else if (UnlinkedListView.this.m.b(i5)) {
                            this.f1649b = UnlinkedListView.this.m.a(i5);
                            this.c = UnlinkedListView.this.m.c(i5);
                            this.d = true;
                        } else {
                            this.f1649b = UnlinkedListView.this.m.a(i5);
                            this.c = UnlinkedListView.this.m.a(i5);
                            this.d = false;
                        }
                    }
                    a(absListView);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScrollStateChanged(AbsListView absListView, int i2) {
                if (i2 == 0 && UnlinkedListView.this.m != null) {
                    a(absListView);
                }
            }
        };
        this.l = context;
        Resources resources = context.getResources();
        this.f1644a = resources.getDimensionPixelSize(2131100239);
        this.f1645b = resources.getDimensionPixelSize(2131100236);
        this.e = resources.getDimensionPixelSize(2131100240);
        this.f = resources.getDimensionPixelSize(2131100088);
        this.g = resources.getDimensionPixelSize(2131100237);
        this.h = resources.getDimensionPixelSize(2131100088);
        this.j = resources.getDimensionPixelSize(2131100004);
        setFastScrollAlwaysVisible(true);
        this.i = resources.getDimensionPixelOffset(2131099789);
        setPadding(getPaddingLeft(), getPaddingTop(), this.i, getPaddingBottom());
        this.p = new Paint();
        this.p.setColor(-9013642);
        this.q = new Paint();
        this.q.setColor(-2303269);
        this.r = new Paint();
        this.r.setColor(-8947849);
        this.r.setTextSize(this.f);
        this.r.setTypeface(Typeface.create("sans-serif", 1));
        this.s = "Sub Title";
        this.t = this.f1644a;
        this.u = false;
        this.v = new Paint();
        this.v.setColor(-2303269);
        this.w = new Paint();
        this.w.setColor(-8947849);
        this.w.setTextSize(this.h);
        this.w.setTypeface(Typeface.create("sans-serif", 1));
        this.x = "Index Title";
        this.y = this.f1645b;
        this.z = false;
        this.D = false;
        this.E = "#";
        TypedArray obtainStyledAttributes = this.l.getTheme().obtainStyledAttributes(k);
        this.C = obtainStyledAttributes.getDrawable(2);
        this.A = this.l.getResources().getDimensionPixelSize(2131100149);
        this.B = new Paint();
        this.B.setAntiAlias(true);
        this.B.setTextAlign(Paint.Align.CENTER);
        this.B.setTextSize(this.A / 2);
        this.A += 20;
        this.B.setColor(obtainStyledAttributes.getColorStateList(0).getDefaultColor());
        this.B.setStyle(Paint.Style.FILL_AND_STROKE);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        super.dispatchDraw(canvas);
        canvas.restore();
        int save = canvas.save();
        if (this.D) {
            Rect rect = new Rect();
            rect.left = 60;
            rect.top = canvas.getHeight() / 4;
            rect.right = rect.left + this.A;
            rect.bottom = rect.top + this.A;
            if (this.C != null) {
                this.C.setBounds(rect.left, rect.top, rect.right, rect.bottom);
                this.C.draw(canvas);
                float descent = this.B.descent();
                Rect rect2 = new Rect();
                this.C.getPadding(rect2);
                RectF rectF = new RectF();
                rectF.top = rect.top;
                rectF.right = rect.right;
                rectF.bottom = rect.bottom;
                rectF.left = rect.left;
                int i = (rect2.right - rect2.left) / 2;
                int i2 = (rect2.bottom - rect2.top) / 2;
                canvas.drawText(this.E, (((int) (rectF.left + rectF.right)) / 2) - i, (((((int) (rectF.top + rectF.bottom)) / 2) + (this.A / 4)) - descent) - i2, this.B);
            }
        }
        int width = getWidth() - this.i;
        canvas.clipRect(0, 0, width, this.f1645b);
        if (this.z) {
            canvas.drawRect(0.0f, this.t, width, this.y, this.v);
            canvas.drawText(this.x, this.g, this.y - ((this.f1645b - this.f1644a) / 3), this.w);
            canvas.drawRect(0.0f, this.y, width, this.y - this.j, this.p);
        }
        if (this.u) {
            canvas.drawRect(0.0f, 0.0f, width, this.t, this.q);
            canvas.drawText(this.s, this.e, this.t - (this.f1644a / 3), this.r);
            canvas.drawRect(0.0f, this.t, width, this.j + this.t, this.p);
        }
        canvas.restoreToCount(save);
        invalidate();
    }

    @Override // android.widget.AbsListView, android.view.View
    protected float getTopFadingEdgeStrength() {
        return 0.0f;
    }

    public void setAlphabetEnabled(boolean z) {
        this.D = z;
    }

    public void setAlphabetText(String str) {
        if (str != null && !str.isEmpty()) {
            this.E = str;
            this.D = true;
        } else if (this.D) {
            this.D = false;
        } else {
            return;
        }
        invalidate();
    }

    public void setIndexHeaderEnabled(boolean z) {
        this.z = z;
    }

    public void setIndexManager(a aVar) {
        this.m = aVar;
    }

    public void setIndexTitle(String str) {
        setIndexTitle(str, this.f1645b);
    }

    public void setIndexTitle(String str, float f) {
        if (!TextUtils.isEmpty(str)) {
            this.x = str;
        } else {
            this.x = "#";
        }
        this.y = f;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        this.i = i3;
    }

    public void setSubHeaderEnabled(boolean z) {
        this.u = z;
    }

    public void setSubTitle(String str) {
        setSubTitle(str, this.f1644a);
    }

    public void setSubTitle(String str, float f) {
        if (!TextUtils.isEmpty(str)) {
            this.s = str;
        } else {
            this.s = this.l.getString(2131756095);
        }
        this.s = this.s.toUpperCase();
        this.t = f;
    }

    public void setSuggestedContactList(ArrayList<ContactInfo> arrayList) {
        this.n = arrayList;
    }

    public void setType(int i) {
        if (i == 1) {
            setOnScrollListener(this.c);
        } else if (i == 2) {
            setOnScrollListener(this.d);
        }
    }

    public void setUnlinkedContactList(ArrayList<ContactInfo> arrayList) {
        this.o = arrayList;
    }
}
