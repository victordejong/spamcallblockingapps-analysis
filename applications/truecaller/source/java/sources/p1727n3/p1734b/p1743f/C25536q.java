package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.C0032R;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1823g0.C26595a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.f.q */
/* loaded from: classes-dex2jar.jar:n3/b/f/q.class */
public class C25536q {

    /* renamed from: a */
    public final TextView f71445a;

    /* renamed from: b */
    public C25535p0 f71446b;

    /* renamed from: c */
    public C25535p0 f71447c;

    /* renamed from: d */
    public C25535p0 f71448d;

    /* renamed from: e */
    public C25535p0 f71449e;

    /* renamed from: f */
    public C25535p0 f71450f;

    /* renamed from: g */
    public C25535p0 f71451g;

    /* renamed from: h */
    public C25535p0 f71452h;

    /* renamed from: i */
    public final C25541s f71453i;

    /* renamed from: j */
    public int f71454j = 0;

    /* renamed from: k */
    public int f71455k = -1;

    /* renamed from: l */
    public Typeface f71456l;

    /* renamed from: m */
    public boolean f71457m;

    /* renamed from: n3.b.f.q$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/q$a.class */
    public class C25537a extends C26488h.AbstractC26489a {

        /* renamed from: a */
        public final /* synthetic */ int f71458a;

        /* renamed from: b */
        public final /* synthetic */ int f71459b;

        /* renamed from: c */
        public final /* synthetic */ WeakReference f71460c;

        public C25537a(int i, int i2, WeakReference weakReference) {
            C25536q.this = r4;
            this.f71458a = i;
            this.f71459b = i2;
            this.f71460c = weakReference;
        }

        @Override // p1727n3.p1807k.p1809b.p1811d.C26488h.AbstractC26489a
        /* renamed from: d */
        public void mo1760d(int i) {
        }

        @Override // p1727n3.p1807k.p1809b.p1811d.C26488h.AbstractC26489a
        /* renamed from: e */
        public void mo1759e(Typeface typeface) {
            Typeface typeface2 = typeface;
            if (Build.VERSION.SDK_INT >= 28) {
                int i = this.f71458a;
                typeface2 = typeface;
                if (i != -1) {
                    typeface2 = Typeface.create(typeface, i, (this.f71459b & 2) != 0);
                }
            }
            C25536q c25536q = C25536q.this;
            WeakReference weakReference = this.f71460c;
            if (c25536q.f71457m) {
                c25536q.f71456l = typeface2;
                TextView textView = (TextView) weakReference.get();
                if (textView == null) {
                    return;
                }
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (textView.isAttachedToWindow()) {
                    textView.post(new RunnableC25539r(c25536q, textView, typeface2, c25536q.f71454j));
                } else {
                    textView.setTypeface(typeface2, c25536q.f71454j);
                }
            }
        }
    }

    public C25536q(TextView textView) {
        this.f71445a = textView;
        this.f71453i = new C25541s(textView);
    }

    /* renamed from: c */
    public static C25535p0 m3333c(Context context, C25502e c25502e, int i) {
        ColorStateList m3377d = c25502e.m3377d(context, i);
        if (m3377d != null) {
            C25535p0 c25535p0 = new C25535p0();
            c25535p0.f71444d = true;
            c25535p0.f71441a = m3377d;
            return c25535p0;
        }
        return null;
    }

    /* renamed from: a */
    public final void m3335a(Drawable drawable, C25535p0 c25535p0) {
        if (drawable == null || c25535p0 == null) {
            return;
        }
        C25502e.m3375f(drawable, c25535p0, this.f71445a.getDrawableState());
    }

