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
import androidx.media2.widget.AbstractC2565g;
import androidx.media2.widget.AbstractC2595p;
import androidx.media2.widget.C2545e;
import androidx.media2.widget.C2588o;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/f.class */
public final class C2555f extends C2588o.AbstractC2594d {

    /* renamed from: a */
    private final Context f9713a;

    /* renamed from: b */
    private C2556a f9714b;

    /* renamed from: androidx.media2.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a.class */
    public final class C2556a extends AbstractC2565g implements C2545e.AbstractC2554h {

        /* renamed from: b */
        private final C2557a f9716b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.widget.f$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$a.class */
        public final class C2557a implements Handler.Callback {

            /* renamed from: b */
            private final C2558b f9718b;

            /* renamed from: d */
            private View$OnLayoutChangeListenerC2560d f9720d;

            /* renamed from: c */
            private boolean f9719c = false;

            /* renamed from: e */
            private final View$OnLayoutChangeListenerC2560d[] f9721e = new View$OnLayoutChangeListenerC2560d[8];

            /* renamed from: f */
            private final ArrayList<C2545e.C2548b> f9722f = new ArrayList<>();

            /* renamed from: g */
            private final Handler f9723g = new Handler(this);

            C2557a(C2558b c2558b) {
                C2556a.this = r6;
                this.f9718b = c2558b;
            }

            /* renamed from: a */
            private void m40697a() {
                this.f9720d = null;
                this.f9719c = false;
                this.f9722f.clear();
                for (int i = 0; i < 8; i++) {
                    View$OnLayoutChangeListenerC2560d[] view$OnLayoutChangeListenerC2560dArr = this.f9721e;
                    if (view$OnLayoutChangeListenerC2560dArr[i] != null) {
                        view$OnLayoutChangeListenerC2560dArr[i].m40668e();
                    }
                    this.f9721e[i] = null;
                }
                this.f9718b.setVisibility(4);
                this.f9723g.removeMessages(2);
            }

            /* renamed from: a */
            private void m40696a(int i) {
                View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d;
                if (i >= 0) {
                    View$OnLayoutChangeListenerC2560d[] view$OnLayoutChangeListenerC2560dArr = this.f9721e;
                    if (i >= view$OnLayoutChangeListenerC2560dArr.length || (view$OnLayoutChangeListenerC2560d = view$OnLayoutChangeListenerC2560dArr[i]) == null) {
                        return;
                    }
                    this.f9720d = view$OnLayoutChangeListenerC2560d;
                }
            }

            /* renamed from: a */
            private void m40694a(C2545e.C2549c c2549c) {
                View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d = this.f9720d;
                if (view$OnLayoutChangeListenerC2560d != null) {
                    view$OnLayoutChangeListenerC2560d.m40675a(c2549c);
                }
            }

            /* renamed from: a */
            private void m40693a(C2545e.C2551e c2551e) {
                View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d = this.f9720d;
                if (view$OnLayoutChangeListenerC2560d != null) {
                    view$OnLayoutChangeListenerC2560d.m40677a(c2551e.f9688a);
                }
            }

            /* renamed from: a */
            private void m40692a(C2545e.C2552f c2552f) {
                int i;
                if (c2552f != null && (i = c2552f.f9690a) >= 0) {
                    View$OnLayoutChangeListenerC2560d[] view$OnLayoutChangeListenerC2560dArr = this.f9721e;
                    if (i >= view$OnLayoutChangeListenerC2560dArr.length) {
                        return;
                    }
                    View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d = view$OnLayoutChangeListenerC2560dArr[i];
                    View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d2 = view$OnLayoutChangeListenerC2560d;
                    if (view$OnLayoutChangeListenerC2560d == null) {
                        view$OnLayoutChangeListenerC2560d2 = new View$OnLayoutChangeListenerC2560d(C2556a.this, this.f9718b.getContext());
                    }
                    view$OnLayoutChangeListenerC2560d2.m40674a(this.f9718b, c2552f);
                    this.f9721e[i] = view$OnLayoutChangeListenerC2560d2;
                    this.f9720d = view$OnLayoutChangeListenerC2560d2;
                }
            }

