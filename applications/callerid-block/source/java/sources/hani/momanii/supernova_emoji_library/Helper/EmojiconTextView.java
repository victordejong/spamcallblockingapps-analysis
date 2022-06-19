package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import p113f.p114a.p115a.C3133c;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/EmojiconTextView.class */
public class EmojiconTextView extends TextView {

    /* renamed from: b */
    private int f12993b;

    /* renamed from: c */
    private int f12994c;

    /* renamed from: d */
    private int f12995d;

    /* renamed from: e */
    private int f12996e = 0;

    /* renamed from: f */
    private int f12997f = -1;

    /* renamed from: g */
    private boolean f12998g = false;

    public EmojiconTextView(Context context) {
        super(context);
        m23a(null);
    }

    public EmojiconTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23a(attributeSet);
    }

    public EmojiconTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m23a(attributeSet);
    }

    /* renamed from: a */
    private void m23a(AttributeSet attributeSet) {
        this.f12995d = (int) getTextSize();
        if (attributeSet == null) {
            this.f12993b = (int) getTextSize();
        } else {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3133c.Emojicon);
            this.f12993b = (int) obtainStyledAttributes.getDimension(C3133c.Emojicon_emojiconSize, getTextSize());
            this.f12994c = obtainStyledAttributes.getInt(C3133c.Emojicon_emojiconAlignment, 0);
            this.f12996e = obtainStyledAttributes.getInteger(C3133c.Emojicon_emojiconTextStart, 0);
            this.f12997f = obtainStyledAttributes.getInteger(C3133c.Emojicon_emojiconTextLength, -1);
            this.f12998g = obtainStyledAttributes.getBoolean(C3133c.Emojicon_emojiconUseSystemDefault, this.f12998g);
            obtainStyledAttributes.recycle();
        }
        setText(getText());
    }

    public void setEmojiconSize(int i) {
        this.f12993b = i;
        super.setText(getText());
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        SpannableStringBuilder spannableStringBuilder = charSequence;
        if (!TextUtils.isEmpty(charSequence)) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
            C3153b.m20a(getContext(), spannableStringBuilder2, this.f12993b, this.f12994c, this.f12995d, this.f12996e, this.f12997f, this.f12998g);
            spannableStringBuilder = spannableStringBuilder2;
        }
        super.setText(spannableStringBuilder, bufferType);
    }

    public void setUseSystemDefault(boolean z) {
        this.f12998g = z;
    }
}