    /* renamed from: b */
    public void m3334b() {
        if (this.f71446b != null || this.f71447c != null || this.f71448d != null || this.f71449e != null) {
            Drawable[] compoundDrawables = this.f71445a.getCompoundDrawables();
            m3335a(compoundDrawables[0], this.f71446b);
            m3335a(compoundDrawables[1], this.f71447c);
            m3335a(compoundDrawables[2], this.f71448d);
            m3335a(compoundDrawables[3], this.f71449e);
        }
        if (this.f71450f == null && this.f71451g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f71445a.getCompoundDrawablesRelative();
        m3335a(compoundDrawablesRelative[0], this.f71450f);
        m3335a(compoundDrawablesRelative[2], this.f71451g);
    }

    /* renamed from: d */
    public boolean m3332d() {
        C25541s c25541s = this.f71453i;
        return c25541s.m3297i() && c25541s.f71471a != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:215:0x0729, code lost:
        if (r10 != null) goto L217;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x019d  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3331e(android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 2002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25536q.m3331e(android.util.AttributeSet, int):void");
    }

    /* renamed from: f */
    public void m3330f(Context context, int i) {
        String m3310m;
        C25540r0 c25540r0 = new C25540r0(context, context.obtainStyledAttributes(i, C0032R.styleable.TextAppearance));
        int i2 = C0032R.styleable.TextAppearance_textAllCaps;
        if (c25540r0.m3308o(i2)) {
            this.f71445a.setAllCaps(c25540r0.m3322a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        int i4 = C0032R.styleable.TextAppearance_android_textSize;
        if (c25540r0.m3308o(i4) && c25540r0.m3317f(i4, -1) == 0) {
            this.f71445a.setTextSize(0, 0.0f);
        }
        m3323m(context, c25540r0);
        if (i3 >= 26) {
            int i5 = C0032R.styleable.TextAppearance_fontVariationSettings;
            if (c25540r0.m3308o(i5) && (m3310m = c25540r0.m3310m(i5)) != null) {
                this.f71445a.setFontVariationSettings(m3310m);
            }
        }
        c25540r0.f71466b.recycle();
        Typeface typeface = this.f71456l;
        if (typeface != null) {
            this.f71445a.setTypeface(typeface, this.f71454j);
        }
    }

    /* renamed from: g */
    public void m3329g(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        Objects.requireNonNull(text);
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 + 0 : i2 + 0;
        int i5 = i2 > i3 ? i2 + 0 : i3 + 0;
        int length = text.length();
        if (i4 < 0 || i5 > length) {
            C26595a.m1606c(editorInfo, null, 0, 0);
            return;
        }
        int i6 = editorInfo.inputType & 4095;
        if (i6 == 129 || i6 == 225 || i6 == 18) {
            C26595a.m1606c(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            C26595a.m1606c(editorInfo, text, i4, i5);
        } else {
            int i7 = i5 - i4;
            int i8 = i7 > 1024 ? 0 : i7;
            int length2 = text.length();
            int i9 = 2048 - i8;
            int min = Math.min(length2 - i5, i9 - Math.min(i4, (int) (i9 * 0.8d)));
            int min2 = Math.min(i4, i9 - min);
            int i10 = i4 - min2;
            int i11 = i10;
            int i12 = min2;
            if (C26595a.m1608a(text, i10, 0)) {
                i11 = i10 + 1;
                i12 = min2 - 1;
            }
            int i13 = min;
            if (C26595a.m1608a(text, (i5 + min) - 1, 1)) {
                i13 = min - 1;
            }
            CharSequence concat = i8 != i7 ? TextUtils.concat(text.subSequence(i11, i11 + i12), text.subSequence(i5, i13 + i5)) : text.subSequence(i11, i12 + i8 + i13 + i11);
            int i14 = i12 + 0;
            C26595a.m1606c(editorInfo, concat, i14, i8 + i14);
        }
    }

    /* renamed from: h */
    public void m3328h(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        C25541s c25541s = this.f71453i;
        if (c25541s.m3297i()) {
            DisplayMetrics displayMetrics = c25541s.f71480j.getResources().getDisplayMetrics();
            c25541s.m3296j(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!c25541s.m3299g()) {
                return;
            }
            c25541s.m3305a();
        }
    }

    /* renamed from: i */
    public void m3327i(int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        C25541s c25541s = this.f71453i;
        if (c25541s.m3297i()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = c25541s.f71480j.getResources().getDisplayMetrics();
                    while (true) {
                        iArr2 = iArr3;
                        if (i2 >= length) {
                            break;
                        }
                        iArr3[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                        i2++;
                    }
                } else {
                    iArr2 = Arrays.copyOf(iArr, length);
                }
                c25541s.f71476f = c25541s.m3304b(iArr2);
                if (!c25541s.m3298h()) {
                    StringBuilder m8728C = C22128a.m8728C("None of the preset sizes is valid: ");
                    m8728C.append(Arrays.toString(iArr));
                    throw new IllegalArgumentException(m8728C.toString());
                }
            } else {
                c25541s.f71477g = false;
            }
            if (!c25541s.m3299g()) {
                return;
            }
            c25541s.m3305a();
        }
    }

    /* renamed from: j */
    public void m3326j(int i) {
        C25541s c25541s = this.f71453i;
        if (c25541s.m3297i()) {
            if (i == 0) {
                c25541s.f71471a = 0;
                c25541s.f71474d = -1.0f;
                c25541s.f71475e = -1.0f;
                c25541s.f71473c = -1.0f;
                c25541s.f71476f = new int[0];
                c25541s.f71472b = false;
            } else if (i != 1) {
                throw new IllegalArgumentException(C22128a.m8611i2("Unknown auto-size text type: ", i));
            } else {
                DisplayMetrics displayMetrics = c25541s.f71480j.getResources().getDisplayMetrics();
                c25541s.m3296j(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (!c25541s.m3299g()) {
                    return;
                }
                c25541s.m3305a();
            }
        }
    }

    /* renamed from: k */
    public void m3325k(ColorStateList colorStateList) {
        if (this.f71452h == null) {
            this.f71452h = new C25535p0();
        }
        C25535p0 c25535p0 = this.f71452h;
        c25535p0.f71441a = colorStateList;
        c25535p0.f71444d = colorStateList != null;
        this.f71446b = c25535p0;
        this.f71447c = c25535p0;
        this.f71448d = c25535p0;
        this.f71449e = c25535p0;
        this.f71450f = c25535p0;
        this.f71451g = c25535p0;
    }

    /* renamed from: l */
    public void m3324l(PorterDuff.Mode mode) {
        if (this.f71452h == null) {
            this.f71452h = new C25535p0();
        }
        C25535p0 c25535p0 = this.f71452h;
        c25535p0.f71442b = mode;
        c25535p0.f71443c = mode != null;
        this.f71446b = c25535p0;
        this.f71447c = c25535p0;
        this.f71448d = c25535p0;
        this.f71449e = c25535p0;
        this.f71450f = c25535p0;
        this.f71451g = c25535p0;
    }

    /* renamed from: m */
    public final void m3323m(Context context, C25540r0 c25540r0) {
        String m3310m;
        int i = Build.VERSION.SDK_INT;
        this.f71454j = c25540r0.m3313j(C0032R.styleable.TextAppearance_android_textStyle, this.f71454j);
        if (i >= 28) {
            int m3313j = c25540r0.m3313j(C0032R.styleable.TextAppearance_android_textFontWeight, -1);
            this.f71455k = m3313j;
            if (m3313j != -1) {
                this.f71454j = (this.f71454j & 2) | 0;
            }
        }
        int i2 = C0032R.styleable.TextAppearance_android_fontFamily;
        if (!c25540r0.m3308o(i2) && !c25540r0.m3308o(C0032R.styleable.TextAppearance_fontFamily)) {
            int i3 = C0032R.styleable.TextAppearance_android_typeface;
            if (!c25540r0.m3308o(i3)) {
                return;
            }
            this.f71457m = false;
            int m3313j2 = c25540r0.m3313j(i3, 1);
            if (m3313j2 == 1) {
                this.f71456l = Typeface.SANS_SERIF;
                return;
            } else if (m3313j2 == 2) {
                this.f71456l = Typeface.SERIF;
                return;
            } else if (m3313j2 != 3) {
                return;
            } else {
                this.f71456l = Typeface.MONOSPACE;
                return;
            }
        }
        this.f71456l = null;
        int i4 = C0032R.styleable.TextAppearance_fontFamily;
        if (c25540r0.m3308o(i4)) {
            i2 = i4;
        }
        int i5 = this.f71455k;
        int i6 = this.f71454j;
        if (!context.isRestricted()) {
            try {
                Typeface m3314i = c25540r0.m3314i(i2, this.f71454j, new C25537a(i5, i6, new WeakReference(this.f71445a)));
                if (m3314i != null) {
                    if (i < 28 || this.f71455k == -1) {
                        this.f71456l = m3314i;
                    } else {
                        this.f71456l = Typeface.create(Typeface.create(m3314i, 0), this.f71455k, (this.f71454j & 2) != 0);
                    }
                }
                this.f71457m = this.f71456l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f71456l != null || (m3310m = c25540r0.m3310m(i2)) == null) {
            return;
        }
        if (i < 28 || this.f71455k == -1) {
            this.f71456l = Typeface.create(m3310m, this.f71454j);
            return;
        }
        Typeface create = Typeface.create(m3310m, 0);
        int i7 = this.f71455k;
        boolean z = false;
        if ((this.f71454j & 2) != 0) {
            z = true;
        }
        this.f71456l = Typeface.create(create, i7, z);
    }
}
