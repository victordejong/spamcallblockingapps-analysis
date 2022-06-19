package com.truecaller.calling.contacts_list.data;

import com.truecaller.calling.contacts_list.ContactsHolder;
import com.truecaller.calling.contacts_list.data.SortedContactsDao;
import com.truecaller.data.entity.Contact;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.w.d;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsRepository.class */
public interface SortedContactsRepository {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;", "", "<init>", "(Ljava/lang/String;I)V", "PHONEBOOK_LIMITED", "NON_PHONEBOOK_LIMITED", "PHONEBOOK_INITIAL", "FULL_INITIAL", "FULL_WITH_ENTITIES", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode.class */
    public enum ContactsLoadingMode {
        PHONEBOOK_LIMITED,
        NON_PHONEBOOK_LIMITED,
        PHONEBOOK_INITIAL,
        FULL_INITIAL,
        FULL_WITH_ENTITIES
    }

    /* renamed from: com.truecaller.calling.contacts_list.data.SortedContactsRepository$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsRepository$a.class */
    public static final class C3618a {

        /* renamed from: a */
        public final List<SortedContactsDao.C3617a> f10711a;

        /* renamed from: b */
        public final AbstractC3619b f10712b;

        /* renamed from: c */
        public final AbstractC3619b f10713c;

        public C3618a(List<SortedContactsDao.C3617a> list, AbstractC3619b abstractC3619b, AbstractC3619b abstractC3619b2) {
            l.e(list, "contacts");
            this.f10711a = list;
            this.f10712b = abstractC3619b;
            this.f10713c = abstractC3619b2;
        }

        public /* synthetic */ C3618a(List list, AbstractC3619b abstractC3619b, AbstractC3619b abstractC3619b2, int i) {
            this(list, null, (i & 4) != 0 ? null : abstractC3619b2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C3618a)) {
                    return false;
                }
                C3618a c3618a = (C3618a) obj;
                return l.a(this.f10711a, c3618a.f10711a) && l.a(this.f10712b, c3618a.f10712b) && l.a(this.f10713c, c3618a.f10713c);
            }
            return true;
        }

        public int hashCode() {
            List<SortedContactsDao.C3617a> list = this.f10711a;
            int i = 0;
            int hashCode = list != null ? list.hashCode() : 0;
            AbstractC3619b abstractC3619b = this.f10712b;
            int hashCode2 = abstractC3619b != null ? abstractC3619b.hashCode() : 0;
            AbstractC3619b abstractC3619b2 = this.f10713c;
            if (abstractC3619b2 != null) {
                i = abstractC3619b2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ContactsWithIndexes(contacts=");
            m8728C.append(this.f10711a);
            m8728C.append(", nonPhonebookContactsIndexes=");
            m8728C.append(this.f10712b);
            m8728C.append(", phonebookContactsIndexes=");
            m8728C.append(this.f10713c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.calling.contacts_list.data.SortedContactsRepository$b */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/data/SortedContactsRepository$b.class */
    public interface AbstractC3619b {
        /* renamed from: a */
        String m35750a(int i);
    }

    /* renamed from: a */
    Object m35752a(ContactsHolder.SortingMode sortingMode, ContactsLoadingMode contactsLoadingMode, boolean z, boolean z2, d<? super C3618a> dVar);

    /* renamed from: b */
    Object m35751b(Set<String> set, boolean z, d<? super List<? extends Contact>> dVar);
}