            /* renamed from: a */
            private void m40691a(String str) {
                View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d = this.f9720d;
                if (view$OnLayoutChangeListenerC2560d != null) {
                    view$OnLayoutChangeListenerC2560d.m40673a(str);
                    this.f9723g.removeMessages(2);
                    Handler handler = this.f9723g;
                    handler.sendMessageDelayed(handler.obtainMessage(2), Constants.MINUTE_IN_MILLIS);
                }
            }

            /* renamed from: b */
            private ArrayList<View$OnLayoutChangeListenerC2560d> m40689b(int i) {
                View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d;
                ArrayList<View$OnLayoutChangeListenerC2560d> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < 8; i2++) {
                    if (((1 << i2) & i) != 0 && (view$OnLayoutChangeListenerC2560d = this.f9721e[i2]) != null) {
                        arrayList.add(view$OnLayoutChangeListenerC2560d);
                    }
                }
                return arrayList;
            }

            /* renamed from: b */
            private void m40690b() {
                this.f9719c = false;
                m40688c();
            }

            /* renamed from: c */
            private void m40688c() {
                Iterator<C2545e.C2548b> it2 = this.f9722f.iterator();
                while (it2.hasNext()) {
                    m40695a(it2.next());
                }
                this.f9722f.clear();
            }

            /* renamed from: c */
            private void m40687c(int i) {
                if (i == 0) {
                    return;
                }
                Iterator<View$OnLayoutChangeListenerC2560d> it2 = m40689b(i).iterator();
                while (it2.hasNext()) {
                    it2.next().m40678a();
                }
            }

            /* renamed from: d */
            private void m40686d(int i) {
                if (i == 0) {
                    return;
                }
                Iterator<View$OnLayoutChangeListenerC2560d> it2 = m40689b(i).iterator();
                while (it2.hasNext()) {
                    it2.next().m40672b();
                }
            }

            /* renamed from: e */
            private void m40685e(int i) {
                if (i == 0) {
                    return;
                }
                Iterator<View$OnLayoutChangeListenerC2560d> it2 = m40689b(i).iterator();
                while (it2.hasNext()) {
                    it2.next().m40670c();
                }
            }

            /* renamed from: f */
            private void m40684f(int i) {
                if (i == 0) {
                    return;
                }
                Iterator<View$OnLayoutChangeListenerC2560d> it2 = m40689b(i).iterator();
                while (it2.hasNext()) {
                    View$OnLayoutChangeListenerC2560d next = it2.next();
                    if (next.isShown()) {
                        next.m40670c();
                    } else {
                        next.m40672b();
                    }
                }
            }

            /* renamed from: g */
            private void m40683g(int i) {
                if (i == 0) {
                    return;
                }
                Iterator<View$OnLayoutChangeListenerC2560d> it2 = m40689b(i).iterator();
                while (it2.hasNext()) {
                    View$OnLayoutChangeListenerC2560d next = it2.next();
                    next.m40668e();
                    this.f9721e[next.f9727a] = null;
                }
            }

            /* renamed from: h */
            private void m40682h(int i) {
                if (i < 0 || i > 255) {
                    return;
                }
                this.f9719c = true;
                Handler handler = this.f9723g;
                handler.sendMessageDelayed(handler.obtainMessage(1), i * 100);
            }

