package com.truecaller.data.entity;

import android.content.res.Resources;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.premium.data.PremiumScope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p997k3.p1000l.AbstractC16497e;
import p193e.p194a.p997k3.p1000l.C16493a;
import w3.c.a.a.a.h;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Contact.class */
public class Contact extends RowEntity<ContactDto.Contact> {
    public static final Parcelable.Creator<Contact> CREATOR = new C3822a();

    /* renamed from: a */
    public final List<Address> f11506a;

    /* renamed from: b */
    public final List<Number> f11507b;

    /* renamed from: c */
    public final List<Tag> f11508c;

    /* renamed from: d */
    public final List<Source> f11509d;

    /* renamed from: e */
    public final List<Link> f11510e;

    /* renamed from: f */
    public final List<SearchWarning> f11511f;

    /* renamed from: g */
    public final List<ContactSurvey> f11512g;

    /* renamed from: h */
    public transient List<Number> f11513h;

    /* renamed from: i */
    public transient Uri f11514i;

    /* renamed from: j */
    public transient boolean f11515j;

    /* renamed from: k */
    public List<Address> f11516k;

    /* renamed from: l */
    public List<Number> f11517l;

    /* renamed from: m */
    public List<Tag> f11518m;

    /* renamed from: n */
    public List<Source> f11519n;

    /* renamed from: o */
    public List<Link> f11520o;

    /* renamed from: p */
    public List<SearchWarning> f11521p;

    /* renamed from: q */
    public List<ContactSurvey> f11522q;

    /* renamed from: r */
    public int f11523r;

    /* renamed from: s */
    public StructuredName f11524s;

    /* renamed from: t */
    public Note f11525t;

    /* renamed from: u */
    public Business f11526u;

    /* renamed from: v */
    public Style f11527v;

    /* renamed from: w */
    public NameFeedback f11528w;

    /* renamed from: x */
    public SpamData f11529x;

    /* renamed from: y */
    public PremiumLevel f11530y;

    /* renamed from: z */
    public int f11531z;

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Contact$PremiumLevel.class */
    public enum PremiumLevel {
        NONE("None"),
        REGULAR("Regular"),
        GOLD("Gold");
        
        private final String level;

        PremiumLevel(String str) {
            this.level = str;
        }

        public static PremiumLevel fromRemote(String str) {
            PremiumLevel[] values = values();
            for (int i = 0; i < 3; i++) {
                PremiumLevel premiumLevel = values[i];
                if (h.e(str, premiumLevel.level)) {
                    return premiumLevel;
                }
            }
            return NONE;
        }

        public String getLevel() {
            return this.level;
        }
    }

