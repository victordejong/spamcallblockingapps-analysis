package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.loader.PreferredSimManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceRadioBtnsWithSubtitle;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ChangePreferredSimAction.class */
public class ChangePreferredSimAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.ChangePreferredSimAction$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ChangePreferredSimAction$2.class */
    static /* synthetic */ class C55792 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19255a;

        /* renamed from: b */
        static final /* synthetic */ int[] f19256b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:4:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:20:0x0028). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19256b = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            int[] iArr2 = new int[SimManager.SimId.values().length];
            f19255a = iArr2;
            try {
                iArr2[SimManager.SimId.ASK.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19255a[SimManager.SimId.SIM_1.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19255a[SimManager.SimId.SIM_2.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && SimManager.get().isDualSimAvailable() && C55792.f19256b[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickSelectSim", Constants.CLICK);
        SimManager.DualSim dualSimOperators = Singletons.get().getSimManager().getDualSimOperators();
        String string = Activities.getString(2131886758);
        String m27697a = Activities.m27697a(2131886760, dualSimOperators.getOperator1());
        String m27697a2 = Activities.m27697a(2131886761, dualSimOperators.getOperator2());
        int i = DialogSelectSingleChoiceBase.f27212a;
        final SimManager.SimId m28907a = PreferredSimManager.m28907a(contactData.getDeviceId(), contactData.getPhone());
        if (m28907a != null) {
            int i2 = C55792.f19255a[m28907a.ordinal()];
            i = 0;
            if (i2 != 1) {
                i = i2 != 2 ? i2 != 3 ? DialogSelectSingleChoiceBase.f27212a : 2 : 1;
            }
        }
        PopupManager.get().m28209a(context, new DialogSelectSingleChoiceRadioBtnsWithSubtitle(Activities.getString(2131886168), Activities.getString(2131886169), new String[]{string, m27697a, m27697a2}, i, new DialogSelectSingleChoiceBase.SingleChoiceListener() { // from class: com.callapp.contacts.action.local.ChangePreferredSimAction.1
            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            /* renamed from: a */
            public final void mo27951a(int i3) {
            }

            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            /* renamed from: b */
            public final void mo26631b(int i3) {
                SimManager.SimId m28161a = SimManager.m28161a(i3);
                if (m28161a != m28907a) {
                    PreferredSimManager.m28906a(contactData.getDeviceId(), contactData.getPhone(), m28161a);
                }
            }
        }));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
