package com.callapp.contacts.activity.contact.cards;

import android.util.Patterns;
import android.view.View;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.loader.YouTubeLoader;
import com.callapp.contacts.loader.device.UserProfileLoader;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.DialogDateAndTime;
import com.callapp.contacts.popup.contact.DialogEditText;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard.class */
public class MyPersonalInfoCard extends SimpleExpandableCard<SimpleCardListObject> {
    private final List<SimpleCardListObject> allData = new ArrayList();
    private final List<SectionData<List<SimpleCardListObject>>> sectionsDataHandlers = Arrays.asList(new EmailsDataHandler(this, 2131100140, 2131099784), new BirthDateDataHandler(this, 2131100140, 2131099784), new AddressDataHandler(this, 2131100140, 2131099784), new WebSiteDataHandler(this, 2131100140, 2131099784));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler.class */
    public class AddressDataHandler extends SectionDataSingleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AddressDataHandler(C18073b c18073b, int i, int i2) {
            super(c18073b, i, i2);
            MyPersonalInfoCard.this = r7;
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        /* renamed from: a */
        protected final void mo31174a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.addresses) || set.contains(ContactField.newContact)) {
                JSONAddress address = contactData.getAddress();
                String str = null;
                if (address != null) {
                    str = address.getFullAddress();
                }
                m31176a(str, 2131887271, 2131231433, new SectionData<List<SimpleCardListObject>>.EditRowClickListener(2131887271, str, Activities.getString(2131887437), 112) { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.AddressDataHandler.1
                    @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData.EditRowClickListener
                    DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener() {
                        return new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.AddressDataHandler.1.1
                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            /* renamed from: a */
                            public final String mo27336a(String str2) {
                                return null;
                            }

                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            /* renamed from: a */
                            public final void mo27338a(int i, String str2, boolean z) {
                                UserProfileManager.get().setUserAddress(str2);
                                UserProfileLoader.m28832f(MyPersonalInfoCard.this.presentersContainer.getContact());
                            }
                        };
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler.class */
    public class BirthDateDataHandler extends SectionDataSingleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private BirthDateDataHandler(C18073b c18073b, int i, int i2) {
            super(c18073b, i, i2);
            MyPersonalInfoCard.this = r7;
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        /* renamed from: a */
        protected final void mo31174a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.birthday) || set.contains(ContactField.newContact)) {
                final JSONDate birthday = contactData.getBirthday();
                m31176a(birthday != null ? DateUtils.m27133a(birthday.toCalendar().getTimeInMillis(), true).toString() : null, 2131887272, 2131231473, new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.BirthDateDataHandler.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view) {
                        final Calendar calendar = Calendar.getInstance();
                        JSONDate jSONDate = birthday;
                        if (jSONDate != null) {
                            calendar.setTime(jSONDate.toCalendar().getTime());
                        }
                        DialogDateAndTime dialogDateAndTime = new DialogDateAndTime(calendar, new DialogDateAndTime.IDateAndTimeDialogListener() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.BirthDateDataHandler.1.1
                            @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                            /* renamed from: a */
                            public final void mo27973a() {
                            }

                            @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                            /* renamed from: a */
                            public final void mo27972a(long j) {
                                calendar.setTimeInMillis(j);
                                UserProfileManager.get().setBirthdate(new JSONDate(calendar.getTime()));
                                UserProfileLoader.m28833e(MyPersonalInfoCard.this.presentersContainer.getContact());
                            }
                        });
                        dialogDateAndTime.f27061a = 0;
                        dialogDateAndTime.setAllowToggleState(false);
                        dialogDateAndTime.setMinDate(null);
                        dialogDateAndTime.setMaxDate(Long.valueOf(System.currentTimeMillis()));
                        PopupManager.get().m28209a(MyPersonalInfoCard.this.presentersContainer.getRealContext(), dialogDateAndTime);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler.class */
    public class EmailsDataHandler extends SectionData<List<SimpleCardListObject>> {

        /* renamed from: e */
        private DefaultInterfaceImplUtils.ClickListener f21145e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private EmailsDataHandler(C18073b c18073b, int i, int i2) {
            super(c18073b, new ArrayList(4), i, i2);
            MyPersonalInfoCard.this = r8;
            this.f21145e = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    PopupManager.get().m28209a(MyPersonalInfoCard.this.presentersContainer.getRealContext(), new DialogEditText(2131887273, null, Activities.getString(2131887274), 32, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.2.1
                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        /* renamed from: a */
                        public final String mo27336a(String str) {
                            if (JSONEmail.isValidEmail(str)) {
                                return null;
                            }
                            return Activities.getString(2131887275);
                        }

                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        /* renamed from: a */
                        public final void mo27338a(int i3, String str, boolean z) {
                            if (UserProfileManager.get().m28461a(str)) {
                                UserProfileLoader.m28838a(MyPersonalInfoCard.this.presentersContainer.getContact());
                            }
                        }
                    }));
                }
            };
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        /* renamed from: a */
        public final void mo31174a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.emails) || set.contains(ContactField.newContact)) {
                synchronized (getData()) {
                    m31180a();
                    Collection<JSONEmail> visibleEmails = contactData.getVisibleEmails();
                    if (CollectionUtils.m26068b(visibleEmails)) {
                        for (JSONEmail jSONEmail : visibleEmails) {
                            String email = jSONEmail.getEmail();
                            getData().add(m31178a(email, 2131231645, new SectionData<List<SimpleCardListObject>>.EditRowClickListener(2131887273, email, Activities.getString(2131887274), 32) { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.1
                                @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData.EditRowClickListener
                                DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener() {
                                    return new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.1.1
                                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                                        /* renamed from: a */
                                        public final String mo27336a(String str) {
                                            if (!StringUtils.m26059a((CharSequence) str) && !JSONEmail.isValidEmail(str)) {
                                                return Activities.getString(2131887275);
                                            }
                                            return null;
                                        }

                                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                                        /* renamed from: a */
                                        public final void mo27338a(int i, String str, boolean z) {
                                            boolean z2;
                                            UserProfileManager userProfileManager = UserProfileManager.get();
                                            String startText = getStartText();
                                            if (StringUtils.m26059a((CharSequence) startText)) {
                                                z2 = false;
                                            } else {
                                                z2 = PrefsUtils.m28172b(Prefs.f26273ax, startText) | UserProfileManager.m28466a(Prefs.f26226aC, startText);
                                                if (z2) {
                                                    userProfileManager.m28465a(ContactField.emails);
                                                }
                                            }
                                            boolean m28461a = UserProfileManager.get().m28461a(str);
                                            JSONEmail jSONEmail2 = new JSONEmail(getStartText(), 3);
                                            MyPersonalInfoCard.this.presentersContainer.getContact().getUserProfileData().removeEmail(jSONEmail2);
                                            MyPersonalInfoCard.this.presentersContainer.getContact().removeEmail(jSONEmail2);
                                            UserProfileLoader.m28838a(MyPersonalInfoCard.this.presentersContainer.getContact());
                                            if (!z2 || m28461a) {
                                                return;
                                            }
                                            MyPersonalInfoCard.this.presentersContainer.getContact().fireChange(ContactField.emails);
                                        }
                                    };
                                }
                            }));
                        }
                        int size = getData().size();
                        UserProfileManager.get();
                        if (size < UserProfileManager.m28459b()) {
                            getData().add(m31179a(this.f21145e));
                        }
                    } else {
                        getData().add(m31177b(Activities.getString(2131887273), 2131231645, this.f21145e));
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData.class */
    public abstract class SectionData<T extends List> {

        /* renamed from: a */
        private final T f21150a;

        /* renamed from: b */
        final int f21151b;

        /* renamed from: c */
        final int f21152c;

        /* renamed from: e */
        private final C18073b f21154e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener.class */
        public abstract class EditRowClickListener extends DefaultInterfaceImplUtils.ClickListener {

            /* renamed from: a */
            private final int f21155a;

            /* renamed from: c */
            private final String f21157c;

            /* renamed from: d */
            private final String f21158d;

            /* renamed from: e */
            private final int f21159e;

            EditRowClickListener(int i, String str, String str2, int i2) {
                SectionData.this = r4;
                this.f21155a = i;
                this.f21157c = str;
                this.f21158d = str2;
                this.f21159e = i2;
            }

            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                PopupManager.get().m28209a(MyPersonalInfoCard.this.presentersContainer.getRealContext(), new DialogEditText(this.f21155a, this.f21157c, this.f21158d, this.f21159e, getListener()));
            }

            abstract DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener();

            String getStartText() {
                return this.f21157c;
            }
        }

        SectionData(C18073b c18073b, T t, int i, int i2) {
            MyPersonalInfoCard.this = r4;
            this.f21150a = t;
            this.f21151b = i;
            this.f21152c = i2;
            this.f21154e = c18073b;
        }

        /* renamed from: a */
        final SimpleCardListObject m31179a(DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            builder.f21512I = (int) Activities.m27699a(36.0f);
            builder.f21521d = Activities.getString(2131887270);
            builder.f21511H = true;
            builder.f21522e = 2131951871;
            builder.f21523f = 2131099784;
            SimpleCardListObject.Builder m31089a = builder.m31089a(2131231645);
            m31089a.f21540w = 4;
            m31089a.f21519b = clickListener;
            m31089a.f21529l = 2131231417;
            m31089a.f21532o = this.f21152c;
            m31089a.f21537t = clickListener;
            return m31089a.m31087a(this.f21154e);
        }

        /* renamed from: a */
        final SimpleCardListObject m31178a(String str, int i, DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            builder.f21521d = str;
            builder.f21511H = false;
            builder.f21522e = 2131951857;
            SimpleCardListObject.Builder m31089a = builder.m31089a(i);
            m31089a.f21540w = mo31175b() ? 0 : 4;
            m31089a.f21527j = this.f21151b;
            m31089a.f21529l = 2131231642;
            m31089a.f21532o = this.f21152c;
            m31089a.f21519b = clickListener;
            m31089a.f21537t = clickListener;
            return m31089a.m31087a(this.f21154e);
        }

        /* renamed from: a */
        public final void m31180a() {
            synchronized (this.f21150a) {
                this.f21150a.clear();
            }
        }

        /* renamed from: a */
        protected abstract void mo31174a(ContactData contactData, Set<ContactField> set);

        /* renamed from: b */
        final SimpleCardListObject m31177b(String str, int i, DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            builder.f21521d = str;
            builder.f21511H = false;
            builder.f21522e = 2131951871;
            builder.f21523f = 2131099784;
            SimpleCardListObject.Builder m31089a = builder.m31089a(i);
            m31089a.f21527j = this.f21151b;
            m31089a.f21529l = 2131231417;
            m31089a.f21532o = this.f21152c;
            m31089a.f21519b = clickListener;
            m31089a.f21537t = clickListener;
            return m31089a.m31087a(this.f21154e);
        }

        /* renamed from: b */
        public boolean mo31175b() {
            return getData().size() == 0;
        }

        public T getData() {
            return this.f21150a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem.class */
    public abstract class SectionDataSingleItem extends SectionData<List<SimpleCardListObject>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        SectionDataSingleItem(C18073b c18073b, int i, int i2) {
            super(c18073b, new ArrayList(1), i, i2);
            MyPersonalInfoCard.this = r8;
        }

        /* renamed from: a */
        final void m31176a(String str, int i, int i2, DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject a = str != null ? m31178a(str, i2, clickListener) : m31177b(Activities.getString(i), i2, clickListener);
            if (getData().size() == 0) {
                getData().add(a);
            } else {
                getData().set(0, a);
            }
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        /* renamed from: b */
        public final boolean mo31175b() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler.class */
    public class WebSiteDataHandler extends SectionDataSingleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        WebSiteDataHandler(C18073b c18073b, int i, int i2) {
            super(c18073b, i, i2);
            MyPersonalInfoCard.this = r7;
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        /* renamed from: a */
        protected final void mo31174a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.websites) || set.contains(ContactField.newContact)) {
                Collection<JSONWebsite> websites = contactData.getWebsites();
                String str = null;
                if (CollectionUtils.m26068b(websites)) {
                    Iterator<JSONWebsite> it2 = websites.iterator();
                    while (true) {
                        str = null;
                        if (!it2.hasNext()) {
                            break;
                        }
                        JSONWebsite next = it2.next();
                        if (StringUtils.m26045b((CharSequence) next.getWebsiteUrl()) && !YouTubeLoader.m28874a(next.getWebsiteUrl())) {
                            str = next.getWebsiteUrl();
                            break;
                        }
                    }
                }
                m31176a(str, 2131887276, 2131231739, new SectionData<List<SimpleCardListObject>>.EditRowClickListener(2131887276, str, Activities.getString(2131887277), 160) { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.WebSiteDataHandler.1
                    @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData.EditRowClickListener
                    DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener() {
                        return new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.WebSiteDataHandler.1.1
                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            /* renamed from: a */
                            public final String mo27336a(String str2) {
                                if (!StringUtils.m26059a((CharSequence) str2) && !Patterns.WEB_URL.matcher(str2).matches()) {
                                    return Activities.getString(2131887278);
                                }
                                return null;
                            }

                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            /* renamed from: a */
                            public final void mo27338a(int i, String str2, boolean z) {
                                boolean z2;
                                UserProfileManager userProfileManager = UserProfileManager.get();
                                String startText = getStartText();
                                boolean z3 = false;
                                if (StringUtils.m26059a((CharSequence) startText)) {
                                    z2 = false;
                                } else {
                                    boolean m28172b = PrefsUtils.m28172b(Prefs.f26272aw, startText) | UserProfileManager.m28466a(Prefs.f26227aD, startText);
                                    z2 = m28172b;
                                    if (m28172b) {
                                        userProfileManager.m28465a(ContactField.websites);
                                        z2 = m28172b;
                                    }
                                }
                                UserProfileManager userProfileManager2 = UserProfileManager.get();
                                if (!StringUtils.m26059a((CharSequence) str2)) {
                                    boolean m28174a = PrefsUtils.m28174a(Prefs.f26272aw, str2);
                                    z3 = m28174a;
                                    if (m28174a) {
                                        userProfileManager2.m28465a(ContactField.websites);
                                        z3 = m28174a;
                                    }
                                }
                                JSONWebsite jSONWebsite = new JSONWebsite(getStartText(), 1, true);
                                MyPersonalInfoCard.this.presentersContainer.getContact().getUserProfileData().removeWebsite(jSONWebsite);
                                MyPersonalInfoCard.this.presentersContainer.getContact().removeWebsite(jSONWebsite);
                                UserProfileLoader.m28836b(MyPersonalInfoCard.this.presentersContainer.getContact());
                                if (!z2 || z3) {
                                    return;
                                }
                                MyPersonalInfoCard.this.presentersContainer.getContact().fireChange(ContactField.websites);
                            }
                        };
                    }
                });
            }
        }
    }

    public MyPersonalInfoCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    private void updateCard(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            for (SectionData<List<SimpleCardListObject>> sectionData : this.sectionsDataHandlers) {
                sectionData.m31180a();
            }
        }
        this.allData.clear();
        for (SectionData<List<SimpleCardListObject>> sectionData2 : this.sectionsDataHandlers) {
            sectionData2.mo31174a(contactData, set);
            this.allData.addAll(sectionData2.getData());
        }
        updateCardData((Collection) this.allData, true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public boolean autoExpand() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887269);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.emails, ContactField.websites, ContactField.birthday, ContactField.addresses, ContactField.newContact);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 30;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        synchronized (this.allData) {
            if (!this.presentersContainer.mo30920a(contactData) && !contactData.isVoiceMail()) {
                updateCard(contactData, set);
                showCard(false);
                return;
            }
            hideCard();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