    /* renamed from: com.truecaller.data.entity.Contact$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Contact$a.class */
    public class C3822a implements Parcelable.Creator<Contact> {
        @Override // android.os.Parcelable.Creator
        public Contact createFromParcel(Parcel parcel) {
            return new Contact(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Contact[] newArray(int i) {
            return new Contact[i];
        }
    }

    public Contact() {
        this(new ContactDto.Contact());
    }

    public Contact(Parcel parcel) {
        super(parcel);
        ArrayList arrayList = new ArrayList();
        this.f11506a = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f11507b = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.f11508c = arrayList3;
        ArrayList arrayList4 = new ArrayList();
        this.f11509d = arrayList4;
        ArrayList arrayList5 = new ArrayList();
        this.f11510e = arrayList5;
        ArrayList arrayList6 = new ArrayList();
        this.f11511f = arrayList6;
        ArrayList arrayList7 = new ArrayList();
        this.f11512g = arrayList7;
        this.f11513h = new ArrayList();
        boolean z = false;
        this.f11523r = 0;
        this.f11530y = PremiumLevel.NONE;
        PremiumScope premiumScope = PremiumScope.NONE;
        arrayList.addAll(parcel.createTypedArrayList(Address.CREATOR));
        arrayList2.addAll(parcel.createTypedArrayList(Number.CREATOR));
        arrayList3.addAll(parcel.createTypedArrayList(Tag.CREATOR));
        arrayList4.addAll(parcel.createTypedArrayList(Source.CREATOR));
        arrayList5.addAll(parcel.createTypedArrayList(Link.CREATOR));
        this.f11523r = parcel.readInt();
        this.f11514i = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f11515j = parcel.readByte() != 0 ? true : z;
        this.f11524s = (StructuredName) parcel.readParcelable(StructuredName.class.getClassLoader());
        this.f11525t = (Note) parcel.readParcelable(Note.class.getClassLoader());
        this.f11526u = (Business) parcel.readParcelable(Business.class.getClassLoader());
        this.f11527v = (Style) parcel.readParcelable(Style.class.getClassLoader());
        this.f11528w = (NameFeedback) parcel.readParcelable(NameFeedback.class.getClassLoader());
        this.f11529x = (SpamData) parcel.readParcelable(SpamData.class.getClassLoader());
        ((ContactDto.Contact) this.mRow).cacheTtl = (Long) parcel.readValue(Long.class.getClassLoader());
        arrayList6.addAll(parcel.createTypedArrayList(SearchWarning.CREATOR));
        arrayList7.addAll(parcel.createTypedArrayList(ContactSurvey.CREATOR));
    }

    public Contact(ContactDto.Contact contact) {
        super(contact);
        this.f11506a = new ArrayList();
        this.f11507b = new ArrayList();
        this.f11508c = new ArrayList();
        this.f11509d = new ArrayList();
        this.f11510e = new ArrayList();
        this.f11511f = new ArrayList();
        this.f11512g = new ArrayList();
        this.f11513h = new ArrayList();
        this.f11523r = 0;
        this.f11530y = PremiumLevel.NONE;
        PremiumScope premiumScope = PremiumScope.NONE;
        List<ContactDto.Contact.Address> list = ((ContactDto.Contact) this.mRow).addresses;
        if (list != null) {
            for (ContactDto.Contact.Address address : list) {
                List<Address> list2 = this.f11506a;
                Address address2 = new Address(address);
                int source = getSource();
                address2.setTcId(getTcId());
                address2.setSource(source);
                list2.add(address2);
            }
        }
        List<ContactDto.Contact.PhoneNumber> list3 = ((ContactDto.Contact) this.mRow).phones;
        if (list3 != null) {
            for (ContactDto.Contact.PhoneNumber phoneNumber : list3) {
                Number number = new Number(phoneNumber);
                List<Number> list4 = this.f11507b;
                int source2 = getSource();
                number.setTcId(getTcId());
                number.f11564a = source2;
                list4.add(number);
                if ((number.f11564a & 13) != 0) {
                    this.f11513h.add(number);
                }
            }
        }
        List<ContactDto.Contact.InternetAddress> list5 = ((ContactDto.Contact) this.mRow).internetAddresses;
        if (list5 != null) {
            for (ContactDto.Contact.InternetAddress internetAddress : list5) {
                List<Link> list6 = this.f11510e;
                Link link = new Link(internetAddress);
                int source3 = getSource();
                link.setTcId(getTcId());
                link.setSource(source3);
                list6.add(link);
            }
        }
        List<ContactDto.Contact.Tag> list7 = ((ContactDto.Contact) this.mRow).tags;
        if (list7 != null) {
            for (ContactDto.Contact.Tag tag : list7) {
                List<Tag> list8 = this.f11508c;
                Tag tag2 = new Tag(tag);
                int source4 = getSource();
                tag2.setTcId(getTcId());
                tag2.setSource(source4);
                list8.add(tag2);
            }
        }
        List<ContactDto.Contact.Source> list9 = ((ContactDto.Contact) this.mRow).sources;
        if (list9 != null) {
            for (ContactDto.Contact.Source source5 : list9) {
                List<Source> list10 = this.f11509d;
                Source source6 = new Source(source5);
                int source7 = getSource();
                source6.setTcId(getTcId());
                source6.setSource(source7);
                list10.add(source6);
            }
        }
        ContactDto.Contact.Business business = ((ContactDto.Contact) this.mRow).business;
        if (business != null) {
            Business business2 = new Business(business);
            int source8 = getSource();
            business2.setTcId(getTcId());
            business2.setSource(source8);
            this.f11526u = business2;
        }
        ContactDto.Contact.Style style = ((ContactDto.Contact) this.mRow).style;
        if (style != null) {
            Style style2 = new Style(style);
            int source9 = getSource();
            style2.setTcId(getTcId());
            style2.setSource(source9);
            this.f11527v = style2;
        }
        ContactDto.Contact.NameFeedback nameFeedback = ((ContactDto.Contact) this.mRow).nameFeedback;
        if (nameFeedback != null) {
            NameFeedback nameFeedback2 = new NameFeedback(nameFeedback);
            int source10 = getSource();
            nameFeedback2.setTcId(getTcId());
            nameFeedback2.setSource(source10);
            this.f11528w = nameFeedback2;
        }
        ContactDto.Contact.SpamData spamData = ((ContactDto.Contact) this.mRow).spamData;
        if (spamData != null) {
            SpamData spamData2 = new SpamData(spamData);
            int source11 = getSource();
            spamData2.setTcId(getTcId());
            spamData2.setSource(source11);
            this.f11529x = spamData2;
        }
        List<ContactDto.Contact.SearchWarning> list11 = ((ContactDto.Contact) this.mRow).searchWarnings;
        if (list11 != null) {
            for (ContactDto.Contact.SearchWarning searchWarning : list11) {
                List<SearchWarning> list12 = this.f11511f;
                SearchWarning searchWarning2 = new SearchWarning(searchWarning);
                int source12 = getSource();
                searchWarning2.setTcId(getTcId());
                searchWarning2.setSource(source12);
                list12.add(searchWarning2);
            }
        }
        List<ContactDto.Contact.Survey> list13 = ((ContactDto.Contact) this.mRow).surveys;
        if (list13 != null) {
            for (ContactDto.Contact.Survey survey : list13) {
                List<ContactSurvey> list14 = this.f11512g;
                ContactSurvey contactSurvey = new ContactSurvey(survey);
                contactSurvey.setTcId(getTcId());
                list14.add(contactSurvey);
            }
        }
        this.f11523r = C17891a1.C17902k.m15567v(((ContactDto.Contact) this.mRow).badges);
    }

    /* renamed from: A */
    public String m35575A() {
        return ((ContactDto.Contact) this.mRow).imId;
    }

    /* renamed from: A0 */
    public boolean m35574A0() {
        return m35530b0() != null;
    }

    /* renamed from: B */
    public String m35573B() {
        return ((ContactDto.Contact) this.mRow).image;
    }

    /* renamed from: B0 */
    public boolean m35572B0() {
        return m35516g0(1);
    }

    /* renamed from: C */
    public String m35571C() {
        return C19231g0.m13813D(" @ ", m35569D(), m35502p());
    }

    /* renamed from: C0 */
    public boolean m35570C0() {
        return h.j(m35566G());
    }

    /* renamed from: D */
    public String m35569D() {
        return ((ContactDto.Contact) this.mRow).jobTitle;
    }

    /* renamed from: E0 */
    public boolean m35568E0() {
        return (m35565G0() && m35574A0()) || (m35565G0() && !m35506m0() && !m35499r0() && !m35492v0() && !m35574A0());
    }

    /* renamed from: F */
    public List<Link> m35567F() {
        if (this.f11520o == null) {
            this.f11520o = Collections.unmodifiableList(this.f11510e);
        }
        return this.f11520o;
    }

    /* renamed from: G */
    public String m35566G() {
        return ((ContactDto.Contact) this.mRow).name;
    }

    /* renamed from: G0 */
    public boolean m35565G0() {
        return m35516g0(128);
    }

    /* renamed from: H */
    public int m35564H() {
        SpamData spamData = this.f11529x;
        if (spamData == null || spamData.getNumCalls60days() == null) {
            return 0;
        }
        return this.f11529x.getNumCalls60days().intValue();
    }

    /* renamed from: H0 */
    public final <T extends AbstractC16497e> void m35563H0(List<T> list) {
        if (list == null) {
            return;
        }
        ListIterator<T> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            T next = listIterator.next();
            int previousIndex = listIterator.previousIndex();
            if (previousIndex != -1) {
                boolean z = false;
                ListIterator<T> listIterator2 = list.listIterator();
                while (!z && listIterator2.hasNext() && listIterator2.nextIndex() != previousIndex) {
                    T next2 = listIterator2.next();
                    z = next2.mergeEquals(next);
                    if (z) {
                        if (next2 instanceof Number) {
                            Number number = (Number) next2;
                            Number number2 = (Number) next;
                            if (number2.m35472m() > number.m35472m()) {
                                number.m35463x(number2.m35472m());
                            }
                            if (number.m35471n() == null) {
                                ((ContactDto.Contact.PhoneNumber) number.mRow).spamType = number2.m35471n();
                            }
                            if (h.j(number.m35482b())) {
                                ((ContactDto.Contact.PhoneNumber) number.mRow).carrier = number2.m35482b();
                            }
                            if (number.getDataPhonebookId() == null) {
                                number.setDataPhonebookId(number2.getDataPhonebookId());
                            }
                            number.f11564a |= number2.f11564a;
                            if (number2.m35470o() != ContactDto.Contact.PhoneNumber.EMPTY_TEL_TYPE) {
                                number.m35462y(number2.m35470o());
                                number.m35461z(number2.m35469p());
                                number.m35465v(number2.m35475i());
                            }
                        }
                        listIterator.remove();
                    }
                }
            }
        }
    }