            /* renamed from: a */
            public final void m40695a(C2545e.C2548b c2548b) {
                if (this.f9719c) {
                    this.f9722f.add(c2548b);
                    return;
                }
                switch (c2548b.f9676a) {
                    case 1:
                        m40691a((String) c2548b.f9677b);
                        return;
                    case 2:
                        ((Character) c2548b.f9677b).charValue();
                        return;
                    case 3:
                        m40696a(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 4:
                        m40687c(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 5:
                        m40686d(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 6:
                        m40685e(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 7:
                        m40684f(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 8:
                        m40683g(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 9:
                        m40682h(((Integer) c2548b.f9677b).intValue());
                        return;
                    case 10:
                        m40690b();
                        return;
                    case 11:
                        m40697a();
                        return;
                    case 12:
                        m40694a((C2545e.C2549c) c2548b.f9677b);
                        return;
                    case 13:
                    case 15:
                    default:
                        return;
                    case 14:
                        m40693a((C2545e.C2551e) c2548b.f9677b);
                        return;
                    case 16:
                        m40692a((C2545e.C2552f) c2548b.f9677b);
                        return;
                }
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    m40690b();
                    return true;
                } else if (i != 2) {
                    return false;
                } else {
                    m40687c(255);
                    return true;
                }
            }
        }

        /* renamed from: androidx.media2.widget.f$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$b.class */
        public final class C2558b extends C2561e implements AbstractC2565g.AbstractC2567a {

            /* renamed from: c */
            private final C2561e f9725c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2558b(Context context) {
                super(context);
                C2556a.this = r11;
                C2561e c2561e = new C2561e(context);
                this.f9725c = c2561e;
                addView(c2561e, new C2561e.C2563a(0.1f, 0.9f, 0.1f, 0.9f));
            }

            @Override // androidx.media2.widget.AbstractC2565g.AbstractC2567a
            /* renamed from: a */
            public final void mo40663a(float f) {
                int childCount = this.f9725c.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d = (View$OnLayoutChangeListenerC2560d) this.f9725c.getChildAt(i);
                    view$OnLayoutChangeListenerC2560d.f9728b = f;
                    view$OnLayoutChangeListenerC2560d.m40669d();
                }
            }

            @Override // androidx.media2.widget.AbstractC2565g.AbstractC2567a
            /* renamed from: a */
            public final void mo40662a(C2531b c2531b) {
                int childCount = this.f9725c.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ((View$OnLayoutChangeListenerC2560d) this.f9725c.getChildAt(i)).m40676a(c2531b);
                }
            }

            /* renamed from: a */
            public final void m40681a(View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d) {
                this.f9725c.removeView(view$OnLayoutChangeListenerC2560d);
            }

            /* renamed from: a */
            public final void m40680a(View$OnLayoutChangeListenerC2560d view$OnLayoutChangeListenerC2560d, C2561e.C2563a c2563a) {
                if (this.f9725c.indexOfChild(view$OnLayoutChangeListenerC2560d) < 0) {
                    this.f9725c.addView(view$OnLayoutChangeListenerC2560d, c2563a);
                } else {
                    this.f9725c.updateViewLayout(view$OnLayoutChangeListenerC2560d, c2563a);
                }
            }
        }

        /* renamed from: androidx.media2.widget.f$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$c.class */
        public final class C2559c extends C2601q {
            C2559c(C2556a c2556a, Context context) {
                this(c2556a, context, null);
            }

            C2559c(C2556a c2556a, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2559c(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
                C2556a.this = r6;
            }

            /* renamed from: a */
            final void m40679a(C2531b c2531b) {
                if (Build.VERSION.SDK_INT >= 21) {
                    if (c2531b.f9616g) {
                        m40575a(c2531b.f9611b);
                    }
                    if (c2531b.f9617h) {
                        setBackgroundColor(c2531b.f9612c);
                    }
                    if (c2531b.f9618i) {
                        m40571b(c2531b.f9613d);
                    }
                    if (c2531b.f9619j) {
                        m40570c(c2531b.f9614e);
                    }
                }
                m40574a(c2531b.f9620k);
            }
        }

        /* renamed from: androidx.media2.widget.f$a$d */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$d.class */
        public final class View$OnLayoutChangeListenerC2560d extends RelativeLayout implements View.OnLayoutChangeListener {

            /* renamed from: a */
            int f9727a;

            /* renamed from: b */
            float f9728b;

            /* renamed from: d */
            private C2558b f9730d;

            /* renamed from: e */
            private C2559c f9731e;

            /* renamed from: f */
            private C2531b f9732f;

            /* renamed from: g */
            private int f9733g;

            /* renamed from: h */
            private final SpannableStringBuilder f9734h;

            /* renamed from: i */
            private final List<CharacterStyle> f9735i;

            /* renamed from: j */
            private int f9736j;

            /* renamed from: k */
            private float f9737k;

            /* renamed from: l */
            private String f9738l;

            /* renamed from: m */
            private int f9739m;

            /* renamed from: n */
            private int f9740n;

            View$OnLayoutChangeListenerC2560d(C2556a c2556a, Context context) {
                this(c2556a, context, null);
            }

            View$OnLayoutChangeListenerC2560d(C2556a c2556a, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            View$OnLayoutChangeListenerC2560d(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
                C2556a.this = r7;
                this.f9733g = 0;
                this.f9734h = new SpannableStringBuilder();
                this.f9735i = new ArrayList();
                this.f9736j = -1;
                this.f9731e = new C2559c(r7, context);
                addView(this.f9731e, new RelativeLayout.LayoutParams(-2, -2));
                if (Build.VERSION.SDK_INT >= 19) {
                    CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
                    this.f9728b = captioningManager.getFontScale();
                    m40676a(new C2531b(captioningManager.getUserStyle()));
                } else {
                    this.f9728b = 1.0f;
                    m40676a(C2531b.f9610a);
                }
                this.f9731e.m40572a("");
                m40667f();
            }

            /* renamed from: b */
            private void m40671b(int i) {
                if (i >= 0) {
                    this.f9733g = i;
                    return;
                }
                throw new IllegalArgumentException("A rowLimit should have a positive number");
            }

            /* renamed from: f */
            private void m40667f() {
                Paint paint = new Paint();
                paint.setTypeface(this.f9732f.f9620k);
                Charset forName = Charset.forName("ISO-8859-1");
                float f = 0.0f;
                int i = 0;
                while (i < 256) {
                    String str = new String(new byte[]{(byte) i}, forName);
                    float measureText = paint.measureText(str);
                    float f2 = f;
                    if (f < measureText) {
                        this.f9738l = str;
                        f2 = measureText;
                    }
                    i++;
                    f = f2;
                }
                m40669d();
            }

            /* renamed from: g */
            private void m40666g() {
                this.f9734h.clear();
                this.f9731e.m40572a("");
            }

            /* renamed from: a */
            public final void m40678a() {
                m40666g();
                m40670c();
            }

            /* renamed from: a */
            public final void m40677a(int i) {
                int i2 = this.f9736j;
                if (i2 >= 0) {
                    while (i2 < i) {
                        m40673a(StringUtils.f67179LF);
                        i2++;
                    }
                }
                this.f9736j = i;
            }

            /* renamed from: a */
            public final void m40676a(C2531b c2531b) {
                this.f9732f = c2531b;
                this.f9731e.m40679a(c2531b);
            }

            /* renamed from: a */
            public final void m40675a(C2545e.C2549c c2549c) {
                this.f9735i.clear();
                if (c2549c.f9684g) {
                    this.f9735i.add(new StyleSpan(2));
                }
                if (c2549c.f9683f) {
                    this.f9735i.add(new UnderlineSpan());
                }
                int i = c2549c.f9678a;
                if (i == 0) {
                    this.f9735i.add(new RelativeSizeSpan(0.75f));
                } else if (i == 2) {
                    this.f9735i.add(new RelativeSizeSpan(1.25f));
                }
                int i2 = c2549c.f9679b;
                if (i2 == 0) {
                    this.f9735i.add(new SubscriptSpan());
                } else if (i2 != 2) {
                } else {
                    this.f9735i.add(new SuperscriptSpan());
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
                if (r0 > 1.0f) goto L20;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0099, code lost:
                if (r0 > 1.0f) goto L25;
             */
            /* JADX WARN: Removed duplicated region for block: B:53:0x01bb  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x020c  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0257  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x025c  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void m40674a(androidx.media2.widget.C2555f.C2556a.C2558b r11, androidx.media2.widget.C2545e.C2552f r12) {
                /*
                    Method dump skipped, instructions count: 609
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.C2555f.C2556a.View$OnLayoutChangeListenerC2560d.m40674a(androidx.media2.widget.f$a$b, androidx.media2.widget.e$f):void");
            }

            /* renamed from: a */
            final void m40673a(String str) {
                if (str != null && str.length() > 0) {
                    int length = this.f9734h.length();
                    this.f9734h.append((CharSequence) str);
                    for (CharacterStyle characterStyle : this.f9735i) {
                        SpannableStringBuilder spannableStringBuilder = this.f9734h;
                        spannableStringBuilder.setSpan(characterStyle, length, spannableStringBuilder.length(), 33);
                    }
                }
                String[] split = TextUtils.split(this.f9734h.toString(), StringUtils.f67179LF);
                String join = TextUtils.join(StringUtils.f67179LF, Arrays.copyOfRange(split, Math.max(0, split.length - (this.f9733g + 1)), split.length));
                SpannableStringBuilder spannableStringBuilder2 = this.f9734h;
                spannableStringBuilder2.delete(0, spannableStringBuilder2.length() - join.length());
                int length2 = this.f9734h.length() - 1;
                int i = 0;
                while (i <= length2 && this.f9734h.charAt(i) <= ' ') {
                    i++;
                }
                int i2 = length2;
                while (i2 >= i && this.f9734h.charAt(i2) <= ' ') {
                    i2--;
                }
                if (i == 0 && i2 == length2) {
                    this.f9731e.m40572a(this.f9734h);
                    return;
                }
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                spannableStringBuilder3.append((CharSequence) this.f9734h);
                if (i2 < length2) {
                    spannableStringBuilder3.delete(i2 + 1, length2 + 1);
                }
                if (i > 0) {
                    spannableStringBuilder3.delete(0, i);
                }
                this.f9731e.m40572a(spannableStringBuilder3);
            }

            /* renamed from: b */
            public final void m40672b() {
                setVisibility(0);
                requestLayout();
            }

            /* renamed from: c */
            public final void m40670c() {
                setVisibility(4);
                requestLayout();
            }

            /* renamed from: d */
            final void m40669d() {
                if (this.f9730d == null) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < 42; i++) {
                    sb.append(this.f9738l);
                }
                String sb2 = sb.toString();
                Paint paint = new Paint();
                paint.setTypeface(this.f9732f.f9620k);
                float f = 0.0f;
                float f2 = 255.0f;
                while (f < f2) {
                    float f3 = (f + f2) / 2.0f;
                    paint.setTextSize(f3);
                    if (this.f9730d.getWidth() * 0.8f > paint.measureText(sb2)) {
                        f = f3 + 0.01f;
                    } else {
                        f2 = f3 - 0.01f;
                    }
                }
                float f4 = f2 * this.f9728b;
                this.f9737k = f4;
                this.f9731e.m40576a(f4);
            }

            /* renamed from: e */
            public final void m40668e() {
                C2558b c2558b = this.f9730d;
                if (c2558b != null) {
                    c2558b.m40681a(this);
                    this.f9730d.removeOnLayoutChangeListener(this);
                    this.f9730d = null;
                }
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9 = i3 - i;
                int i10 = i4 - i2;
                if (i9 == this.f9739m && i10 == this.f9740n) {
                    return;
                }
                this.f9739m = i9;
                this.f9740n = i10;
                m40669d();
            }
        }

        /* renamed from: androidx.media2.widget.f$a$e */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$e.class */
        public class C2561e extends ViewGroup {

            /* renamed from: a */
            private final Comparator<Rect> f9741a = new Comparator<Rect>() { // from class: androidx.media2.widget.f.a.e.1
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

            /* renamed from: c */
            private Rect[] f9743c;

            /* renamed from: androidx.media2.widget.f$a$e$a */
            /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$a$e$a.class */
            public final class C2563a extends ViewGroup.LayoutParams {

                /* renamed from: a */
                public float f9745a;

                /* renamed from: b */
                public float f9746b;

                /* renamed from: c */
                public float f9747c;

                /* renamed from: d */
                public float f9748d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C2563a(float f, float f2, float f3, float f4) {
                    super(-1, -1);
                    C2561e.this = r5;
                    this.f9745a = f;
                    this.f9746b = f2;
                    this.f9747c = f3;
                    this.f9748d = f4;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C2563a(Context context, AttributeSet attributeSet) {
                    super(-1, -1);
                    C2561e.this = r5;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2561e(Context context) {
                super(context);
                C2556a.this = r6;
            }

            @Override // android.view.ViewGroup
            protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
                return layoutParams instanceof C2563a;
            }

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt.getVisibility() != 8) {
                        Rect[] rectArr = this.f9743c;
                        if (i >= rectArr.length) {
                            return;
                        }
                        int i2 = rectArr[i].left;
                        int i3 = this.f9743c[i].top;
                        int save = canvas.save();
                        canvas.translate(i2 + paddingLeft, i3 + paddingTop);
                        childAt.draw(canvas);
                        canvas.restoreToCount(save);
                    }
                }
            }

            @Override // android.view.ViewGroup
            public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
                return new C2563a(getContext(), attributeSet);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt.getVisibility() != 8) {
                        childAt.layout(this.f9743c[i5].left + paddingLeft, this.f9743c[i5].top + paddingTop, this.f9743c[i5].right + paddingTop, this.f9743c[i5].bottom + paddingLeft);
                    }
                }
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
                int childCount = getChildCount();
                this.f9743c = new Rect[childCount];
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = getChildAt(i8);
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (!(layoutParams instanceof C2563a)) {
                        throw new RuntimeException("A child of ScaledLayout cannot have the UNSPECIFIED scale factors");
                    }
                    C2563a c2563a = (C2563a) layoutParams;
                    float f = c2563a.f9745a;
                    float f2 = c2563a.f9746b;
                    float f3 = c2563a.f9747c;
                    float f4 = c2563a.f9748d;
                    if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
                        throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartRow between 0 and 1");
                    }
                    if (f2 < f || i6 > 0) {
                        throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1");
                    }
                    if (f4 < BitmapDescriptorFactory.HUE_RED || f4 > 1.0f) {
                        throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartCol between 0 and 1");
                    }
                    if (f4 < f3 || i7 > 0) {
                        throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1");
                    }
                    float f5 = paddingLeft;
                    int i9 = (int) (f3 * f5);
                    float f6 = paddingTop;
                    this.f9743c[i8] = new Rect(i9, (int) (f * f6), (int) (f4 * f5), (int) (f2 * f6));
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (f5 * (f4 - f3)), 1073741824);
                    childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                    if (childAt.getMeasuredHeight() > this.f9743c[i8].height()) {
                        int measuredHeight = ((childAt.getMeasuredHeight() - this.f9743c[i8].height()) + 1) / 2;
                        this.f9743c[i8].bottom += measuredHeight;
                        this.f9743c[i8].top -= measuredHeight;
                        if (this.f9743c[i8].top < 0) {
                            this.f9743c[i8].bottom -= this.f9743c[i8].top;
                            this.f9743c[i8].top = 0;
                        }
                        if (this.f9743c[i8].bottom > paddingTop) {
                            this.f9743c[i8].top -= this.f9743c[i8].bottom - paddingTop;
                            this.f9743c[i8].bottom = paddingTop;
                        }
                    }
                    childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((int) (f6 * (f2 - f)), 1073741824));
                }
                int[] iArr = new int[childCount];
                Rect[] rectArr = new Rect[childCount];
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    i3 = i11;
                    if (i10 >= childCount) {
                        break;
                    }
                    int i12 = i3;
                    if (getChildAt(i10).getVisibility() == 0) {
                        iArr[i3] = i3;
                        rectArr[i3] = this.f9743c[i10];
                        i12 = i3 + 1;
                    }
                    i10++;
                    i11 = i12;
                }
                Arrays.sort(rectArr, 0, i3, this.f9741a);
                int i13 = 0;
                while (true) {
                    int i14 = i13;
                    i4 = i3 - 1;
                    if (i14 < i4) {
                        int i15 = i14 + 1;
                        for (int i16 = i15; i16 < i3; i16++) {
                            if (Rect.intersects(rectArr[i14], rectArr[i16])) {
                                iArr[i16] = iArr[i14];
                                rectArr[i16].set(rectArr[i16].left, rectArr[i14].bottom, rectArr[i16].right, rectArr[i14].bottom + rectArr[i16].height());
                            }
                        }
                        i13 = i15;
                    }
                }
                for (i5 = i4; i5 >= 0; i5--) {
                    if (rectArr[i5].bottom > paddingTop) {
                        int i17 = rectArr[i5].bottom - paddingTop;
                        for (int i18 = 0; i18 <= i5; i18++) {
                            if (iArr[i5] == iArr[i18]) {
                                rectArr[i18].set(rectArr[i18].left, rectArr[i18].top - i17, rectArr[i18].right, rectArr[i18].bottom - i17);
                            }
                        }
                    }
                }
                setMeasuredDimension(size, size2);
            }
        }

        C2556a(C2555f c2555f, Context context) {
            this(c2555f, context, null);
        }

        C2556a(C2555f c2555f, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2556a(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            C2555f.this = r7;
            this.f9716b = new C2557a((C2558b) this.f9756e);
        }

        @Override // androidx.media2.widget.AbstractC2565g
        /* renamed from: a */
        public final AbstractC2565g.AbstractC2567a mo40664a(Context context) {
            return new C2558b(context);
        }

        @Override // androidx.media2.widget.C2545e.AbstractC2554h
        /* renamed from: a */
        public final void mo40698a(C2545e.C2548b c2548b) {
            this.f9716b.m40695a(c2548b);
            mo40580a(getWidth(), getHeight());
            if (this.f9755d != null) {
                this.f9755d.mo40577a();
            }
        }

        @Override // android.view.View
        public final void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            ((ViewGroup) this.f9756e).draw(canvas);
        }
    }

    /* renamed from: androidx.media2.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/f$b.class */
    static final class C2564b extends AbstractC2595p {

        /* renamed from: g */
        private final C2545e f9750g;

        /* renamed from: h */
        private final C2556a f9751h;

        C2564b(C2556a c2556a, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.f9751h = c2556a;
            this.f9750g = new C2545e(c2556a);
        }

        @Override // androidx.media2.widget.AbstractC2595p
        /* renamed from: a */
        public final AbstractC2595p.AbstractC2598c mo40588a() {
            return this.f9751h;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
            if (r0 > 7) goto L15;
         */
        @Override // androidx.media2.widget.AbstractC2595p
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo40585a(byte[] r22) {
            /*
                Method dump skipped, instructions count: 1583
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.C2555f.C2564b.mo40585a(byte[]):void");
        }
    }

    public C2555f(Context context) {
        this.f9713a = context;
    }

    @Override // androidx.media2.widget.C2588o.AbstractC2594d
    /* renamed from: a */
    public final boolean mo40590a(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-708".equals(mediaFormat.getString("mime"));
        }
        return false;
    }

    @Override // androidx.media2.widget.C2588o.AbstractC2594d
    /* renamed from: b */
    public final AbstractC2595p mo40589b(MediaFormat mediaFormat) {
        if ("text/cea-708".equals(mediaFormat.getString("mime"))) {
            if (this.f9714b == null) {
                this.f9714b = new C2556a(this, this.f9713a);
            }
            return new C2564b(this.f9714b, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }
}
