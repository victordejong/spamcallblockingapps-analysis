package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.KeyEvent;
import androidx.emoji2.text.C0354d;
import androidx.emoji2.text.C0377m;
import p259v0.C4573a;
/* renamed from: androidx.emoji2.text.h */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/h.class */
public final class C0368h {

    /* renamed from: a */
    public final C0354d.C0364i f1609a;

    /* renamed from: b */
    public final C0377m f1610b;

    /* renamed from: c */
    public C0354d.AbstractC0359d f1611c;

    /* renamed from: androidx.emoji2.text.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/h$a.class */
    public static class C0369a implements C0354d.AbstractC0359d {

        /* renamed from: b */
        public static final ThreadLocal<StringBuilder> f1612b = new ThreadLocal<>();

        /* renamed from: a */
        public final TextPaint f1613a;

        public C0369a() {
            TextPaint textPaint = new TextPaint();
            this.f1613a = textPaint;
            textPaint.setTextSize(10.0f);
        }
    }

    /* renamed from: androidx.emoji2.text.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/h$b.class */
    public static final class C0370b {

        /* renamed from: a */
        public int f1614a = 1;

        /* renamed from: b */
        public final C0377m.C0378a f1615b;

        /* renamed from: c */
        public C0377m.C0378a f1616c;

        /* renamed from: d */
        public C0377m.C0378a f1617d;

        /* renamed from: e */
        public int f1618e;

        /* renamed from: f */
        public int f1619f;

        public C0370b(C0377m.C0378a c0378a, boolean z, int[] iArr) {
            this.f1615b = c0378a;
            this.f1616c = c0378a;
        }

        /* renamed from: a */
        public int m8232a(int i) {
            int i2;
            SparseArray<C0377m.C0378a> sparseArray = this.f1616c.f1641a;
            C0377m.C0378a c0378a = sparseArray == null ? null : sparseArray.get(i);
            if (this.f1614a == 2) {
                if (c0378a != null) {
                    this.f1616c = c0378a;
                    this.f1619f++;
                } else {
                    if (i == 65038) {
                        m8231b();
                    } else {
                        boolean z = false;
                        if (i == 65039) {
                            z = true;
                        }
                        if (!z) {
                            C0377m.C0378a c0378a2 = this.f1616c;
                            if (c0378a2.f1642b == null) {
                                m8231b();
                            } else if (this.f1619f != 1) {
                                this.f1617d = c0378a2;
                                m8231b();
                                i2 = 3;
                            } else if (m8230c()) {
                                this.f1617d = this.f1616c;
                                m8231b();
                                i2 = 3;
                            } else {
                                m8231b();
                            }
                        }
                    }
                    i2 = 1;
                }
                i2 = 2;
            } else if (c0378a == null) {
                m8231b();
                i2 = 1;
            } else {
                this.f1614a = 2;
                this.f1616c = c0378a;
                this.f1619f = 1;
                i2 = 2;
            }
            this.f1618e = i;
            return i2;
        }

        /* renamed from: b */
        public final int m8231b() {
            this.f1614a = 1;
            this.f1616c = this.f1615b;
            this.f1619f = 0;
            return 1;
        }

        /* renamed from: c */
        public final boolean m8230c() {
            C4573a m8235e = this.f1616c.f1642b.m8235e();
            int m762a = m8235e.m762a(6);
            if ((m762a == 0 || m8235e.f14148b.get(m762a + m8235e.f14147a) == 0) ? false : true) {
                return true;
            }
            return this.f1618e == 65039;
        }
    }

    public C0368h(C0377m c0377m, C0354d.C0364i c0364i, C0354d.AbstractC0359d abstractC0359d, boolean z, int[] iArr) {
        this.f1609a = c0364i;
        this.f1610b = c0377m;
        this.f1611c = abstractC0359d;
    }

    /* renamed from: a */
    public static boolean m8234a(Editable editable, KeyEvent keyEvent, boolean z) {
        AbstractC0371i[] abstractC0371iArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if ((selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) || (abstractC0371iArr = (AbstractC0371i[]) editable.getSpans(selectionStart, selectionEnd, AbstractC0371i.class)) == null || abstractC0371iArr.length <= 0) {
            return false;
        }
        for (AbstractC0371i abstractC0371i : abstractC0371iArr) {
            int spanStart = editable.getSpanStart(abstractC0371i);
            int spanEnd = editable.getSpanEnd(abstractC0371i);
            if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                editable.delete(spanStart, spanEnd);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0158, code lost:
        if (r0 >= r20) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01f1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8233b(java.lang.CharSequence r7, int r8, int r9, androidx.emoji2.text.C0367g r10) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C0368h.m8233b(java.lang.CharSequence, int, int, androidx.emoji2.text.g):boolean");
    }
}
