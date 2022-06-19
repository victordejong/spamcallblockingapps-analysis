package com.truecaller.calling.contacts_list;

import com.truecaller.calling.contacts_list.data.SortedContactsDao;
import java.util.List;
import kotlin.Metadata;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/ContactsHolder.class */
public interface ContactsHolder {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;", "", "<init>", "(Ljava/lang/String;I)V", "INCLUDE_NON_FAVORITES", "FAVORITES_ONLY", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter.class */
    public enum FavoritesFilter {
        INCLUDE_NON_FAVORITES,
        FAVORITES_ONLY
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;", "", "<init>", "(Ljava/lang/String;I)V", "NON_PHONEBOOK_ONLY", "PHONEBOOK_ONLY", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter.class */
    public enum PhonebookFilter {
        NON_PHONEBOOK_ONLY,
        PHONEBOOK_ONLY
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;", "", "<init>", "(Ljava/lang/String;I)V", "BY_FIRST_NAME", "BY_LAST_NAME", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/ContactsHolder$SortingMode.class */
    public enum SortingMode {
        BY_FIRST_NAME,
        BY_LAST_NAME
    }

    /* renamed from: sb */
    List<SortedContactsDao.C3617a> m35760sb(FavoritesFilter favoritesFilter, PhonebookFilter phonebookFilter);

    /* renamed from: v5 */
    String m35759v5(int i, PhonebookFilter phonebookFilter);

    /* renamed from: y */
    SortingMode m35758y();
}
