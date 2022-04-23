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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.action.local.NoteAction$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/NoteAction$2.class */
    public static final class AnonymousClass2 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f10531a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContactData f10532b;

        AnonymousClass2(Context context, ContactData contactData) {
            this.f10531a = context;
            this.f10532b = contactData;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            PopupManager.get().a(this.f10531a, new ResultPopup() { // from class: com.callapp.contacts.action.local.NoteAction.2.1
                @Override // com.callapp.contacts.manager.popup.ResultPopup
                public final void a(Activity activity) {
                    Intent intent = new Intent(activity, AddNoteActivity.class);
                    intent.putExtra(Constants.EXTRA_CONTACT_ID, AnonymousClass2.this.f10532b.getId());
                    intent.putExtra("note", NoteLoader.a(AnonymousClass2.this.f10532b.getDeviceId()));
                    a(activity, intent);
                }

                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                    if (i2 == -1) {
                        final String stringExtra = intent.getStringExtra("note");
                        DeviceData deviceData = AnonymousClass2.this.f10532b.getDeviceData();
                        String a2 = NoteLoader.a(deviceData.getNote());
                        deviceData.setNote(NoteLoader.a(a2 + "@@@" + stringExtra));
                        AnonymousClass2.this.f10532b.fireChange(ContactField.note);
                        new Task() { // from class: com.callapp.contacts.action.local.NoteAction.2.1.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                NoteLoader.a(AnonymousClass2.this.f10532b.getDeviceId(), stringExtra, -1);
                            }
                        }.execute();
                    }
                    activity.finish();
                }
            }, 0);
        }
    }

    /* renamed from: com.callapp.contacts.action.local.NoteAction$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/NoteAction$3.class */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10536a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10536a = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10536a[Action.ContextType.NOTES_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, ContactData contactData) {
        new AnonymousClass2(context, contactData).execute();
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = AnonymousClass3.f10536a[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Note action", Constants.CLICK);
        if (!contactData.isContactInDevice()) {
            PopupManager.get().a(context, new NoDeviceContactPopup(contactData) { // from class: com.callapp.contacts.action.local.NoteAction.1
                @Override // com.callapp.contacts.popup.contact.NoDeviceContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                public final void a(long j) {
                    super.a(j);
                    this.f15424c.assertDeviceDataExist();
                    NoteAction.c(context, this.f15424c);
                }
            });
        } else {
            c(context, contactData);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887324);
    }
}
