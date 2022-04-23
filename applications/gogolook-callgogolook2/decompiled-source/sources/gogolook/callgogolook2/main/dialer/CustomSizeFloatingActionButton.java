package gogolook.callgogolook2.main.dialer;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/CustomSizeFloatingActionButton.class */
public class CustomSizeFloatingActionButton extends FloatingActionButton {
    public CustomSizeFloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomSizeFloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton, android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension((int) (getMeasuredWidth() * 0.75f), (int) (getMeasuredHeight() * 0.75f));
    }
}
