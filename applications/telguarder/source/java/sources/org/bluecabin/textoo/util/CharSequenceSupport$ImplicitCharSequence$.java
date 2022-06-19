package org.bluecabin.textoo.util;

import android.text.Spannable;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import org.bluecabin.textoo.util.CharSequenceSupport;
import scala.Array$;
import scala.Predef$;
import scala.Predef$DummyImplicit$;
import scala.collection.Seq;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$.class */
public class CharSequenceSupport$ImplicitCharSequence$ {
    public static final CharSequenceSupport$ImplicitCharSequence$ MODULE$ = null;

    static {
        new CharSequenceSupport$ImplicitCharSequence$();
    }

    public CharSequenceSupport$ImplicitCharSequence$() {
        MODULE$ = this;
    }

    public final Seq<CharSequenceSupport.SpanInfo> allLinks$extension(CharSequence charSequence) {
        Spanned spanned$extension = toSpanned$extension(charSequence);
        return (Seq) Predef$.MODULE$.refArrayOps(spanned$extension.getSpans(0, spanned$extension.length(), ClickableSpan.class)).map(new C2523xb0a696d9(spanned$extension), Array$.MODULE$.fallbackCanBuildFrom(Predef$DummyImplicit$.MODULE$.dummyImplicit()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(java.lang.CharSequence r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof org.bluecabin.textoo.util.CharSequenceSupport.ImplicitCharSequence
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L41
            r0 = r5
            if (r0 != 0) goto L15
            r0 = 0
            r5 = r0
            goto L1d
        L15:
            r0 = r5
            org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence r0 = (org.bluecabin.textoo.util.CharSequenceSupport.ImplicitCharSequence) r0
            java.lang.CharSequence r0 = r0.chars()
            r5 = r0
        L1d:
            r0 = r4
            if (r0 != 0) goto L28
            r0 = r5
            if (r0 == 0) goto L30
            goto L36
        L28:
            r0 = r4
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
        L30:
            r0 = 1
            r8 = r0
            goto L39
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            if (r0 == 0) goto L41
            goto L44
        L41:
            r0 = 0
            r7 = r0
        L44:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$.equals$extension(java.lang.CharSequence, java.lang.Object):boolean");
    }

    public final int hashCode$extension(CharSequence charSequence) {
        return charSequence.hashCode();
    }

    public final Spannable toSpannable$extension(CharSequence charSequence) {
        return CharSequenceSupport$.MODULE$.toSpannable(charSequence);
    }

    public final Spanned toSpanned$extension(CharSequence charSequence) {
        return CharSequenceSupport$.MODULE$.toSpanned(charSequence);
    }
}
