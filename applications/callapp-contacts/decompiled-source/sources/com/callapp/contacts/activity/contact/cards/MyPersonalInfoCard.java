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
import it.gmariotti.cardslib.library.a.b;
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

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler.class */
    class AddressDataHandler extends SectionDataSingleItem {
        AddressDataHandler(b bVar, int i, int i2) {
            super(bVar, i, i2);
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        protected final void a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.addresses) || set.contains(ContactField.newContact)) {
                JSONAddress address = contactData.getAddress();
                String str = null;
                if (address != null) {
                    str = address.getFullAddress();
                }
                a(str, 2131887271, 2131231433, new SectionData<List<SimpleCardListObject>>.EditRowClickListener(2131887271, str, Activities.getString(2131887437), 112) { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.AddressDataHandler.1
                    @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData.EditRowClickListener
                    DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener() {
                        return new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.AddressDataHandler.1.1
                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            public final String a(String str2) {
                                return null;
                            }

                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            public final void a(int i, String str2, boolean z) {
                                UserProfileManager.get().setUserAddress(str2);
                                UserProfileLoader.f(MyPersonalInfoCard.this.presentersContainer.getContact());
                            }
                        };
                    }
                });
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler.class */
    class BirthDateDataHandler extends SectionDataSingleItem {
        private BirthDateDataHandler(b bVar, int i, int i2) {
            super(bVar, i, i2);
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        protected final void a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.birthday) || set.contains(ContactField.newContact)) {
                final JSONDate birthday = contactData.getBirthday();
                a(birthday != null ? DateUtils.a(birthday.toCalendar().getTimeInMillis(), true).toString() : null, 2131887272, 2131231473, new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.BirthDateDataHandler.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view) {
                        final Calendar instance = Calendar.getInstance();
                        JSONDate jSONDate = birthday;
                        if (jSONDate != null) {
                            instance.setTime(jSONDate.toCalendar().getTime());
                        }
                        DialogDateAndTime dialogDateAndTime = new DialogDateAndTime(instance, new DialogDateAndTime.IDateAndTimeDialogListener() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.BirthDateDataHandler.1.1
                            @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                            public final void a() {
                            }

                            @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                            public final void a(long j) {
                                instance.setTimeInMillis(j);
                                UserProfileManager.get().setBirthdate(new JSONDate(instance.getTime()));
                                UserProfileLoader.e(MyPersonalInfoCard.this.presentersContainer.getContact());
                            }
                        });
                        dialogDateAndTime.f15465a = 0;
                        dialogDateAndTime.setAllowToggleState(false);
                        dialogDateAndTime.setMinDate(null);
                        dialogDateAndTime.setMaxDate(Long.valueOf(System.currentTimeMillis()));
                        PopupManager.get().a(MyPersonalInfoCard.this.presentersContainer.getRealContext(), dialogDateAndTime);
                    }
                });
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler.class */
    class EmailsDataHandler extends SectionData<List<SimpleCardListObject>> {
        private DefaultInterfaceImplUtils.ClickListener e;

        private EmailsDataHandler(b bVar, int i, int i2) {
            super(bVar, new ArrayList(4), i, i2);
            this.e = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    PopupManager.get().a(MyPersonalInfoCard.this.presentersContainer.getRealContext(), new DialogEditText(2131887273, null, Activities.getString(2131887274), 32, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.2.1
                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        public final String a(String str) {
                            if (JSONEmail.isValidEmail(str)) {
                                return null;
                            }
                            return Activities.getString(2131887275);
                        }

                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        public final void a(int i3, String str, boolean z) {
                            if (UserProfileManager.get().a(str)) {
                                UserProfileLoader.a(MyPersonalInfoCard.this.presentersContainer.getContact());
                            }
                        }
                    }));
                }
            };
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        public final void a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.emails) || set.contains(ContactField.newContact)) {
                synchronized (getData()) {
                    a();
                    Collection<JSONEmail> visibleEmails = contactData.getVisibleEmails();
                    if (CollectionUtils.b(visibleEmails)) {
                        for (JSONEmail jSONEmail : visibleEmails) {
                            String email = jSONEmail.getEmail();
                            getData().add(a(email, 2131231645, new SectionData<List<SimpleCardListObject>>.EditRowClickListener(2131887273, email, Activities.getString(2131887274), 32) { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.1
                                @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData.EditRowClickListener
                                DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener() {
                                    return new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.EmailsDataHandler.1.1
                                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                                        public final String a(String str) {
                                            if (!StringUtils.a((CharSequence) str) && !JSONEmail.isValidEmail(str)) {
                                                return Activities.getString(2131887275);
                                            }
                                            return null;
                                        }

                                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                                        public final void a(int i, String str, boolean z) {
                                            boolean z2;
                                            UserProfileManager userProfileManager = UserProfileManager.get();
                                            String startText = getStartText();
                                            if (StringUtils.a((CharSequence) startText)) {
                                                z2 = false;
                                            } else {
                                                z2 = PrefsUtils.b(Prefs.ax, startText) | UserProfileManager.a(Prefs.aC, startText);
                                                if (z2) {
                                                    userProfileManager.a(ContactField.emails);
                                                }
                                            }
                                            boolean a2 = UserProfileManager.get().a(str);
                                            JSONEmail jSONEmail2 = new JSONEmail(getStartText(), 3);
                                            MyPersonalInfoCard.this.presentersContainer.getContact().getUserProfileData().removeEmail(jSONEmail2);
                                            MyPersonalInfoCard.this.presentersContainer.getContact().removeEmail(jSONEmail2);
                                            UserProfileLoader.a(MyPersonalInfoCard.this.presentersContainer.getContact());
                                            if (z2 && !a2) {
                                                MyPersonalInfoCard.this.presentersContainer.getContact().fireChange(ContactField.emails);
                                            }
                                        }
                                    };
                                }
                            }));
                        }
                        int size = getData().size();
                        UserProfileManager.get();
                        if (size < UserProfileManager.b()) {
                            getData().add(a(this.e));
                        }
                    } else {
                        getData().add(b(Activities.getString(2131887273), 2131231645, this.e));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData.class */
    public abstract class SectionData<T extends List> {

        /* renamed from: a  reason: collision with root package name */
        private final T f11690a;

        /* renamed from: b  reason: collision with root package name */
        final int f11691b;

        /* renamed from: c  reason: collision with root package name */
        final int f11692c;
        private final b e;

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData$EditRowClickListener.class */
        abstract class EditRowClickListener extends DefaultInterfaceImplUtils.ClickListener {

            /* renamed from: a  reason: collision with root package name */
            private final int f11694a;

            /* renamed from: c  reason: collision with root package name */
            private final String f11696c;

            /* renamed from: d  reason: collision with root package name */
            private final String f11697d;
            private final int e;

            EditRowClickListener(int i, String str, String str2, int i2) {
                this.f11694a = i;
                this.f11696c = str;
                this.f11697d = str2;
                this.e = i2;
            }

            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                PopupManager.get().a(MyPersonalInfoCard.this.presentersContainer.getRealContext(), new DialogEditText(this.f11694a, this.f11696c, this.f11697d, this.e, getListener()));
            }

            abstract DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener();

            String getStartText() {
                return this.f11696c;
            }
        }

        SectionData(b bVar, T t, int i, int i2) {
            this.f11690a = t;
            this.f11691b = i;
            this.f11692c = i2;
            this.e = bVar;
        }

        final SimpleCardListObject a(DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            builder.I = (int) Activities.a(36.0f);
            builder.f11918d = Activities.getString(2131887270);
            builder.H = true;
            builder.e = 2131951871;
            builder.f = 2131099784;
            SimpleCardListObject.Builder a2 = builder.a(2131231645);
            a2.w = 4;
            a2.f11916b = clickListener;
            a2.l = 2131231417;
            a2.o = this.f11692c;
            a2.t = clickListener;
            return a2.a(this.e);
        }

        final SimpleCardListObject a(String str, int i, DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            builder.f11918d = str;
            int i2 = 0;
            builder.H = false;
            builder.e = 2131951857;
            SimpleCardListObject.Builder a2 = builder.a(i);
            if (!b()) {
                i2 = 4;
            }
            a2.w = i2;
            a2.j = this.f11691b;
            a2.l = 2131231642;
            a2.o = this.f11692c;
            a2.f11916b = clickListener;
            a2.t = clickListener;
            return a2.a(this.e);
        }

        public final void a() {
            synchronized (this.f11690a) {
                this.f11690a.clear();
            }
        }

        protected abstract void a(ContactData contactData, Set<ContactField> set);

        final SimpleCardListObject b(String str, int i, DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            builder.f11918d = str;
            builder.H = false;
            builder.e = 2131951871;
            builder.f = 2131099784;
            SimpleCardListObject.Builder a2 = builder.a(i);
            a2.j = this.f11691b;
            a2.l = 2131231417;
            a2.o = this.f11692c;
            a2.f11916b = clickListener;
            a2.t = clickListener;
            return a2.a(this.e);
        }

        public boolean b() {
            return getData().size() == 0;
        }

        public T getData() {
            return this.f11690a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem.class */
    abstract class SectionDataSingleItem extends SectionData<List<SimpleCardListObject>> {
        SectionDataSingleItem(b bVar, int i, int i2) {
            super(bVar, new ArrayList(1), i, i2);
        }

        final void a(String str, int i, int i2, DefaultInterfaceImplUtils.ClickListener clickListener) {
            SimpleCardListObject a2 = str != null ? a(str, i2, clickListener) : b(Activities.getString(i), i2, clickListener);
            if (getData().size() == 0) {
                getData().add(a2);
            } else {
                getData().set(0, a2);
            }
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        public final boolean b() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler.class */
    class WebSiteDataHandler extends SectionDataSingleItem {
        WebSiteDataHandler(b bVar, int i, int i2) {
            super(bVar, i, i2);
        }

        @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData
        protected final void a(ContactData contactData, Set<ContactField> set) {
            if (set.contains(ContactField.websites) || set.contains(ContactField.newContact)) {
                Collection<JSONWebsite> websites = contactData.getWebsites();
                String str = null;
                if (CollectionUtils.b(websites)) {
                    Iterator<JSONWebsite> it2 = websites.iterator();
                    while (true) {
                        str = null;
                        if (!it2.hasNext()) {
                            break;
                        }
                        JSONWebsite next = it2.next();
                        if (StringUtils.b((CharSequence) next.getWebsiteUrl()) && !YouTubeLoader.a(next.getWebsiteUrl())) {
                            str = next.getWebsiteUrl();
                            break;
                        }
                    }
                }
                a(str, 2131887276, 2131231739, new SectionData<List<SimpleCardListObject>>.EditRowClickListener(2131887276, str, Activities.getString(2131887277), 160) { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.WebSiteDataHandler.1
                    @Override // com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.SectionData.EditRowClickListener
                    DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel getListener() {
                        return new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard.WebSiteDataHandler.1.1
                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            public final String a(String str2) {
                                if (!StringUtils.a((CharSequence) str2) && !Patterns.WEB_URL.matcher(str2).matches()) {
                                    return Activities.getString(2131887278);
                                }
                                return null;
                            }

                            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                            public final void a(int i, String str2, boolean z) {
                                boolean z2;
                                UserProfileManager userProfileManager = UserProfileManager.get();
                                String startText = getStartText();
                                boolean z3 = false;
                                if (StringUtils.a((CharSequence) startText)) {
                                    z2 = false;
                                } else {
                                    boolean b2 = PrefsUtils.b(Prefs.aw, startText) | UserProfileManager.a(Prefs.aD, startText);
                                    z2 = b2;
                                    if (b2) {
                                        userProfileManager.a(ContactField.websites);
                                        z2 = b2;
                                    }
                                }
                                UserProfileManager userProfileManager2 = UserProfileManager.get();
                                if (!StringUtils.a((CharSequence) str2)) {
                                    boolean a2 = PrefsUtils.a(Prefs.aw, str2);
                                    z3 = a2;
                                    if (a2) {
                                        userProfileManager2.a(ContactField.websites);
                                        z3 = a2;
                                    }
                                }
                                JSONWebsite jSONWebsite = new JSONWebsite(getStartText(), 1, true);
                                MyPersonalInfoCard.this.presentersContainer.getContact().getUserProfileData().removeWebsite(jSONWebsite);
                                MyPersonalInfoCard.this.presentersContainer.getContact().removeWebsite(jSONWebsite);
                                UserProfileLoader.b(MyPersonalInfoCard.this.presentersContainer.getContact());
                                if (z2 && !z3) {
                                    MyPersonalInfoCard.this.presentersContainer.getContact().fireChange(ContactField.websites);
                                }
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
                sectionData.a();
            }
        }
        this.allData.clear();
        for (SectionData<List<SimpleCardListObject>> sectionData2 : this.sectionsDataHandlers) {
            sectionData2.a(contactData, set);
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
            if (!this.presentersContainer.a(contactData) && !contactData.isVoiceMail()) {
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
