package com.callapp.contacts.activity.contact.details.presenter;

import android.os.Build;
import com.callapp.contacts.activity.contact.details.ContactAction;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.e.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/CallFabUtils.class */
public final class CallFabUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f12322a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final List<ContactAction> f12323b = n.b((Object[]) new ContactAction[]{ContactAction.WHATSAPP, ContactAction.TELEGRAM, ContactAction.DUO, ContactAction.VIBER, ContactAction.HANGOUTS, ContactAction.SKYPE, ContactAction.WECHAT, ContactAction.ALLO, ContactAction.SIGNAL});

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\n\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;", "", "()V", "instantMessagingApps", "", "Lcom/callapp/contacts/activity/contact/details/ContactAction;", "getCallFabActions", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "getCurrentIm", "getCurrentPromotion", "isAppInstalled", "", "contactAction", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static boolean a(ContactAction contactAction) {
            Singletons.SenderType type = contactAction.getType();
            if (type == null) {
                return false;
            }
            Singletons.get();
            ImSender a2 = Singletons.a(type);
            p.b(a2, "Singletons.get().getImSenderHelper(it)");
            return a2.isAppInstalled();
        }

        private static ContactAction b(ContactData contactData) {
            List c2 = n.c(contactData.isIncognito() ? ContactAction.UN_INCOGNITO : ContactAction.INCOGNITO);
            if (23 <= Build.VERSION.SDK_INT) {
                c2.add(ContactAction.PVR);
            }
            if (!contactData.isInstalledApp() && CallAppRemoteConfigManager.get().c("ReferAndEarnFeature")) {
                c2.add(ContactAction.REFER_AND_EARN);
            }
            return c2.size() == 1 ? (ContactAction) c2.get(0) : (ContactAction) c2.get(c.f36657a.a(0, c2.size()));
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
            if (a(r0) == false) goto L_0x0020;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final com.callapp.contacts.activity.contact.details.ContactAction getCurrentIm() {
            /*
                r3 = this;
                com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.contact.details.ContactAction> r0 = com.callapp.contacts.manager.preferences.Prefs.hl
                java.lang.Object r0 = r0.get()
                com.callapp.contacts.activity.contact.details.ContactAction r0 = (com.callapp.contacts.activity.contact.details.ContactAction) r0
                r4 = r0
                r0 = r4
                com.callapp.contacts.activity.contact.details.ContactAction r1 = com.callapp.contacts.activity.contact.details.ContactAction.UNKNOWN
                if (r0 == r1) goto L_0x0020
                r0 = r4
                java.lang.String r1 = "defaultIm"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r4
                r5 = r0
                r0 = r4
                boolean r0 = a(r0)
                if (r0 != 0) goto L_0x0067
            L_0x0020:
                java.util.List r0 = com.callapp.contacts.activity.contact.details.presenter.CallFabUtils.a()
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                java.util.Iterator r0 = r0.iterator()
                r6 = r0
            L_0x002c:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0051
                r0 = r6
                java.lang.Object r0 = r0.next()
                r5 = r0
                r0 = r5
                com.callapp.contacts.activity.contact.details.ContactAction r0 = (com.callapp.contacts.activity.contact.details.ContactAction) r0
                r7 = r0
                com.callapp.contacts.activity.contact.details.presenter.CallFabUtils$Companion r0 = com.callapp.contacts.activity.contact.details.presenter.CallFabUtils.f12322a
                r4 = r0
                r0 = r7
                boolean r0 = a(r0)
                if (r0 == 0) goto L_0x002c
                goto L_0x0053
            L_0x0051:
                r0 = 0
                r5 = r0
            L_0x0053:
                r0 = r5
                com.callapp.contacts.activity.contact.details.ContactAction r0 = (com.callapp.contacts.activity.contact.details.ContactAction) r0
                r4 = r0
                r0 = r4
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L_0x0067
                com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.contact.details.ContactAction> r0 = com.callapp.contacts.manager.preferences.Prefs.hl
                r1 = r4
                r0.set(r1)
                r0 = r4
                r5 = r0
            L_0x0067:
                r0 = r5
                com.callapp.contacts.activity.contact.details.ContactAction r1 = com.callapp.contacts.activity.contact.details.ContactAction.UNKNOWN
                if (r0 != r1) goto L_0x0070
                r0 = 0
                return r0
            L_0x0070:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.presenter.CallFabUtils.Companion.getCurrentIm():com.callapp.contacts.activity.contact.details.ContactAction");
        }

        public final List<ContactAction> a(ContactData contactData) {
            List<ContactAction> c2 = n.c(ContactAction.SMS_MESSAGE);
            ContactAction currentIm = getCurrentIm();
            if (currentIm != null) {
                c2.add(currentIm);
            }
            if (contactData == null || contactData.isContactInDevice()) {
                c2.add(ContactAction.NOTE);
                if (contactData != null) {
                    Companion companion = CallFabUtils.f12322a;
                    c2.add(b(contactData));
                }
                return c2;
            } else if (contactData.isBusiness()) {
                Companion companion2 = CallFabUtils.f12322a;
                c2.add(b(contactData));
                if (contactData.isSpammer()) {
                    c2.add(ContactAction.UN_SPAM);
                } else {
                    c2.add(ContactAction.SPAM);
                }
                return c2;
            } else {
                c2.add(ContactAction.ADD_CONTACT);
                Companion companion3 = CallFabUtils.f12322a;
                c2.add(b(contactData));
                return c2;
            }
        }
    }
}
