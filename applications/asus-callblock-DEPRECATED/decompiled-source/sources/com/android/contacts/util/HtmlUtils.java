package com.android.contacts.util;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.text.style.QuoteSpan;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/HtmlUtils.class */
public class HtmlUtils {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/HtmlUtils$StreamItemQuoteSpan.class */
    public static class StreamItemQuoteSpan extends QuoteSpan {
        private final int mWidth;

        public StreamItemQuoteSpan(int i, int i2) {
            super(i);
            this.mWidth = i2;
        }

        @Override // android.text.style.QuoteSpan, android.text.style.LeadingMarginSpan
        public int getLeadingMargin(boolean z) {
            return this.mWidth;
        }
    }

    public static Spanned fromHtml(Context context, String str) {
        return TextUtils.isEmpty(str) ? null : postprocess(context, Html.fromHtml(str));
    }

    public static CharSequence fromHtml(Context context, String str, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        return TextUtils.isEmpty(str) ? null : postprocess(context, Html.fromHtml(str, imageGetter, tagHandler));
    }

    static Spanned postprocess(Context context, Spanned spanned) {
        SpannableStringBuilder spannableStringBuilder;
        if (spanned == null) {
            spannableStringBuilder = null;
        } else {
            int length = spanned.length();
            spannableStringBuilder = spanned;
            if (length != 0) {
                SpannableStringBuilder spannableStringBuilder2 = spanned instanceof SpannableStringBuilder ? (SpannableStringBuilder) spanned : new SpannableStringBuilder(spanned);
                QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spannableStringBuilder2.getSpans(0, length, QuoteSpan.class);
                if (!(quoteSpanArr == null || quoteSpanArr.length == 0)) {
                    Resources resources = context.getResources();
                    int color = resources.getColor(2131034419);
                    int dimensionPixelSize = resources.getDimensionPixelSize(2131100318);
                    for (QuoteSpan quoteSpan : quoteSpanArr) {
                        replaceSpan(spannableStringBuilder2, quoteSpan, new StreamItemQuoteSpan(color, dimensionPixelSize));
                    }
                }
                ImageSpan[] imageSpanArr = (ImageSpan[]) spannableStringBuilder2.getSpans(0, length, ImageSpan.class);
                if (imageSpanArr != null) {
                    for (ImageSpan imageSpan : imageSpanArr) {
                        replaceSpan(spannableStringBuilder2, imageSpan, new ImageSpan(imageSpan.getDrawable(), 1));
                    }
                }
                int i = length;
                for (int length2 = spannableStringBuilder2.length() - 1; length2 >= 0 && spannableStringBuilder2.charAt(length2) == '\n'; length2--) {
                    i = length2;
                }
                spannableStringBuilder = spannableStringBuilder2;
                if (i != length) {
                    spannableStringBuilder = new SpannableStringBuilder(spannableStringBuilder2, 0, i);
                }
            }
        }
        return spannableStringBuilder;
    }

    private static void replaceSpan(SpannableStringBuilder spannableStringBuilder, Object obj, Object obj2) {
        spannableStringBuilder.setSpan(obj2, spannableStringBuilder.getSpanStart(obj), spannableStringBuilder.getSpanEnd(obj), spannableStringBuilder.getSpanFlags(obj));
        spannableStringBuilder.removeSpan(obj);
    }
}
