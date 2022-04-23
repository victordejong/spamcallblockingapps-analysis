package com.callapp.contacts.activity.contact.list;

import android.content.Context;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoice;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.util.Activities;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/activity/contact/list/CallLogSorter;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/CallLogSorter.class */
public final class CallLogSorter {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f12505a = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;", "", "()V", "openSortByDialog", "", "context", "Landroid/content/Context;", "onSortAction", "Lcom/callapp/contacts/activity/contact/list/OnSortAction;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/CallLogSorter$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a(Context context, final OnSortAction onSortAction) {
            p.d(context, "context");
            p.d(onSortAction, "onSortAction");
            final ArrayList d2 = n.d(CallLogSortType.SORTED_BY_DATE, CallLogSortType.SORTED_BY_FREQ);
            ArrayList<CallLogSortType> arrayList = d2;
            ArrayList arrayList2 = new ArrayList(n.a((Iterable) arrayList, 10));
            for (CallLogSortType callLogSortType : arrayList) {
                arrayList2.add(callLogSortType.getTitle());
            }
            ArrayList arrayList3 = arrayList2;
            int indexOf = d2.indexOf(Prefs.db.get());
            String string = Activities.getString(2131886389);
            Object[] array = arrayList3.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            DialogSelectSingleChoice dialogSelectSingleChoice = new DialogSelectSingleChoice(string, array, indexOf, new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.activity.contact.list.CallLogSorter$Companion$openSortByDialog$dialog$1
                @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
                public final void b(int i) {
                    if (i != 0) {
                        if (i == 1 && ((CallLogSortType) Prefs.db.get()) != ((CallLogSortType) d2.get(1))) {
                            Prefs.db.set(d2.get(1));
                            onSortAction.a();
                        }
                    } else if (((CallLogSortType) Prefs.db.get()) != ((CallLogSortType) d2.get(0))) {
                        Prefs.db.set(d2.get(0));
                        onSortAction.a();
                    }
                }
            });
            dialogSelectSingleChoice.setCancelable(true);
            PopupManager.get().a(context, dialogSelectSingleChoice);
        }
    }
}
