package com.truecaller.messaging.conversation.translation;

import android.text.TextPaint;
import android.text.style.RelativeSizeSpan;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/translation/RelativeSizeColorSpan.class */
public final class RelativeSizeColorSpan extends RelativeSizeSpan {

    /* renamed from: a */
    public final int f13107a;

    public RelativeSizeColorSpan(float f, int i) {
        super(f);
        this.f13107a = i;
    }

    @Override // android.text.style.RelativeSizeSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        l.e(textPaint, "textPaint");
        super.updateDrawState(textPaint);
        textPaint.setColor(this.f13107a);
    }
}
