package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p124i4.C3102d;
/* renamed from: androidx.emoji2.text.n */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/n.class */
public final class C0379n extends SpannableStringBuilder {

    /* renamed from: a */
    public final Class<?> f1643a;

    /* renamed from: b */
    public final List<C0380a> f1644b = new ArrayList();

    /* renamed from: androidx.emoji2.text.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/n$a.class */
    public static class C0380a implements TextWatcher, SpanWatcher {

        /* renamed from: a */
        public final Object f1645a;

        /* renamed from: b */
        public final AtomicInteger f1646b = new AtomicInteger(0);

        public C0380a(Object obj) {
            this.f1645a = obj;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f1645a).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f1645a).beforeTextChanged(charSequence, i, i2, i3);
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (this.f1646b.get() <= 0 || !(obj instanceof AbstractC0371i)) {
                ((SpanWatcher) this.f1645a).onSpanAdded(spannable, obj, i, i2);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
            if (this.f1646b.get() <= 0 || !(obj instanceof AbstractC0371i)) {
                ((SpanWatcher) this.f1645a).onSpanChanged(spannable, obj, i, i2, i3, i4);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (this.f1646b.get() <= 0 || !(obj instanceof AbstractC0371i)) {
                ((SpanWatcher) this.f1645a).onSpanRemoved(spannable, obj, i, i2);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f1645a).onTextChanged(charSequence, i, i2, i3);
        }
    }

    public C0379n(Class<?> cls, CharSequence charSequence) {
        super(charSequence);
        C3102d.m2628k(cls, "watcherClass cannot be null");
        this.f1643a = cls;
    }

    public C0379n(Class<?> cls, CharSequence charSequence, int i, int i2) {
        super(charSequence, i, i2);
        C3102d.m2628k(cls, "watcherClass cannot be null");
        this.f1643a = cls;
    }

    /* renamed from: a */
    public final void m8223a() {
        for (int i = 0; i < this.f1644b.size(); i++) {
            this.f1644b.get(i).f1646b.incrementAndGet();
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public Editable append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public Editable append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public Editable append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* renamed from: append */
    public SpannableStringBuilder mo9012append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* renamed from: append */
    public SpannableStringBuilder mo9013append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* renamed from: append */
    public SpannableStringBuilder mo9014append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        super.append(charSequence, obj, i);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* renamed from: append */
    public Appendable mo9015append(char c) throws IOException {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* renamed from: append */
    public Appendable mo9016append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) throws IOException {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* renamed from: append */
    public Appendable mo9017append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) throws IOException {
        super.append(charSequence, i, i2);
        return this;
    }

    /* renamed from: b */
    public void m8222b() {
        m8219e();
        for (int i = 0; i < this.f1644b.size(); i++) {
            ((TextWatcher) this.f1644b.get(i).f1645a).onTextChanged(this, 0, length(), length());
        }
    }

    /* renamed from: c */
    public final C0380a m8221c(Object obj) {
        for (int i = 0; i < this.f1644b.size(); i++) {
            C0380a c0380a = this.f1644b.get(i);
            if (c0380a.f1645a == obj) {
                return c0380a;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if ((r3.f1643a == r4.getClass()) != false) goto L11;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8220d(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L21
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r4 = r0
            r0 = r3
            java.lang.Class<?> r0 = r0.f1643a
            r1 = r4
            if (r0 != r1) goto L18
            r0 = 1
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r6
            if (r0 == 0) goto L21
            goto L23
        L21:
            r0 = 0
            r5 = r0
        L23:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C0379n.m8220d(java.lang.Object):boolean");
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public Editable delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    /* renamed from: delete */
    public SpannableStringBuilder mo9018delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    /* renamed from: e */
    public final void m8219e() {
        for (int i = 0; i < this.f1644b.size(); i++) {
            this.f1644b.get(i).f1646b.decrementAndGet();
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(Object obj) {
        C0380a c0380a = obj;
        if (m8220d(obj)) {
            C0380a m8221c = m8221c(obj);
            c0380a = obj;
            if (m8221c != null) {
                c0380a = m8221c;
            }
        }
        return super.getSpanEnd(c0380a);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(Object obj) {
        C0380a c0380a = obj;
        if (m8220d(obj)) {
            C0380a m8221c = m8221c(obj);
            c0380a = obj;
            if (m8221c != null) {
                c0380a = m8221c;
            }
        }
        return super.getSpanFlags(c0380a);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(Object obj) {
        C0380a c0380a = obj;
        if (m8220d(obj)) {
            C0380a m8221c = m8221c(obj);
            c0380a = obj;
            if (m8221c != null) {
                c0380a = m8221c;
            }
        }
        return super.getSpanStart(c0380a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (this.f1643a == cls) {
            C0380a[] c0380aArr = (C0380a[]) super.getSpans(i, i2, C0380a.class);
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, c0380aArr.length));
            for (int i3 = 0; i3 < c0380aArr.length; i3++) {
                tArr[i3] = c0380aArr[i3].f1645a;
            }
            return tArr;
        }
        return (T[]) super.getSpans(i, i2, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public Editable insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public Editable insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    /* renamed from: insert */
    public SpannableStringBuilder mo9019insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    /* renamed from: insert */
    public SpannableStringBuilder mo9020insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if ((r5.f1643a == r8) != false) goto L10;
     */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int nextSpanTransition(int r6, int r7, java.lang.Class r8) {
        /*
            r5 = this;
            r0 = r8
            if (r0 == 0) goto L1a
            r0 = r5
            java.lang.Class<?> r0 = r0.f1643a
            r1 = r8
            if (r0 != r1) goto L12
            r0 = 1
            r9 = r0
            goto L15
        L12:
            r0 = 0
            r9 = r0
        L15:
            r0 = r9
            if (r0 == 0) goto L1d
        L1a:
            java.lang.Class<androidx.emoji2.text.n$a> r0 = androidx.emoji2.text.C0379n.C0380a.class
            r8 = r0
        L1d:
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            int r0 = super.nextSpanTransition(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C0379n.nextSpanTransition(int, int, java.lang.Class):int");
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(Object obj) {
        C0380a c0380a;
        if (m8220d(obj)) {
            C0380a m8221c = m8221c(obj);
            c0380a = m8221c;
            if (m8221c != null) {
                obj = m8221c;
                c0380a = m8221c;
            }
        } else {
            c0380a = null;
        }
        super.removeSpan(obj);
        if (c0380a != null) {
            this.f1644b.remove(c0380a);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public Editable replace(int i, int i2, CharSequence charSequence) {
        m8223a();
        super.replace(i, i2, charSequence);
        m8219e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public Editable replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        m8223a();
        super.replace(i, i2, charSequence, i3, i4);
        m8219e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    /* renamed from: replace */
    public SpannableStringBuilder mo9021replace(int i, int i2, CharSequence charSequence) {
        m8223a();
        super.replace(i, i2, charSequence);
        m8219e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    /* renamed from: replace */
    public SpannableStringBuilder mo9022replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        m8223a();
        super.replace(i, i2, charSequence, i3, i4);
        m8219e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        C0380a c0380a = obj;
        if (m8220d(obj)) {
            c0380a = new C0380a(obj);
            this.f1644b.add(c0380a);
        }
        super.setSpan(c0380a, i, i2, i3);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i, int i2) {
        return new C0379n(this.f1643a, this, i, i2);
    }
}
