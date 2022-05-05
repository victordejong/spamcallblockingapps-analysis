package androidx.appcompat.widget;

import android.content.res.Resources;
import android.widget.SpinnerAdapter;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ThemedSpinnerAdapter.class */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ThemedSpinnerAdapter$Helper.class */
    public static final class Helper {
    }

    @Nullable
    Resources.Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources.Theme theme);
}
