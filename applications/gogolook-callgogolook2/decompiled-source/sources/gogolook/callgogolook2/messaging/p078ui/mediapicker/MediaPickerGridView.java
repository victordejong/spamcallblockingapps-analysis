package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerGridView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerGridView.class */
public class MediaPickerGridView extends GridView {
    public MediaPickerGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: b */
    public boolean m26983b() {
        if (getAdapter() == null || getAdapter().getCount() == 0 || getChildCount() == 0) {
            return false;
        }
        return getFirstVisiblePosition() != 0 || getChildAt(0).getTop() < 0;
    }
}
