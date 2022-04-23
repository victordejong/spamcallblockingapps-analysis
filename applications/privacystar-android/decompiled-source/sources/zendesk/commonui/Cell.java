package zendesk.commonui;

import android.app.Activity;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/Cell.class */
public interface Cell {
    boolean areContentsTheSame(@NonNull Cell cell);

    boolean areItemsTheSame(@NonNull Cell cell);

    void bind(@NonNull View view, Activity activity);

    @NonNull
    String getId();

    @LayoutRes
    int getLayoutRes();
}
