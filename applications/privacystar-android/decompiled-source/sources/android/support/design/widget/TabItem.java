package android.support.design.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.C0089R;
import android.support.p004v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/design/widget/TabItem.class */
public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0089R.styleable.TabItem);
        this.text = obtainStyledAttributes.getText(C0089R.styleable.TabItem_android_text);
        this.icon = obtainStyledAttributes.getDrawable(C0089R.styleable.TabItem_android_icon);
        this.customLayout = obtainStyledAttributes.getResourceId(C0089R.styleable.TabItem_android_layout, 0);
        obtainStyledAttributes.recycle();
    }
}
