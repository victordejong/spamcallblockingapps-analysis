package gogolook.callgogolook2.phonebook;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/ContactListActivity_ViewBinding.class */
public class ContactListActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public ContactListActivity f12372a;

    @UiThread
    public ContactListActivity_ViewBinding(ContactListActivity contactListActivity, View view) {
        this.f12372a = contactListActivity;
        contactListActivity.mFlRoot = (FrameLayout) Utils.findRequiredViewAsType(view, R$id.fragment_container, "field 'mFlRoot'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ContactListActivity contactListActivity = this.f12372a;
        if (contactListActivity != null) {
            this.f12372a = null;
            contactListActivity.mFlRoot = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
