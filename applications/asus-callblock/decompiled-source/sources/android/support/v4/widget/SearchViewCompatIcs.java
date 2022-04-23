package android.support.v4.widget;

import android.content.Context;
import android.widget.SearchView;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/SearchViewCompatIcs.class */
final class SearchViewCompatIcs {

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SearchViewCompatIcs$MySearchView.class */
    public static class MySearchView extends SearchView {
        public MySearchView(Context context) {
            super(context);
        }

        @Override // android.widget.SearchView, android.view.CollapsibleActionView
        public void onActionViewCollapsed() {
            setQuery(BuildConfig.FLAVOR, false);
            super.onActionViewCollapsed();
        }
    }
}
