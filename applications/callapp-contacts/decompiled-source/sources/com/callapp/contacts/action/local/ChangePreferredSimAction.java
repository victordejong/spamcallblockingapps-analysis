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

    /* renamed from: com.callapp.contacts.action.local.ChangePreferredSimAction$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ChangePreferredSimAction$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10487a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f10488b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:4:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:20:0x0028). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10488b = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            int[] iArr2 = new int[SimManager.SimId.values().length];
            f10487a = iArr2;
            try {
                iArr2[SimManager.SimId.ASK.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10487a[SimManager.SimId.SIM_1.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10487a[SimManager.SimId.SIM_2.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && SimManager.get().isDualSimAvailable() && AnonymousClass2.f10488b[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        int i;
        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "ClickSelectSim", Constants.CLICK);
        SimManager.DualSim dualSimOperators = Singletons.get().getSimManager().getDualSimOperators();
        String string = Activities.getString(2131886758);
        r18 = 0;
        String a2 = Activities.a(2131886760, dualSimOperators.getOperator1());
        String a3 = Activities.a(2131886761, dualSimOperators.getOperator2());
        int i2 = DialogSelectSingleChoiceBase.f15504a;
        final SimManager.SimId a4 = PreferredSimManager.a(contactData.getDeviceId(), contactData.getPhone());
        if (!(a4 == null || (i = AnonymousClass2.f10487a[a4.ordinal()]) == 1)) {
            i2 = i != 2 ? i != 3 ? DialogSelectSingleChoiceBase.f15504a : 2 : 1;
        }
        PopupManager.get().a(context, new DialogSelectSingleChoiceRadioBtnsWithSubtitle(Activities.getString(2131886168), Activities.getString(2131886169), new String[]{string, a2, a3}, i2, new DialogSelectSingleChoiceBase.SingleChoiceListener() { // from class: com.callapp.contacts.action.local.ChangePreferredSimAction.1
            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            public final void a(int i3) {
            }

            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            public final void b(int i3) {
                SimManager.SimId a5 = SimManager.a(i3);
                if (a5 != a4) {
                    PreferredSimManager.a(contactData.getDeviceId(), contactData.getPhone(), a5);
                }
            }
        }));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
