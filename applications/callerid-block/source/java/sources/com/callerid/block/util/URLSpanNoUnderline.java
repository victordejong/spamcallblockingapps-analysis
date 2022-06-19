package com.callerid.block.util;

import android.text.TextPaint;
import android.text.style.URLSpan;
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/URLSpanNoUnderline.class */
public class URLSpanNoUnderline extends URLSpan {
    public URLSpanNoUnderline(String str) {
        super(str);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
    }
}
