package org.bluecabin.textoo.util;

import android.text.Spannable;
import android.text.Spanned;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport$.class */
public final class CharSequenceSupport$ {
    public static final CharSequenceSupport$ MODULE$ = null;

    static {
        new CharSequenceSupport$();
    }

    private CharSequenceSupport$() {
        MODULE$ = this;
    }

    private Spannable charsToSpannable(CharSequence charSequence) {
        return Spannable.Factory.getInstance().newSpannable(charSequence);
    }

    public CharSequence ImplicitCharSequence(CharSequence charSequence) {
        return charSequence;
    }

    public Spannable toSpannable(CharSequence charSequence) {
        return charSequence instanceof Spannable ? (Spannable) charSequence : charsToSpannable(charSequence);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.text.Spanned] */
    public Spanned toSpanned(CharSequence charSequence) {
        return charSequence instanceof Spanned ? (Spanned) charSequence : charsToSpannable(charSequence);
    }
}