    /* renamed from: I */
    public Integer m35562I() {
        SpamData spamData = this.f11529x;
        if (spamData == null || spamData.getNumCalls60DaysPointerPosition() == null) {
            return null;
        }
        return Integer.valueOf(this.f11529x.getNumCalls60DaysPointerPosition().intValue());
    }

    /* renamed from: I0 */
    public void m35561I0() {
        this.f11508c.clear();
        ((ContactDto.Contact) this.mRow).tags = null;
    }

    /* renamed from: J */
    public List<Integer> m35560J() {
        SpamData spamData = this.f11529x;
        ArrayList arrayList = null;
        if (spamData != null) {
            if (spamData.getNumCallsHourly() != null) {
                String[] split = this.f11529x.getNumCallsHourly().split(",");
                if (split.length == 24) {
                    ArrayList arrayList2 = new ArrayList();
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        arrayList = arrayList2;
                        if (i >= length) {
                            break;
                        }
                        arrayList2.add(Integer.valueOf(split[i]));
                        i++;
                    }
                } else {
                    return null;
                }
            } else {
                arrayList = null;
            }
        }
        return arrayList;
    }

    /* renamed from: L */
    public int m35559L() {
        SpamData spamData = this.f11529x;
        if (spamData == null || spamData.getNumReports60days() == null) {
            return 0;
        }
        return this.f11529x.getNumReports60days().intValue();
    }

