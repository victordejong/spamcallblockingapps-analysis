package zendesk.support.request;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestView.class */
interface RequestView {
    boolean hasUnsavedInput();

    boolean inflateMenu(MenuInflater menuInflater, Menu menu);

    boolean onOptionsItemClicked(MenuItem menuItem);
}
