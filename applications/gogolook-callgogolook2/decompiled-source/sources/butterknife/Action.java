package butterknife;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
/* loaded from: classes-dex2jar.jar:butterknife/Action.class */
public interface Action<T extends View> {
    @UiThread
    void apply(@NonNull T t, int i);
}
