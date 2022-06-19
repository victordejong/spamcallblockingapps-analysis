package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.EditText;
import p113f.p114a.p115a.C3133c;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/EmojiconEditText.class */
public class EmojiconEditText extends EditText {

    /* renamed from: b */
    private int f12983b;

    /* renamed from: c */
    private int f12984c;

    /* renamed from: d */
    private int f12985d;

    /* renamed from: e */
    private boolean f12986e;

    public EmojiconEditText(Context context) {
        super(context);
        this.f12986e = false;
        this.f12983b = (int) getTextSize();
        this.f12985d = (int) getTextSize();
    }

    public EmojiconEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12986e = false;
        m29a(attributeSet);
    }

    public EmojiconEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12986e = false;
        m29a(attributeSet);
    }

    /* renamed from: a */
    private void m29a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3133c.Emojicon);
        this.f12983b = (int) obtainStyledAttributes.getDimension(C3133c.Emojicon_emojiconSize, getTextSize());
        this.f12984c = obtainStyledAttributes.getInt(C3133c.Emojicon_emojiconAlignment, 1);
        this.f12986e = obtainStyledAttributes.getBoolean(C3133c.Emojicon_emojiconUseSystemDefault, false);
        obtainStyledAttributes.recycle();
        this.f12985d = (int) getTextSize();
        setText(getText());
    }

    /* renamed from: b */
    private void m28b() {
        C3153b.m19b(getContext(), getText(), this.f12983b, this.f12984c, this.f12985d, this.f12986e);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        m28b();
    }

    public void setEmojiconSize(int i) {
        this.f12983b = i;
        m28b();
    }

    public void setUseSystemDefault(boolean z) {
        this.f12986e = z;
    }
}
