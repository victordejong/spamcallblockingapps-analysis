package com.callapp.contacts.activity.contact.details.presenter;

import android.os.Build;
import com.callapp.contacts.activity.contact.details.ContactAction;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p528e.AbstractC18354c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;", "", "()V", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/CallFabUtils.class */
public final class CallFabUtils {

    /* renamed from: a */
    public static final Companion f22134a = new Companion(null);

    /* renamed from: b */
    private static final List<ContactAction> f22135b = C18282n.m4167b((Object[]) new ContactAction[]{ContactAction.WHATSAPP, ContactAction.TELEGRAM, ContactAction.DUO, ContactAction.VIBER, ContactAction.HANGOUTS, ContactAction.SKYPE, ContactAction.WECHAT, ContactAction.ALLO, ContactAction.SIGNAL});

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\n\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;", "", "()V", "instantMessagingApps", "", "Lcom/callapp/contacts/activity/contact/details/ContactAction;", "getCallFabActions", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "getCurrentIm", "getCurrentPromotion", "isAppInstalled", "", "contactAction", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static boolean m30838a(ContactAction contactAction) {
            Singletons.SenderType type = contactAction.getType();
            if (type != null) {
                Singletons.get();
                ImSender m28494a = Singletons.m28494a(type);
                C18524p.m3843b(m28494a, "Singletons.get().getImSenderHelper(it)");
                return m28494a.isAppInstalled();
            }
            return false;
        }

        /* renamed from: b */
        private static ContactAction m30836b(ContactData contactData) {
            List c = C18282n.m4166c(contactData.isIncognito() ? ContactAction.UN_INCOGNITO : ContactAction.INCOGNITO);
            if (23 <= Build.VERSION.SDK_INT) {
                c.add(ContactAction.PVR);
            }
            if (!contactData.isInstalledApp() && CallAppRemoteConfigManager.get().m28698c("ReferAndEarnFeature")) {
                c.add(ContactAction.REFER_AND_EARN);
            }
            return c.size() == 1 ? (ContactAction) c.get(0) : (ContactAction) c.get(AbstractC18354c.f63450a.mo4063a(0, c.size()));
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
            if (m30838a(r0) == false) goto L6;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final com.callapp.contacts.activity.contact.details.ContactAction getCurrentIm() {
            /*
                r3 = this;
                com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.contact.details.ContactAction> r0 = com.callapp.contacts.manager.preferences.Prefs.f26632hl
                java.lang.Object r0 = r0.get()
                com.callapp.contacts.activity.contact.details.ContactAction r0 = (com.callapp.contacts.activity.contact.details.ContactAction) r0
                r4 = r0
                r0 = r4
                com.callapp.contacts.activity.contact.details.ContactAction r1 = com.callapp.contacts.activity.contact.details.ContactAction.UNKNOWN
                if (r0 == r1) goto L20
                r0 = r4
                java.lang.String r1 = "defaultIm"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r4
                r5 = r0
                r0 = r4
                boolean r0 = m30838a(r0)
                if (r0 != 0) goto L67
            L20:
                java.util.List r0 = com.callapp.contacts.activity.contact.details.presenter.CallFabUtils.m30839a()
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                java.util.Iterator r0 = r0.iterator()
                r6 = r0
            L2c:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L51
                r0 = r6
                java.lang.Object r0 = r0.next()
                r5 = r0
                r0 = r5
                com.callapp.contacts.activity.contact.details.ContactAction r0 = (com.callapp.contacts.activity.contact.details.ContactAction) r0
                r7 = r0
                com.callapp.contacts.activity.contact.details.presenter.CallFabUtils$Companion r0 = com.callapp.contacts.activity.contact.details.presenter.CallFabUtils.f22134a
                r4 = r0
                r0 = r7
                boolean r0 = m30838a(r0)
                if (r0 == 0) goto L2c
                goto L53
            L51:
                r0 = 0
                r5 = r0
            L53:
                r0 = r5
                com.callapp.contacts.activity.contact.details.ContactAction r0 = (com.callapp.contacts.activity.contact.details.ContactAction) r0
                r4 = r0
                r0 = r4
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L67
                com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.contact.details.ContactAction> r0 = com.callapp.contacts.manager.preferences.Prefs.f26632hl
                r1 = r4
                r0.set(r1)
                r0 = r4
                r5 = r0
            L67:
                r0 = r5
                com.callapp.contacts.activity.contact.details.ContactAction r1 = com.callapp.contacts.activity.contact.details.ContactAction.UNKNOWN
                if (r0 != r1) goto L70
                r0 = 0
                return r0
            L70:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.presenter.CallFabUtils.Companion.getCurrentIm():com.callapp.contacts.activity.contact.details.ContactAction");
        }

        /* renamed from: a */
        public final List<ContactAction> m30837a(ContactData contactData) {
            List<ContactAction> c = C18282n.m4166c(ContactAction.SMS_MESSAGE);
            ContactAction currentIm = getCurrentIm();
            if (currentIm != null) {
                c.add(currentIm);
            }
            if (contactData == null || contactData.isContactInDevice()) {
                c.add(ContactAction.NOTE);
                if (contactData != null) {
                    Companion companion = CallFabUtils.f22134a;
                    c.add(m30836b(contactData));
                }
                return c;
            } else if (!contactData.isBusiness()) {
                c.add(ContactAction.ADD_CONTACT);
                Companion companion2 = CallFabUtils.f22134a;
                c.add(m30836b(contactData));
                return c;
            } else {
                Companion companion3 = CallFabUtils.f22134a;
                c.add(m30836b(contactData));
                if (contactData.isSpammer()) {
                    c.add(ContactAction.UN_SPAM);
                } else {
                    c.add(ContactAction.SPAM);
                }
                return c;
            }
        }
    }
}
