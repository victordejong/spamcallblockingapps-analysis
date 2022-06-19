package com.truecaller.calling.contacts_list.data;

import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.contacts_list.ContactsHolder;
import com.truecaller.calling.contacts_list.data.SortedContactsRepository;
import com.truecaller.data.entity.Contact;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p997k3.p1000l.C16494b;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsDao.class */
public interface SortedContactsDao {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;", "", "<init>", "(Ljava/lang/String;I)V", "BARE_MINIMUM", "COMPLETE_WITH_ENTITIES", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness.class */
    public enum ContactFullness {
        BARE_MINIMUM,
        COMPLETE_WITH_ENTITIES
    }

    /* renamed from: com.truecaller.calling.contacts_list.data.SortedContactsDao$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsDao$a.class */
    public static final class C3617a {

        /* renamed from: a */
        public final Contact f10708a;

        /* renamed from: b */
        public final C16494b f10709b;

        /* renamed from: c */
        public final boolean f10710c;

        public C3617a(Contact contact, C16494b c16494b, boolean z) {
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(c16494b, "sortingData");
            this.f10708a = contact;
            this.f10709b = c16494b;
            this.f10710c = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C3617a)) {
                    return false;
                }
                C3617a c3617a = (C3617a) obj;
                return l.a(this.f10708a, c3617a.f10708a) && l.a(this.f10709b, c3617a.f10709b) && this.f10710c == c3617a.f10710c;
            }
            return true;
        }

        public int hashCode() {
            Contact contact = this.f10708a;
            int i = 0;
            int hashCode = contact != null ? contact.hashCode() : 0;
            C16494b c16494b = this.f10709b;
            if (c16494b != null) {
                i = c16494b.hashCode();
            }
            boolean z = this.f10710c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SortedContact(contact=");
            m8728C.append(this.f10708a);
            m8728C.append(", sortingData=");
            m8728C.append(this.f10709b);
            m8728C.append(", isHidden=");
            return C22128a.m8590o(m8728C, this.f10710c, ")");
        }
    }

    /* renamed from: a */
    List<C3617a> m35755a(ContactsHolder.SortingMode sortingMode, ContactFullness contactFullness, Integer num, ContactsHolder.PhonebookFilter phonebookFilter);

    /* renamed from: b */
    SortedContactsRepository.AbstractC3619b m35754b(ContactsHolder.SortingMode sortingMode, ContactsHolder.PhonebookFilter phonebookFilter, boolean z, boolean z2);

    /* renamed from: c */
    List<Contact> m35753c(Set<String> set, boolean z);
}
