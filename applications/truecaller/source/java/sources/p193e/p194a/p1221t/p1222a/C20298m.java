package p193e.p194a.p1221t.p1222a;

import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import p193e.p194a.p1221t.p1222a.p1226w.C20328a;
import s1.d0.j;
import s1.u.z;
import s1.z.c.l;
/* renamed from: e.a.t.a.m */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/m.class */
public final class C20298m implements TextWatcher {

    /* renamed from: a */
    public boolean f57106a;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "s");
        if (this.f57106a) {
            return;
        }
        this.f57106a = true;
        Object[] spans = editable.getSpans(0, editable.length(), C20302q.class);
        l.d(spans, "s.getSpans(0, s.length, …ithEmojiSpan::class.java)");
        for (Object obj : spans) {
            C20302q c20302q = (C20302q) obj;
            int spanStart = editable.getSpanStart(c20302q);
            int spanEnd = editable.getSpanEnd(c20302q);
            editable.removeSpan(c20302q);
            editable.setSpan(new C20304s(editable.subSequence(spanStart, spanEnd).toString()), spanStart, spanEnd, 0);
            editable.replace(spanStart, spanEnd, c20302q.f57109a);
        }
        Object[] spans2 = editable.getSpans(0, editable.length(), C20303r.class);
        l.d(spans2, "s.getSpans(0, s.length, …EmoticonSpan::class.java)");
        for (Object obj2 : spans2) {
            C20303r c20303r = (C20303r) obj2;
            int spanStart2 = editable.getSpanStart(c20303r);
            int spanEnd2 = editable.getSpanEnd(c20303r);
            Object[] spans3 = editable.getSpans(spanStart2, spanEnd2, C20328a.class);
            l.d(spans3, "s.getSpans(start, end, EmojiSpan::class.java)");
            for (Object obj3 : spans3) {
                editable.removeSpan((C20328a) obj3);
            }
            editable.delete(spanStart2, spanEnd2);
            editable.insert(spanStart2, c20303r.f57110a);
            editable.removeSpan(c20303r);
        }
        this.f57106a = false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4;
        l.e(charSequence, "s");
        if (this.f57106a || !(charSequence instanceof Spannable) || 1 > (i4 = i2 - i3) || 2 < i4) {
            return;
        }
        Spannable spannable = (Spannable) charSequence;
        Object[] spans = spannable.getSpans(i, i2 + i, C20304s.class);
        l.d(spans, "s.getSpans(start, start …EmoticonSpan::class.java)");
        for (Object obj : spans) {
            C20304s c20304s = (C20304s) obj;
            spannable.setSpan(new C20303r(c20304s.f57111a), spannable.getSpanStart(c20304s), spannable.getSpanEnd(c20304s), 0);
            spannable.removeSpan(c20304s);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
        if (this.f57106a || !(charSequence instanceof Spannable)) {
            return;
        }
        int i4 = (i + i3) - 1;
        if (i3 - i2 != 1 || charSequence.charAt(i4) != ' ') {
            return;
        }
        z it = j.f(Math.min(5, i4), 2).iterator();
        while (it.hasNext()) {
            int a = i4 - it.a();
            String obj = charSequence.subSequence(a, i4).toString();
            C20299n c20299n = C20299n.f57108b;
            String str = C20299n.f57107a.get(obj);
            if (str != null) {
                ((Spannable) charSequence).setSpan(new C20302q(str), a, i4, 0);
                return;
            }
        }
    }
}
