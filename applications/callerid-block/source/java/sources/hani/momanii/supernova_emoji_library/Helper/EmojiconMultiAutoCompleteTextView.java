package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.MultiAutoCompleteTextView;
import p113f.p114a.p115a.C3133c;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/EmojiconMultiAutoCompleteTextView.class */
public class EmojiconMultiAutoCompleteTextView extends MultiAutoCompleteTextView {

    /* renamed from: b */
    private int f12987b;

    /* renamed from: c */
    private int f12988c;

    /* renamed from: d */
    private int f12989d;

    /* renamed from: e */
    private boolean f12990e;

    public EmojiconMultiAutoCompleteTextView(Context context) {
        super(context);
        this.f12990e = false;
        this.f12987b = (int) getTextSize();
        this.f12989d = (int) getTextSize();
    }

    public EmojiconMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12990e = false;
        m27a(attributeSet);
    }

    public EmojiconMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12990e = false;
        m27a(attributeSet);
    }

    /* renamed from: a */
    private void m27a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3133c.Emojicon);
        this.f12987b = (int) obtainStyledAttributes.getDimension(C3133c.Emojicon_emojiconSize, getTextSize());
        this.f12988c = obtainStyledAttributes.getInt(C3133c.Emojicon_emojiconAlignment, 1);
        this.f12990e = obtainStyledAttributes.getBoolean(C3133c.Emojicon_emojiconUseSystemDefault, false);
        obtainStyledAttributes.recycle();
        this.f12989d = (int) getTextSize();
        setText(getText());
    }

    /* renamed from: b */
    private void m26b() {
        C3153b.m19b(getContext(), getText(), this.f12987b, this.f12988c, this.f12989d, this.f12990e);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        m26b();
    }

    public void setEmojiconSize(int i) {
        this.f12987b = i;
        m26b();
    }

    public void setUseSystemDefault(boolean z) {
        this.f12990e = z;
    }
}
