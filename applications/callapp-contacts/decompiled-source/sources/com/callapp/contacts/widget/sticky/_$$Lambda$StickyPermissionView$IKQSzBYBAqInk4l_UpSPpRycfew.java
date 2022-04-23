package com.callapp.contacts.widget.sticky;

import android.view.View;
import com.callapp.contacts.manager.permission.PermissionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/_$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew.class */
public final /* synthetic */ class _$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew implements View.OnClickListener {
    public final /* synthetic */ StickyPermissionView f$0;
    public final /* synthetic */ PermissionManager.PermissionGroup f$1;

    public /* synthetic */ _$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew(StickyPermissionView stickyPermissionView, PermissionManager.PermissionGroup permissionGroup) {
        this.f$0 = stickyPermissionView;
        this.f$1 = permissionGroup;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f$0.a(this.f$1, view);
    }
}
