package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.details.AddNoteActivity;
import com.callapp.contacts.loader.device.NoteLoader;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DeviceData;
import com.callapp.contacts.popup.contact.NoDeviceContactPopup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/NoteAction.class */
public class NoteAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.NoteAction$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/NoteAction$2.class */
    public static final class C56062 extends Task {

        /* renamed from: a */
        final /* synthetic */ Context f19302a;

        /* renamed from: b */
        final /* synthetic */ ContactData f19303b;

        C56062(Context context, ContactData contactData) {
            this.f19302a = context;
            this.f19303b = contactData;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            PopupManager.get().m28206a(this.f19302a, new ResultPopup() { // from class: com.callapp.contacts.action.local.NoteAction.2.1
                @Override // com.callapp.contacts.manager.popup.ResultPopup
                /* renamed from: a */
                public final void mo27637a(Activity activity) {
                    Intent intent = new Intent(activity, AddNoteActivity.class);
                    intent.putExtra(Constants.EXTRA_CONTACT_ID, C56062.this.f19303b.getId());
                    intent.putExtra("note", NoteLoader.m28842a(C56062.this.f19303b.getDeviceId()));
                    m28185a(activity, intent);
                }

                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                    if (i2 == -1) {
                        final String stringExtra = intent.getStringExtra("note");
                        DeviceData deviceData = C56062.this.f19303b.getDeviceData();
                        String m28839a = NoteLoader.m28839a(deviceData.getNote());
                        deviceData.setNote(NoteLoader.m28840a(m28839a + "@@@" + stringExtra));
                        C56062.this.f19303b.fireChange(ContactField.note);
                        new Task() { // from class: com.callapp.contacts.action.local.NoteAction.2.1.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                NoteLoader.m28841a(C56062.this.f19303b.getDeviceId(), stringExtra, -1);
                            }
                        }.execute();
                    }
                    activity.finish();
                }
            }, 0);
        }
    }

    /* renamed from: com.callapp.contacts.action.local.NoteAction$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/NoteAction$3.class */
    static /* synthetic */ class C56093 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19307a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19307a = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19307a[Action.ContextType.NOTES_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: c */
    public static void m31822c(Context context, ContactData contactData) {
        new C56062(context, contactData).execute();
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = C56093.f19307a[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(final Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Note action", Constants.CLICK);
        if (!contactData.isContactInDevice()) {
            PopupManager.get().m28207a(context, new NoDeviceContactPopup(contactData) { // from class: com.callapp.contacts.action.local.NoteAction.1
                @Override // com.callapp.contacts.popup.contact.NoDeviceContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                /* renamed from: a */
                public final void mo27942a(long j) {
                    super.mo27942a(j);
                    this.f27007c.assertDeviceDataExist();
                    NoteAction.m31822c(context, this.f27007c);
                }
            });
        } else {
            m31822c(context, contactData);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887324);
    }
}
