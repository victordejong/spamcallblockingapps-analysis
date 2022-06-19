package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.RelativeLayout;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import n3.y.e.e;
/* renamed from: n3.y.e.e$a$d */
/* loaded from: classes-dex2jar.jar:n3/y/e/e$a$d.class */
public class e$a$d extends RelativeLayout implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public e.a.b f77511a;

    /* renamed from: b */
    public e.a.c f77512b;

    /* renamed from: c */
    public C27497a f77513c;

    /* renamed from: g */
    public int f77517g;

    /* renamed from: i */
    public float f77519i;

    /* renamed from: j */
    public float f77520j;

    /* renamed from: k */
    public String f77521k;

    /* renamed from: l */
    public int f77522l;

    /* renamed from: m */
    public int f77523m;

    /* renamed from: d */
    public int f77514d = 0;

    /* renamed from: e */
    public final SpannableStringBuilder f77515e = new SpannableStringBuilder();

    /* renamed from: f */
    public final List<CharacterStyle> f77516f = new ArrayList();

    /* renamed from: h */
    public int f77518h = -1;

    public e$a$d(e.a aVar, Context context) {
        super(context, null, 0);
        this.f77512b = new e.a.c(aVar, context);
        addView((View) this.f77512b, (ViewGroup.LayoutParams) new RelativeLayout.LayoutParams(-2, -2));
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
        this.f77519i = captioningManager.getFontScale();
        m162c(new C27497a(captioningManager.getUserStyle()));
        this.f77512b.m171c("");
        m159f();
    }

    /* renamed from: a */
    public void m164a(String str) {
        if (str != null && str.length() > 0) {
            int length = this.f77515e.length();
            this.f77515e.append((CharSequence) str);
            for (CharacterStyle characterStyle : this.f77516f) {
                SpannableStringBuilder spannableStringBuilder = this.f77515e;
                spannableStringBuilder.setSpan(characterStyle, length, spannableStringBuilder.length(), 33);
            }
        }
        String[] split = TextUtils.split(this.f77515e.toString(), StringConstant.NEW_LINE);
        String join = TextUtils.join(StringConstant.NEW_LINE, Arrays.copyOfRange(split, Math.max(0, split.length - (this.f77514d + 1)), split.length));
        SpannableStringBuilder spannableStringBuilder2 = this.f77515e;
        spannableStringBuilder2.delete(0, spannableStringBuilder2.length() - join.length());
        int length2 = this.f77515e.length() - 1;
        int i = 0;
        while (i <= length2 && this.f77515e.charAt(i) <= ' ') {
            i++;
        }
        int i2 = length2;
        while (i2 >= i && this.f77515e.charAt(i2) <= ' ') {
            i2--;
        }
        if (i == 0 && i2 == length2) {
            this.f77512b.m171c(this.f77515e);
            return;
        }
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
        spannableStringBuilder3.append((CharSequence) this.f77515e);
        if (i2 < length2) {
            spannableStringBuilder3.delete(i2 + 1, length2 + 1);
        }
        if (i > 0) {
            spannableStringBuilder3.delete(0, i);
        }
        this.f77512b.m171c(spannableStringBuilder3);
    }

    /* renamed from: b */
    public void m163b() {
        setVisibility(4);
        requestLayout();
    }

    /* renamed from: c */
    public void m162c(C27497a c27497a) {
        this.f77513c = c27497a;
        e.a.c cVar = this.f77512b;
        Objects.requireNonNull(cVar);
        if (c27497a.f77412e) {
            cVar.f77475k = c27497a.f77408a;
            cVar.invalidate();
        }
        if (c27497a.f77413f) {
            cVar.f77476l = c27497a.f77409b;
            cVar.invalidate();
        }
        if (c27497a.f77414g) {
            cVar.f77478n = c27497a.f77410c;
            cVar.invalidate();
        }
        if (c27497a.f77415h) {
            cVar.f77477m = c27497a.f77411d;
            cVar.invalidate();
        }
        Typeface typeface = c27497a.f77417j;
        if (typeface == null || typeface.equals(cVar.f77473i.getTypeface())) {
            return;
        }
        cVar.f77473i.setTypeface(typeface);
        cVar.f77479o = false;
        cVar.requestLayout();
        cVar.invalidate();
    }

    /* renamed from: d */
    public void m161d() {
        setVisibility(0);
        requestLayout();
    }

    /* renamed from: e */
    public final void m160e() {
        if (this.f77511a == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 42; i++) {
            sb.append(this.f77521k);
        }
        String sb2 = sb.toString();
        Paint paint = new Paint();
        paint.setTypeface(this.f77513c.f77417j);
        float f = 0.0f;
        float f2 = 255.0f;
        while (f < f2) {
            float f3 = (f + f2) / 2.0f;
            paint.setTextSize(f3);
            if (this.f77511a.getWidth() * 0.8f > paint.measureText(sb2)) {
                f = f3 + 0.01f;
            } else {
                f2 = f3 - 0.01f;
            }
        }
        float f4 = f2 * this.f77519i;
        this.f77520j = f4;
        e.a.c cVar = this.f77512b;
        if (cVar.f77473i.getTextSize() == f4) {
            return;
        }
        cVar.f77473i.setTextSize(f4);
        cVar.f77483s = (int) ((f4 * 0.125f) + 0.5f);
        cVar.f77479o = false;
        cVar.requestLayout();
        cVar.invalidate();
    }

    /* renamed from: f */
    public final void m159f() {
        Paint paint = new Paint();
        paint.setTypeface(this.f77513c.f77417j);
        Charset forName = Charset.forName("ISO-8859-1");
        float f = 0.0f;
        int i = 0;
        while (i < 256) {
            String str = new String(new byte[]{(byte) i}, forName);
            float measureText = paint.measureText(str);
            float f2 = f;
            if (f < measureText) {
                this.f77521k = str;
                f2 = measureText;
            }
            i++;
            f = f2;
        }
        m160e();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i3 - i;
        int i10 = i4 - i2;
        if (i9 == this.f77522l && i10 == this.f77523m) {
            return;
        }
        this.f77522l = i9;
        this.f77523m = i10;
        m160e();
    }
}
