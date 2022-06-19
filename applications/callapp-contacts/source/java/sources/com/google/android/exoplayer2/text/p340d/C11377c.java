package com.google.android.exoplayer2.text.p340d;

import android.text.Spannable;
/* renamed from: com.google.android.exoplayer2.text.d.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/d/c.class */
public final class C11377c {
    private C11377c() {
    }

    /* renamed from: a */
    public static void m20722a(Spannable spannable, Object obj, int i, int i2) {
        Object[] spans;
        for (Object obj2 : spannable.getSpans(i, i2, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i && spannable.getSpanEnd(obj2) == i2 && spannable.getSpanFlags(obj2) == 33) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i, i2, 33);
    }
}
