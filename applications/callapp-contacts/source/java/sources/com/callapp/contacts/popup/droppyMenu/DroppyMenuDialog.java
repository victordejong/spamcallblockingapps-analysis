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

    /* renamed from: a */
    private DroppyMenuPopup f27337a = null;

    /* renamed from: b */
    private DroppyMenuListAdapter f27338b;

    /* renamed from: c */
    private List<WidgetMetaData> f27339c;

    /* renamed from: d */
    private ContactData f27340d;

    /* renamed from: e */
    private BaseAdapterItemData f27341e;

    @Override // com.callapp.contacts.popup.droppyMenu.DroppyMenuListAdapter.DroppyItemClick
    /* renamed from: a */
    public final void mo27905a(int i, View view) {
        AndroidUtils.m27630a(view, 1);
        String str = this.f27339c.get(i).key;
        Action m28765a = ActionsManager.get().m28765a(str);
        if (m28765a != null) {
            AnalyticsManager.get().m28449a(Constants.ACTIONS, str, Constants.CLICK);
            m28765a.m31838a(view.getContext(), this.f27340d, (ContactData) this.f27341e);
            DroppyMenuPopup droppyMenuPopup = this.f27337a;
            if (droppyMenuPopup == null) {
                return;
            }
            droppyMenuPopup.m5879a(true);
        }
    }
}
