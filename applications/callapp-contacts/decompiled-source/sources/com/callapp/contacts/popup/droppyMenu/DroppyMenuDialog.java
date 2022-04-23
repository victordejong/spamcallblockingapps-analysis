package com.callapp.contacts.popup.droppyMenu;

import android.view.View;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.popup.droppyMenu.DroppyMenuListAdapter;
import com.callapp.contacts.util.AndroidUtils;
import com.shehabic.droppy.DroppyMenuPopup;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/droppyMenu/DroppyMenuDialog.class */
public class DroppyMenuDialog implements DroppyMenuListAdapter.DroppyItemClick {

    /* renamed from: a  reason: collision with root package name */
    private DroppyMenuPopup f15605a = null;

    /* renamed from: b  reason: collision with root package name */
    private DroppyMenuListAdapter f15606b;

    /* renamed from: c  reason: collision with root package name */
    private List<WidgetMetaData> f15607c;

    /* renamed from: d  reason: collision with root package name */
    private ContactData f15608d;
    private BaseAdapterItemData e;

    @Override // com.callapp.contacts.popup.droppyMenu.DroppyMenuListAdapter.DroppyItemClick
    public final void a(int i, View view) {
        AndroidUtils.a(view, 1);
        String str = this.f15607c.get(i).key;
        Action a2 = ActionsManager.get().a(str);
        if (a2 != null) {
            AnalyticsManager.get().a(Constants.ACTIONS, str, Constants.CLICK);
            a2.a(view.getContext(), this.f15608d, (ContactData) this.e);
            DroppyMenuPopup droppyMenuPopup = this.f15605a;
            if (droppyMenuPopup != null) {
                droppyMenuPopup.a(true);
            }
        }
    }
}