    /* renamed from: L0 */
    public void m35558L0(String str) {
        ((ContactDto.Contact) this.mRow).altName = str;
    }

    /* renamed from: M */
    public List<Number> m35557M() {
        if (this.f11517l == null) {
            this.f11517l = Collections.unmodifiableList(this.f11507b);
        }
        return this.f11517l;
    }

    /* renamed from: M0 */
    public void m35556M0(Long l) {
        ((ContactDto.Contact) this.mRow).cacheTtl = l;
    }

    /* renamed from: N */
    public String m35555N() {
        return this.f11509d.isEmpty() ? "" : ((ContactDto.Contact.Source) this.f11509d.get(0).mRow).logo;
    }

    /* renamed from: N0 */
    public void m35554N0(String str) {
        ((ContactDto.Contact) this.mRow).companyName = str;
    }

    /* renamed from: O */
    public String m35553O() {
        return this.f11509d.isEmpty() ? "" : ((ContactDto.Contact.Source) this.f11509d.get(0).mRow).caption;
    }

    @Deprecated
    /* renamed from: O0 */
    public void m35552O0(String str) {
        ((ContactDto.Contact) this.mRow).defaultNumber = str;
    }

    /* renamed from: P */
    public String m35551P() {
        return this.f11509d.isEmpty() ? "" : ((ContactDto.Contact.Source) this.f11509d.get(0).mRow).url;
    }

