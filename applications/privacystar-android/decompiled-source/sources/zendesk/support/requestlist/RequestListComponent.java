package zendesk.support.requestlist;

import android.support.annotation.RestrictTo;
import dagger.Subcomponent;
import zendesk.support.ActivityScope;
@Subcomponent(modules = {RequestListModule.class})
@ActivityScope
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListComponent.class */
public interface RequestListComponent {
    void inject(RequestListActivity requestListActivity);
}
