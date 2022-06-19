package p1727n3.p1849n;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.Collections;
import java.util.List;
/* renamed from: n3.n.d */
/* loaded from: classes-dex2jar.jar:n3/n/d.class */
public abstract class AbstractC26863d {
    public List<AbstractC26863d> collectDependencies() {
        return Collections.emptyList();
    }

    public abstract String convertBrIdToString(int i);

    public abstract ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i);

    public abstract ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i);

    public abstract int getLayoutId(String str);
}
