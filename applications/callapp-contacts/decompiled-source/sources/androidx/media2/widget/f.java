package androidx.media2.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.RelativeLayout;
import androidx.media2.widget.e;
import androidx.media2.widget.g;
import androidx.media2.widget.o;
import androidx.media2.widget.p;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/f.class */
final class f extends o.d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5218a;

    /* renamed from: b  reason: collision with root package name */
    private a f5219b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a.class */
    public final class a extends g implements e.h {

        /* renamed from: b  reason: collision with root package name */
        private final C0106a f5221b;

        /* renamed from: androidx.media2.widget.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$a.class */
        final class C0106a implements Handler.Callback {

            /* renamed from: b  reason: collision with root package name */
            private final b f5223b;

            /* renamed from: d  reason: collision with root package name */
            private d f5225d;

            /* renamed from: c  reason: collision with root package name */
            private boolean f5224c = false;
            private final d[] e = new d[8];
            private final ArrayList<e.b> f = new ArrayList<>();
            private final Handler g = new Handler(this);

            C0106a(b bVar) {
                this.f5223b = bVar;
            }

            private void a() {
                this.f5225d = null;
                this.f5224c = false;
                this.f.clear();
                for (int i = 0; i < 8; i++) {
                    d[] dVarArr = this.e;
                    if (dVarArr[i] != null) {
                        dVarArr[i].e();
                    }
                    this.e[i] = null;
                }
                this.f5223b.setVisibility(4);
                this.g.removeMessages(2);
            }

            private void a(int i) {
                d dVar;
                if (i >= 0) {
                    d[] dVarArr = this.e;
                    if (i < dVarArr.length && (dVar = dVarArr[i]) != null) {
                        this.f5225d = dVar;
                    }
                }
            }

            private void a(e.c cVar) {
                d dVar = this.f5225d;
                if (dVar != null) {
                    dVar.a(cVar);
                }
            }

            private void a(e.C0105e eVar) {
                d dVar = this.f5225d;
                if (dVar != null) {
                    dVar.a(eVar.f5208a);
                }
            }

            private void a(e.f fVar) {
                int i;
                if (fVar != null && (i = fVar.f5210a) >= 0) {
                    d[] dVarArr = this.e;
                    if (i < dVarArr.length) {
                        d dVar = dVarArr[i];
                        d dVar2 = dVar;
                        if (dVar == null) {
                            dVar2 = new d(a.this, this.f5223b.getContext());
                        }
                        dVar2.a(this.f5223b, fVar);
                        this.e[i] = dVar2;
                        this.f5225d = dVar2;
                    }
                }
            }

            private void a(String str) {
                d dVar = this.f5225d;
                if (dVar != null) {
                    dVar.a(str);
                    this.g.removeMessages(2);
                    Handler handler = this.g;
                    handler.sendMessageDelayed(handler.obtainMessage(2), Constants.MINUTE_IN_MILLIS);
                }
            }

            private ArrayList<d> b(int i) {
                d dVar;
                ArrayList<d> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < 8; i2++) {
                    if (!(((1 << i2) & i) == 0 || (dVar = this.e[i2]) == null)) {
                        arrayList.add(dVar);
                    }
                }
                return arrayList;
            }

            private void b() {
                this.f5224c = false;
                c();
            }

            private void c() {
                Iterator<e.b> it2 = this.f.iterator();
                while (it2.hasNext()) {
                    a(it2.next());
                }
                this.f.clear();
            }

            private void c(int i) {
                if (i != 0) {
                    Iterator<d> it2 = b(i).iterator();
                    while (it2.hasNext()) {
                        it2.next().a();
                    }
                }
            }

            private void d(int i) {
                if (i != 0) {
                    Iterator<d> it2 = b(i).iterator();
                    while (it2.hasNext()) {
                        it2.next().b();
                    }
                }
            }

            private void e(int i) {
                if (i != 0) {
                    Iterator<d> it2 = b(i).iterator();
                    while (it2.hasNext()) {
                        it2.next().c();
                    }
                }
            }

            private void f(int i) {
                if (i != 0) {
                    Iterator<d> it2 = b(i).iterator();
                    while (it2.hasNext()) {
                        d next = it2.next();
                        if (next.isShown()) {
                            next.c();
                        } else {
                            next.b();
                        }
                    }
                }
            }

            private void g(int i) {
                if (i != 0) {
                    Iterator<d> it2 = b(i).iterator();
                    while (it2.hasNext()) {
                        d next = it2.next();
                        next.e();
                        this.e[next.f5229a] = null;
                    }
                }
            }

            private void h(int i) {
                if (i >= 0 && i <= 255) {
                    this.f5224c = true;
                    Handler handler = this.g;
                    handler.sendMessageDelayed(handler.obtainMessage(1), i * 100);
                }
            }

            public final void a(e.b bVar) {
                if (this.f5224c) {
                    this.f.add(bVar);
                    return;
                }
                switch (bVar.f5199a) {
                    case 1:
                        a((String) bVar.f5200b);
                        return;
                    case 2:
                        ((Character) bVar.f5200b).charValue();
                        return;
                    case 3:
                        a(((Integer) bVar.f5200b).intValue());
                        return;
                    case 4:
                        c(((Integer) bVar.f5200b).intValue());
                        return;
                    case 5:
                        d(((Integer) bVar.f5200b).intValue());
                        return;
                    case 6:
                        e(((Integer) bVar.f5200b).intValue());
                        return;
                    case 7:
                        f(((Integer) bVar.f5200b).intValue());
                        return;
                    case 8:
                        g(((Integer) bVar.f5200b).intValue());
                        return;
                    case 9:
                        h(((Integer) bVar.f5200b).intValue());
                        return;
                    case 10:
                        b();
                        return;
                    case 11:
                        a();
                        return;
                    case 12:
                        a((e.c) bVar.f5200b);
                        return;
                    case 13:
                    case 15:
                    default:
                        return;
                    case 14:
                        a((e.C0105e) bVar.f5200b);
                        return;
                    case 16:
                        a((e.f) bVar.f5200b);
                        return;
                }
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    b();
                    return true;
                } else if (i != 2) {
                    return false;
                } else {
                    c(255);
                    return true;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$b.class */
        public final class b extends e implements g.a {

            /* renamed from: c  reason: collision with root package name */
            private final e f5227c;

            b(Context context) {
                super(context);
                e eVar = new e(context);
                this.f5227c = eVar;
                addView(eVar, new e.C0107a(0.1f, 0.9f, 0.1f, 0.9f));
            }

            @Override // androidx.media2.widget.g.a
            public final void a(float f) {
                int childCount = this.f5227c.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    d dVar = (d) this.f5227c.getChildAt(i);
                    dVar.f5230b = f;
                    dVar.d();
                }
            }

            @Override // androidx.media2.widget.g.a
            public final void a(androidx.media2.widget.b bVar) {
                int childCount = this.f5227c.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ((d) this.f5227c.getChildAt(i)).a(bVar);
                }
            }

            public final void a(d dVar) {
                this.f5227c.removeView(dVar);
            }

            public final void a(d dVar, e.C0107a aVar) {
                if (this.f5227c.indexOfChild(dVar) < 0) {
                    this.f5227c.addView(dVar, aVar);
                } else {
                    this.f5227c.updateViewLayout(dVar, aVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$c.class */
        public final class c extends q {
            c(a aVar, Context context) {
                this(aVar, context, null);
            }

            c(a aVar, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            c(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
            }

            final void a(androidx.media2.widget.b bVar) {
                if (Build.VERSION.SDK_INT >= 21) {
                    if (bVar.g) {
                        a(bVar.f5159b);
                    }
                    if (bVar.h) {
                        setBackgroundColor(bVar.f5160c);
                    }
                    if (bVar.i) {
                        b(bVar.f5161d);
                    }
                    if (bVar.j) {
                        c(bVar.e);
                    }
                }
                a(bVar.k);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$d.class */
        public final class d extends RelativeLayout implements View.OnLayoutChangeListener {

            /* renamed from: a  reason: collision with root package name */
            int f5229a;

            /* renamed from: b  reason: collision with root package name */
            float f5230b;

            /* renamed from: d  reason: collision with root package name */
            private b f5232d;
            private c e;
            private androidx.media2.widget.b f;
            private int g;
            private final SpannableStringBuilder h;
            private final List<CharacterStyle> i;
            private int j;
            private float k;
            private String l;
            private int m;
            private int n;

            d(a aVar, Context context) {
                this(aVar, context, null);
            }

            d(a aVar, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            d(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
                this.g = 0;
                this.h = new SpannableStringBuilder();
                this.i = new ArrayList();
                this.j = -1;
                this.e = new c(a.this, context);
                addView(this.e, new RelativeLayout.LayoutParams(-2, -2));
                if (Build.VERSION.SDK_INT >= 19) {
                    CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
                    this.f5230b = captioningManager.getFontScale();
                    a(new androidx.media2.widget.b(captioningManager.getUserStyle()));
                } else {
                    this.f5230b = 1.0f;
                    a(androidx.media2.widget.b.f5158a);
                }
                this.e.a("");
                f();
            }

            private void b(int i) {
                if (i >= 0) {
                    this.g = i;
                    return;
                }
                throw new IllegalArgumentException("A rowLimit should have a positive number");
            }

            private void f() {
                Paint paint = new Paint();
                paint.setTypeface(this.f.k);
                Charset forName = Charset.forName("ISO-8859-1");
                float f = BitmapDescriptorFactory.HUE_RED;
                for (int i = 0; i < 256; i++) {
                    String str = new String(new byte[]{(byte) i}, forName);
                    float measureText = paint.measureText(str);
                    f = f;
                    if (f < measureText) {
                        this.l = str;
                        f = measureText;
                    }
                }
                d();
            }

            private void g() {
                this.h.clear();
                this.e.a("");
            }

            public final void a() {
                g();
                c();
            }

            public final void a(int i) {
                int i2 = this.j;
                if (i2 >= 0) {
                    while (i2 < i) {
                        a(StringUtils.LF);
                        i2++;
                    }
                }
                this.j = i;
            }

            public final void a(androidx.media2.widget.b bVar) {
                this.f = bVar;
                this.e.a(bVar);
            }

            public final void a(e.c cVar) {
                this.i.clear();
                if (cVar.g) {
                    this.i.add(new StyleSpan(2));
                }
                if (cVar.f) {
                    this.i.add(new UnderlineSpan());
                }
                int i = cVar.f5201a;
                if (i == 0) {
                    this.i.add(new RelativeSizeSpan(0.75f));
                } else if (i == 2) {
                    this.i.add(new RelativeSizeSpan(1.25f));
                }
                int i2 = cVar.f5202b;
                if (i2 == 0) {
                    this.i.add(new SubscriptSpan());
                } else if (i2 == 2) {
                    this.i.add(new SuperscriptSpan());
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
                if (r0 > 1.0f) goto L_0x007e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0099, code lost:
                if (r0 > 1.0f) goto L_0x009c;
             */
            /* JADX WARN: Removed duplicated region for block: B:53:0x01bb  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x020c  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0257  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x025c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void a(androidx.media2.widget.f.a.b r11, androidx.media2.widget.e.f r12) {
                /*
                    Method dump skipped, instructions count: 609
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.f.a.d.a(androidx.media2.widget.f$a$b, androidx.media2.widget.e$f):void");
            }

            final void a(String str) {
                if (str != null && str.length() > 0) {
                    int length = this.h.length();
                    this.h.append((CharSequence) str);
                    for (CharacterStyle characterStyle : this.i) {
                        SpannableStringBuilder spannableStringBuilder = this.h;
                        spannableStringBuilder.setSpan(characterStyle, length, spannableStringBuilder.length(), 33);
                    }
                }
                String[] split = TextUtils.split(this.h.toString(), StringUtils.LF);
                String join = TextUtils.join(StringUtils.LF, Arrays.copyOfRange(split, Math.max(0, split.length - (this.g + 1)), split.length));
                SpannableStringBuilder spannableStringBuilder2 = this.h;
                spannableStringBuilder2.delete(0, spannableStringBuilder2.length() - join.length());
                int length2 = this.h.length() - 1;
                int i = 0;
                while (i <= length2 && this.h.charAt(i) <= ' ') {
                    i++;
                }
                int i2 = length2;
                while (i2 >= i && this.h.charAt(i2) <= ' ') {
                    i2--;
                }
                if (i == 0 && i2 == length2) {
                    this.e.a(this.h);
                    return;
                }
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                spannableStringBuilder3.append((CharSequence) this.h);
                if (i2 < length2) {
                    spannableStringBuilder3.delete(i2 + 1, length2 + 1);
                }
                if (i > 0) {
                    spannableStringBuilder3.delete(0, i);
                }
                this.e.a(spannableStringBuilder3);
            }

            public final void b() {
                setVisibility(0);
                requestLayout();
            }

            public final void c() {
                setVisibility(4);
                requestLayout();
            }

            final void d() {
                if (this.f5232d != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < 42; i++) {
                        sb.append(this.l);
                    }
                    String sb2 = sb.toString();
                    Paint paint = new Paint();
                    paint.setTypeface(this.f.k);
                    float f = BitmapDescriptorFactory.HUE_RED;
                    float f2 = 255.0f;
                    while (f < f2) {
                        float f3 = (f + f2) / 2.0f;
                        paint.setTextSize(f3);
                        if (this.f5232d.getWidth() * 0.8f > paint.measureText(sb2)) {
                            f = f3 + 0.01f;
                        } else {
                            f2 = f3 - 0.01f;
                        }
                    }
                    float f4 = f2 * this.f5230b;
                    this.k = f4;
                    this.e.a(f4);
                }
            }

            public final void e() {
                b bVar = this.f5232d;
                if (bVar != null) {
                    bVar.a(this);
                    this.f5232d.removeOnLayoutChangeListener(this);
                    this.f5232d = null;
                }
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9 = i3 - i;
                int i10 = i4 - i2;
                if (i9 != this.m || i10 != this.n) {
                    this.m = i9;
                    this.n = i10;
                    d();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$e.class */
        public class e extends ViewGroup {

            /* renamed from: a  reason: collision with root package name */
            private final Comparator<Rect> f5233a = new Comparator<Rect>() { // from class: androidx.media2.widget.f.a.e.1
                @Override // java.util.Comparator
                public final /* bridge */ /* synthetic */ int compare(Rect rect, Rect rect2) {
                    int i;
                    int i2;
                    Rect rect3 = rect;
                    Rect rect4 = rect2;
                    if (rect3.top != rect4.top) {
                        i = rect3.top;
                        i2 = rect4.top;
                    } else {
                        i = rect3.left;
                        i2 = rect4.left;
                    }
                    return i - i2;
                }
            };

            /* renamed from: c  reason: collision with root package name */
            private Rect[] f5235c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: androidx.media2.widget.f$a$e$a  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$e$a.class */
            public final class C0107a extends ViewGroup.LayoutParams {

                /* renamed from: a  reason: collision with root package name */
                public float f5237a;

                /* renamed from: b  reason: collision with root package name */
                public float f5238b;

                /* renamed from: c  reason: collision with root package name */
                public float f5239c;

                /* renamed from: d  reason: collision with root package name */
                public float f5240d;

                C0107a(float f, float f2, float f3, float f4) {
                    super(-1, -1);
                    this.f5237a = f;
                    this.f5238b = f2;
                    this.f5239c = f3;
                    this.f5240d = f4;
                }

                C0107a(Context context, AttributeSet attributeSet) {
                    super(-1, -1);
                }
            }

            e(Context context) {
                super(context);
            }

            @Override // android.view.ViewGroup
            protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
                return layoutParams instanceof C0107a;
            }

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt.getVisibility() != 8) {
                        Rect[] rectArr = this.f5235c;
                        if (i < rectArr.length) {
                            int i2 = rectArr[i].left;
                            int i3 = this.f5235c[i].top;
                            int save = canvas.save();
                            canvas.translate(i2 + paddingLeft, i3 + paddingTop);
                            childAt.draw(canvas);
                            canvas.restoreToCount(save);
                        } else {
                            return;
                        }
                    }
                }
            }

            @Override // android.view.ViewGroup
            public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
                return new C0107a(getContext(), attributeSet);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt.getVisibility() != 8) {
                        childAt.layout(this.f5235c[i5].left + paddingLeft, this.f5235c[i5].top + paddingTop, this.f5235c[i5].right + paddingTop, this.f5235c[i5].bottom + paddingLeft);
                    }
                }
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                int i3;
                int i4;
                int i5;
                int i6;
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
                int childCount = getChildCount();
                this.f5235c = new Rect[childCount];
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof C0107a) {
                        C0107a aVar = (C0107a) layoutParams;
                        float f = aVar.f5237a;
                        float f2 = aVar.f5238b;
                        float f3 = aVar.f5239c;
                        float f4 = aVar.f5240d;
                        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartRow between 0 and 1");
                        } else if (f2 < f || i5 > 0) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1");
                        } else if (f4 < BitmapDescriptorFactory.HUE_RED || f4 > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartCol between 0 and 1");
                        } else if (f4 < f3 || i6 > 0) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1");
                        } else {
                            float f5 = paddingLeft;
                            int i8 = (int) (f3 * f5);
                            float f6 = paddingTop;
                            this.f5235c[i7] = new Rect(i8, (int) (f * f6), (int) (f4 * f5), (int) (f2 * f6));
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (f5 * (f4 - f3)), 1073741824);
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                            if (childAt.getMeasuredHeight() > this.f5235c[i7].height()) {
                                int measuredHeight = ((childAt.getMeasuredHeight() - this.f5235c[i7].height()) + 1) / 2;
                                this.f5235c[i7].bottom += measuredHeight;
                                this.f5235c[i7].top -= measuredHeight;
                                if (this.f5235c[i7].top < 0) {
                                    this.f5235c[i7].bottom -= this.f5235c[i7].top;
                                    this.f5235c[i7].top = 0;
                                }
                                if (this.f5235c[i7].bottom > paddingTop) {
                                    this.f5235c[i7].top -= this.f5235c[i7].bottom - paddingTop;
                                    this.f5235c[i7].bottom = paddingTop;
                                }
                            }
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((int) (f6 * (f2 - f)), 1073741824));
                        }
                    } else {
                        throw new RuntimeException("A child of ScaledLayout cannot have the UNSPECIFIED scale factors");
                    }
                }
                int[] iArr = new int[childCount];
                Rect[] rectArr = new Rect[childCount];
                int i9 = 0;
                for (int i10 = 0; i10 < childCount; i10++) {
                    i9 = i9;
                    if (getChildAt(i10).getVisibility() == 0) {
                        iArr[i9] = i9;
                        rectArr[i9] = this.f5235c[i10];
                        i9++;
                    }
                }
                Arrays.sort(rectArr, 0, i9, this.f5233a);
                int i11 = 0;
                while (true) {
                    i3 = i9 - 1;
                    if (i11 < i3) {
                        int i12 = i11 + 1;
                        for (int i13 = i12; i13 < i9; i13++) {
                            if (Rect.intersects(rectArr[i11], rectArr[i13])) {
                                iArr[i13] = iArr[i11];
                                rectArr[i13].set(rectArr[i13].left, rectArr[i11].bottom, rectArr[i13].right, rectArr[i11].bottom + rectArr[i13].height());
                            }
                        }
                        i11 = i12;
                    }
                }
                for (i4 = i3; i4 >= 0; i4--) {
                    if (rectArr[i4].bottom > paddingTop) {
                        int i14 = rectArr[i4].bottom - paddingTop;
                        for (int i15 = 0; i15 <= i4; i15++) {
                            if (iArr[i4] == iArr[i15]) {
                                rectArr[i15].set(rectArr[i15].left, rectArr[i15].top - i14, rectArr[i15].right, rectArr[i15].bottom - i14);
                            }
                        }
                    }
                }
                setMeasuredDimension(size, size2);
            }
        }

        a(f fVar, Context context) {
            this(fVar, context, null);
        }

        a(f fVar, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        a(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f5221b = new C0106a((b) this.e);
        }

        @Override // androidx.media2.widget.g
        public final g.a a(Context context) {
            return new b(context);
        }

        @Override // androidx.media2.widget.e.h
        public final void a(e.b bVar) {
            this.f5221b.a(bVar);
            a(getWidth(), getHeight());
            if (this.f5244d != null) {
                this.f5244d.a();
            }
        }

        @Override // android.view.View
        public final void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            ((ViewGroup) this.e).draw(canvas);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$b.class */
    static final class b extends p {
        private final e g;
        private final a h;

        b(a aVar, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.h = aVar;
            this.g = new e(aVar);
        }

        @Override // androidx.media2.widget.p
        public final p.c a() {
            return this.h;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
            if (r0 > 7) goto L_0x004c;
         */
        @Override // androidx.media2.widget.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(byte[] r22) {
            /*
                Method dump skipped, instructions count: 1583
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.f.b.a(byte[]):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context) {
        this.f5218a = context;
    }

    @Override // androidx.media2.widget.o.d
    public final boolean a(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-708".equals(mediaFormat.getString("mime"));
        }
        return false;
    }

    @Override // androidx.media2.widget.o.d
    public final p b(MediaFormat mediaFormat) {
        if ("text/cea-708".equals(mediaFormat.getString("mime"))) {
            if (this.f5219b == null) {
                this.f5219b = new a(this, this.f5218a);
            }
            return new b(this.f5219b, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }
}
