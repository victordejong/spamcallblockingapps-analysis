package androidx.core.text;

import android.annotation.SuppressLint;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p626l.p628b0.C14888d;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a%\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0086\n\u001a\u001d\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0086\n\u001a\r\u0010\u000b\u001a\u00020\u0002*\u00020\fH\u0086\b¨\u0006\r"}, m815d2 = {"clearSpans", "", "Landroid/text/Spannable;", "set", "start", "", "end", TtmlNode.TAG_SPAN, "", "range", "Lkotlin/ranges/IntRange;", "toSpannable", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/text/SpannableStringKt.class */
public final class SpannableStringKt {
    @SuppressLint({"SyntheticAccessor"})
    public static final void clearSpans(Spannable spannable) {
        C15149k.m377b(spannable, "$this$clearSpans");
        Object[] spans = spannable.getSpans(0, spannable.length(), Object.class);
        C15149k.m383a((Object) spans, "getSpans(start, end, T::class.java)");
        for (Object obj : spans) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(Spannable spannable, int i, int i2, Object obj) {
        C15149k.m377b(spannable, "$this$set");
        C15149k.m377b(obj, TtmlNode.TAG_SPAN);
        spannable.setSpan(obj, i, i2, 17);
    }

    public static final void set(Spannable spannable, C14888d dVar, Object obj) {
        C15149k.m377b(spannable, "$this$set");
        C15149k.m377b(dVar, "range");
        C15149k.m377b(obj, TtmlNode.TAG_SPAN);
        spannable.setSpan(obj, dVar.getStart().intValue(), dVar.getEndInclusive().intValue(), 17);
    }

    public static final Spannable toSpannable(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$toSpannable");
        SpannableString valueOf = SpannableString.valueOf(charSequence);
        C15149k.m383a((Object) valueOf, "SpannableString.valueOf(this)");
        return valueOf;
    }
}