    /* renamed from: P0 */
    public void m35550P0(String str) {
        ((ContactDto.Contact) this.mRow).image = str;
    }

    /* renamed from: Q0 */
    public void m35549Q0(boolean z) {
        ((ContactDto.Contact) this.mRow).isFavorite = z;
    }

    /* renamed from: R */
    public Long m35548R() {
        RT rt = this.mRow;
        return ((ContactDto.Contact) rt).phonebookId == 0 ? null : Long.valueOf(((ContactDto.Contact) rt).phonebookId);
    }

    /* renamed from: R0 */
    public void m35547R0(String str) {
        ((ContactDto.Contact) this.mRow).jobTitle = str;
    }

    /* renamed from: S0 */
    public void m35546S0(String str) {
        ((ContactDto.Contact) this.mRow).name = str;
    }

    /* renamed from: T */
    public String m35545T() {
        return ((ContactDto.Contact) this.mRow).phonebookLookupKey;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: T0 */
    public void m35544T0(Long l) {
        ((ContactDto.Contact) this.mRow).phonebookId = l == null ? (char) 0 : l.longValue();
    }

    /* renamed from: U */
    public PremiumLevel m35543U() {
        return this.f11530y;
    }

    /* renamed from: V */
    public String m35542V() {
        return ((ContactDto.Contact) this.mRow).searchQuery;
    }

    /* renamed from: V0 */
    public void m35541V0(String str) {
        ((ContactDto.Contact) this.mRow).searchQuery = str;
    }

    /* renamed from: X */
    public long m35540X() {
        return ((ContactDto.Contact) this.mRow).searchTime;
    }

    /* renamed from: X0 */
    public void m35539X0(long j) {
        ((ContactDto.Contact) this.mRow).searchTime = j;
    }

    /* renamed from: Y */
    public List<SearchWarning> m35538Y() {
        if (this.f11521p == null) {
            this.f11521p = Collections.unmodifiableList(this.f11511f);
        }
        return this.f11521p;
    }

    /* renamed from: Y0 */
    public void m35537Y0(String str) {
        ((ContactDto.Contact) this.mRow).spamCategoryIds = str;
    }

    /* renamed from: Z */
    public String m35536Z() {
        return ((ContactDto.Contact) this.mRow).spamCategoryIds;
    }

    /* renamed from: Z0 */
    public void m35535Z0(Integer num) {
        ((ContactDto.Contact) this.mRow).spamScore = num;
    }

    /* renamed from: a */
    public final <RT extends ContactDto.Row, ET extends Entity> List<RT> m35534a(List<ET> list, List<RT> list2, ET et, RT rt) {
        ArrayList arrayList = list2;
        if (list2 == null) {
            arrayList = new ArrayList();
        }
        et.setTcId(getTcId());
        list.add(et);
        arrayList.add(rt);
        return arrayList;
    }

    /* renamed from: a0 */
    public int m35533a0() {
        RT rt = this.mRow;
        if (((ContactDto.Contact) rt).spamScore == null) {
            return 0;
        }
        return ((ContactDto.Contact) rt).spamScore.intValue();
    }

    /* renamed from: a1 */
    public void m35532a1(String str) {
        ((ContactDto.Contact) this.mRow).spamType = str;
    }

    /* renamed from: b */
    public void m35531b(Address address) {
        RT rt = this.mRow;
        ((ContactDto.Contact) rt).addresses = m35534a(this.f11506a, ((ContactDto.Contact) rt).addresses, address, address.row());
    }

    /* renamed from: b0 */
    public String m35530b0() {
        return ((ContactDto.Contact) this.mRow).spamType;
    }

    /* renamed from: b1 */
    public void m35529b1() {
        Collections.sort(this.f11506a, Address.PRESENTATION_COMPARATOR);
        m35563H0(this.f11506a);
        List<Number> list = this.f11507b;
        int[] iArr = Number.f11562b;
        Collections.sort(list, C16493a.f46378a);
        m35563H0(this.f11507b);
        m35563H0(this.f11509d);
        m35563H0(this.f11510e);
        m35563H0(this.f11508c);
    }

    /* renamed from: c */
    public void m35528c(Link link) {
        RT rt = this.mRow;
        ((ContactDto.Contact) rt).internetAddresses = m35534a(this.f11510e, ((ContactDto.Contact) rt).internetAddresses, link, link.row());
    }

    /* renamed from: c0 */
    public List<ContactSurvey> m35527c0() {
        if (this.f11522q == null) {
            this.f11522q = Collections.unmodifiableList(this.f11512g);
        }
        return this.f11522q;
    }

    /* renamed from: c1 */
    public boolean m35526c1() {
        return !m35495t0() && !m35516g0(2) && !m35488x0() && !m35508l0() && !m35568E0() && !m35490w0();
    }

    /* renamed from: d */
    public void m35525d(Number number) {
        ContactDto.Contact contact = (ContactDto.Contact) this.mRow;
        contact.phones = m35534a(this.f11507b, contact.phones, number, number.row());
        if ((number.f11564a & 13) != 0) {
            this.f11513h.add(number);
        }
    }

    /* renamed from: d0 */
    public List<Tag> m35524d0() {
        if (this.f11518m == null) {
            this.f11518m = Collections.unmodifiableList(this.f11508c);
        }
        return this.f11518m;
    }

    /* renamed from: d1 */
    public boolean m35523d1() {
        return (getSource() & 13) != 0;
    }

    /* renamed from: e */
    public void m35522e(SearchWarning searchWarning) {
        RT rt = this.mRow;
        ((ContactDto.Contact) rt).searchWarnings = m35534a(this.f11511f, ((ContactDto.Contact) rt).searchWarnings, searchWarning, searchWarning.row());
    }

    /* renamed from: e0 */
    public List<String> m35521e0() {
        ArrayList arrayList = new ArrayList();
        if (m35572B0()) {
            for (Number number : this.f11507b) {
                int i = number.f11564a;
                if ((i & 1) > 0 && (i & 4) == 0 && !arrayList.contains(number.m35479e())) {
                    arrayList.add(number.m35479e());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e1 */
    public boolean m35520e1(String str) {
        if (!m35523d1() || this.f11513h == null || !C8574c0.m28351h(str)) {
            return false;
        }
        for (Number number : this.f11513h) {
            if (str.equals(number.m35479e()) && (number.f11564a & 13) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Contact)) {
            return false;
        }
        Contact contact = (Contact) obj;
        if (!h.e(((ContactDto.Contact) this.mRow).defaultNumber, ((ContactDto.Contact) contact.mRow).defaultNumber) || m35514h0() != contact.m35514h0() || this.f11507b.size() != contact.f11507b.size()) {
            return false;
        }
        for (Number number : this.f11507b) {
            Iterator<Number> it = contact.f11507b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (number.m35479e().equals(it.next().m35479e())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return false;
            }
        }
        if (C19231g0.m13807J(m35566G(), contact.m35566G(), true) != 0) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: f */
    public void m35519f(ContactSurvey contactSurvey) {
        ContactDto.Contact contact = (ContactDto.Contact) this.mRow;
        contact.surveys = m35534a(this.f11512g, contact.surveys, contactSurvey, contactSurvey.row());
    }

    /* renamed from: f0 */
    public String m35518f0() {
        return ((ContactDto.Contact) this.mRow).transliteratedName;
    }

    /* renamed from: g */
    public void m35517g(Tag tag) {
        ContactDto.Contact contact = (ContactDto.Contact) this.mRow;
        contact.tags = m35534a(this.f11508c, contact.tags, tag, tag.row());
    }

    /* renamed from: g0 */
    public boolean m35516g0(int i) {
        return (i & this.f11523r) != 0;
    }

    @Override // com.truecaller.data.entity.RowEntity
    public int getSource() {
        return ((ContactDto.Contact) this.mRow).source;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity
    public String getTcId() {
        return ((ContactDto.Contact) this.mRow).f11490id;
    }

    /* renamed from: h */
    public String m35515h() {
        return ((ContactDto.Contact) this.mRow).about;
    }

    /* renamed from: h0 */
    public boolean m35514h0() {
        return this.f11507b.size() > 0;
    }

    /* renamed from: i */
    public String m35513i() {
        Address m35500r = m35500r();
        return m35500r == null ? null : (m35488x0() || (!h.m(m35500r.getStreet()) && !h.m(m35500r.getZipCode()) && !h.m(m35500r.getCity()) && !h.m(m35500r.getCountryName()))) ? m35500r.getCity() : C19231g0.m13813D(", ", m35500r.getStreet(), C19231g0.m13813D(StringConstant.SPACE, m35500r.getZipCode(), m35500r.getCity(), m35500r.getCountryName()));
    }

    /* renamed from: i0 */
    public boolean m35512i0(int i) {
        return (i & getSource()) != 0;
    }

    /* renamed from: j0 */
    public boolean m35511j0() {
        return m35516g0(64);
    }

    /* renamed from: k */
    public List<Address> m35510k() {
        if (this.f11516k == null) {
            this.f11516k = Collections.unmodifiableList(this.f11506a);
        }
        return this.f11516k;
    }

    /* renamed from: l */
    public Long m35509l() {
        RT rt = this.mRow;
        return ((ContactDto.Contact) rt).aggregatedRowId == 0 ? null : Long.valueOf(((ContactDto.Contact) rt).aggregatedRowId);
    }

    /* renamed from: l0 */
    public boolean m35508l0() {
        return (getSource() & 32) == 32;
    }

    /* renamed from: m */
    public String m35507m() {
        return ((ContactDto.Contact) this.mRow).altName;
    }

    /* renamed from: m0 */
    public boolean m35506m0() {
        return m35516g0(256);
    }

    /* renamed from: n */
    public final String m35505n() {
        String m35502p = m35502p();
        if (!m35511j0() || h.j(m35502p)) {
            return null;
        }
        String m35507m = m35507m();
        if (!h.j(m35507m)) {
            return C22128a.m8721D2(m35502p, " (", m35507m, ")");
        }
        String m35566G = m35566G();
        StringBuilder m8728C = C22128a.m8728C(m35502p);
        m8728C.append(m35566G != null ? C22128a.m8725C2(" (", m35566G, ")") : "");
        return m8728C.toString();
    }

    /* renamed from: o */
    public Long m35504o() {
        RT rt = this.mRow;
        if (((ContactDto.Contact) rt).cacheTtl != null) {
            return Long.valueOf(((ContactDto.Contact) rt).cacheTtl.longValue());
        }
        return null;
    }

    /* renamed from: o0 */
    public boolean m35503o0() {
        return ((ContactDto.Contact) this.mRow).isFavorite;
    }

    /* renamed from: p */
    public String m35502p() {
        return ((ContactDto.Contact) this.mRow).companyName;
    }

    /* renamed from: q0 */
    public boolean m35501q0() {
        return (getSource() & 4) == 0 && !h.j(m35566G());
    }

    /* renamed from: r */
    public Address m35500r() {
        Iterator<Address> it = this.f11506a.iterator();
        Address address = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Address next = it.next();
            address = next;
            if (next.getDataPhonebookId() != null) {
                address = next;
                break;
            }
        }
        return address;
    }

    /* renamed from: r0 */
    public boolean m35499r0() {
        return this.f11530y == PremiumLevel.GOLD || m35516g0(32);
    }

    @Deprecated
    /* renamed from: s */
    public String m35498s() {
        if (h.m(((ContactDto.Contact) this.mRow).defaultNumber)) {
            return ((ContactDto.Contact) this.mRow).defaultNumber;
        }
        for (Number number : this.f11507b) {
            ((ContactDto.Contact) this.mRow).defaultNumber = C19231g0.m13810G(number.m35479e(), number.m35473l(), number.m35480d());
            if (!h.j(((ContactDto.Contact) this.mRow).defaultNumber)) {
                break;
            }
        }
        return ((ContactDto.Contact) this.mRow).defaultNumber;
    }

    /* renamed from: s0 */
    public boolean m35497s0() {
        return C8574c0.m28353f(m35498s());
    }

    @Override // com.truecaller.data.entity.RowEntity
    public void setSource(int i) {
        ((ContactDto.Contact) this.mRow).source = i;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity
    public void setTcId(String str) {
        super.setTcId(str);
        ((ContactDto.Contact) this.mRow).f11490id = str;
    }

    /* renamed from: t */
    public String m35496t() {
        Number m35493v = m35493v();
        return m35493v != null ? m35493v.m35477g() : !this.f11507b.isEmpty() ? this.f11507b.get(0).m35477g() : !h.j(((ContactDto.Contact) this.mRow).defaultNumber) ? C8572b0.m28378a(((ContactDto.Contact) this.mRow).defaultNumber, null) : ((ContactDto.Contact) this.mRow).defaultNumber;
    }

    /* renamed from: t0 */
    public boolean m35495t0() {
        return m35548R() != null;
    }

    /* renamed from: u0 */
    public boolean m35494u0() {
        return this.f11530y == PremiumLevel.REGULAR || m35516g0(4);
    }

    @Deprecated
    /* renamed from: v */
    public Number m35493v() {
        String m35498s = m35498s();
        if (!h.j(m35498s)) {
            for (Number number : this.f11507b) {
                if (m35498s.equals(number.m35479e())) {
                    return number;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: v0 */
    public boolean m35492v0() {
        return m35516g0(16) && !m35574A0();
    }

    /* renamed from: w */
    public String m35491w() {
        String m35505n = m35505n();
        return m35505n != null ? m35505n : m35566G();
    }

    /* renamed from: w0 */
    public boolean m35490w0() {
        return m35492v0() && !m35506m0() && !m35499r0() && !m35574A0();
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.f11506a);
        parcel.writeTypedList(this.f11507b);
        parcel.writeTypedList(this.f11508c);
        parcel.writeTypedList(this.f11509d);
        parcel.writeTypedList(this.f11510e);
        parcel.writeInt(this.f11523r);
        parcel.writeParcelable(this.f11514i, 0);
        parcel.writeByte(this.f11515j ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f11524s, i);
        parcel.writeParcelable(this.f11525t, i);
        parcel.writeParcelable(this.f11526u, i);
        parcel.writeParcelable(this.f11527v, i);
        parcel.writeParcelable(this.f11528w, i);
        parcel.writeParcelable(this.f11529x, i);
        parcel.writeValue(m35504o());
        parcel.writeTypedList(this.f11511f);
        parcel.writeTypedList(this.f11512g);
    }

    /* renamed from: x */
    public String m35489x() {
        String m35487y = m35487y();
        String str = m35487y;
        if (h.j(m35487y)) {
            String m35496t = m35496t();
            str = m35496t;
            if (h.j(m35496t)) {
                str = Resources.getSystem().getString(17039374);
            }
        }
        return str;
    }

    /* renamed from: x0 */
    public boolean m35488x0() {
        return "private".equalsIgnoreCase(((ContactDto.Contact) this.mRow).access) && !m35514h0();
    }

    /* renamed from: y */
    public String m35487y() {
        String str;
        String m35505n = m35505n();
        if (m35505n != null) {
            return m35505n;
        }
        String m35566G = m35566G();
        if (m35495t0()) {
            return m35566G;
        }
        if (!h.j(m35518f0())) {
            StringBuilder m8696K = C22128a.m8696K(m35566G, " (");
            m8696K.append(m35518f0());
            m8696K.append(")");
            str = m8696K.toString();
        } else {
            str = m35566G;
            if (!h.j(m35507m())) {
                StringBuilder m8696K2 = C22128a.m8696K(m35566G, " (");
                m8696K2.append(m35507m());
                m8696K2.append(")");
                str = m8696K2.toString();
            }
        }
        return str;
    }

    /* renamed from: y0 */
    public boolean m35486y0() {
        return (getSource() & 51) == 0 && m35512i0(64);
    }

    /* renamed from: z */
    public String m35485z() {
        Address m35500r = m35500r();
        return m35500r == null ? "" : m35500r.getDisplayableAddress();
    }
}
