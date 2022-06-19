package com.truecaller.blocking;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.blocking.FiltersContract;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FilterMatch.class */
public final class FilterMatch implements Parcelable {

    /* renamed from: k */
    public static final FilterMatch f10446k;

    /* renamed from: l */
    public static final FilterMatch f10447l;

    /* renamed from: m */
    public static final FilterMatch f10448m;

    /* renamed from: n */
    public static final FilterMatch f10449n;

    /* renamed from: o */
    public static final FilterMatch f10450o;

    /* renamed from: p */
    public static final FilterMatch f10451p;

    /* renamed from: a */
    public final long f10452a;

    /* renamed from: b */
    public final FilterAction f10453b;

    /* renamed from: c */
    public final ActionSource f10454c;

    /* renamed from: d */
    public final String f10455d;

    /* renamed from: e */
    public final int f10456e;

    /* renamed from: f */
    public final int f10457f;

    /* renamed from: g */
    public final FiltersContract.Filters.WildCardType f10458g;

    /* renamed from: h */
    public final List<Long> f10459h;

    /* renamed from: i */
    public final Integer f10460i;

    /* renamed from: j */
    public static final FilterMatch f10445j = new FilterMatch(0, FilterAction.NONE_FOUND, ActionSource.NONE, null, 0, 0, null, null, null, 505);
    public static final Parcelable.Creator<FilterMatch> CREATOR = new C3552a();

    /* renamed from: com.truecaller.blocking.FilterMatch$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FilterMatch$a.class */
    public static final class C3552a implements Parcelable.Creator<FilterMatch> {
        @Override // android.os.Parcelable.Creator
        public FilterMatch createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            l.e(parcel, "source");
            long readLong = parcel.readLong();
            FilterAction filterAction = FilterAction.values()[parcel.readInt()];
            ActionSource actionSource = ActionSource.values()[parcel.readInt()];
            String readString = parcel.readString();
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            FiltersContract.Filters.WildCardType wildCardType = FiltersContract.Filters.WildCardType.values()[parcel.readInt()];
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, Long.TYPE.getClassLoader());
            boolean z = true;
            if (!(!arrayList.isEmpty())) {
                arrayList = null;
            }
            Integer valueOf = Integer.valueOf(parcel.readInt());
            if (valueOf.intValue() == -1) {
                z = false;
            }
            Integer num = null;
            if (z) {
                num = valueOf;
            }
            return new FilterMatch(readLong, filterAction, actionSource, readString, readInt, readInt2, wildCardType, arrayList, num);
        }

        @Override // android.os.Parcelable.Creator
        public FilterMatch[] newArray(int i) {
            return new FilterMatch[i];
        }
    }

    static {
        FilterAction filterAction = FilterAction.FILTER_BLACKLISTED;
        ActionSource actionSource = ActionSource.UNKNOWN;
        f10446k = new FilterMatch(0L, filterAction, actionSource, null, 0, 0, null, null, null, 505);
        f10447l = new FilterMatch(0L, FilterAction.FILTER_DISABLED, actionSource, null, 0, 0, null, null, null, 505);
        f10448m = new FilterMatch(0L, filterAction, ActionSource.NON_PHONEBOOK, null, 0, 0, null, null, null, 505);
        f10449n = new FilterMatch(0L, filterAction, ActionSource.FOREIGN, null, 0, 0, null, null, null, 505);
        f10450o = new FilterMatch(0L, filterAction, ActionSource.NEIGHBOUR_SPOOFING, null, 0, 0, null, null, null, 505);
        f10451p = new FilterMatch(0L, filterAction, ActionSource.INDIAN_REGISTERED_TELEMARKETER, null, 0, 0, null, null, null, 505);
    }

    public FilterMatch(long j, FilterAction filterAction, ActionSource actionSource, String str, int i, int i2, FiltersContract.Filters.WildCardType wildCardType, List<Long> list, Integer num) {
        l.e(filterAction, "action");
        l.e(actionSource, "filterSource");
        l.e(wildCardType, "wildCardType");
        this.f10452a = j;
        this.f10453b = filterAction;
        this.f10454c = actionSource;
        this.f10455d = str;
        this.f10456e = i;
        this.f10457f = i2;
        this.f10458g = wildCardType;
        this.f10459h = list;
        this.f10460i = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    public /* synthetic */ FilterMatch(long j, FilterAction filterAction, ActionSource actionSource, String str, int i, int i2, FiltersContract.Filters.WildCardType wildCardType, List list, Integer num, int i3) {
        this((i3 & 1) != 0 ? -1 : j, filterAction, actionSource, null, (i3 & 16) != 0 ? 0 : i, (i3 & 32) != 0 ? 0 : i2, (i3 & 64) != 0 ? FiltersContract.Filters.WildCardType.NONE : null, null, null);
    }

    /* renamed from: a */
    public final boolean m35813a() {
        return this.f10453b == FilterAction.FILTER_BLACKLISTED;
    }

    /* renamed from: b */
    public final boolean m35812b() {
        return this.f10454c == ActionSource.TOP_SPAMMER;
    }

    /* renamed from: c */
    public final boolean m35811c() {
        return this.f10453b == FilterAction.ALLOW_WHITELISTED;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FilterMatch)) {
                return false;
            }
            FilterMatch filterMatch = (FilterMatch) obj;
            return this.f10452a == filterMatch.f10452a && l.a(this.f10453b, filterMatch.f10453b) && l.a(this.f10454c, filterMatch.f10454c) && l.a(this.f10455d, filterMatch.f10455d) && this.f10456e == filterMatch.f10456e && this.f10457f == filterMatch.f10457f && l.a(this.f10458g, filterMatch.f10458g) && l.a(this.f10459h, filterMatch.f10459h) && l.a(this.f10460i, filterMatch.f10460i);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f10452a);
        FilterAction filterAction = this.f10453b;
        int i = 0;
        int hashCode = filterAction != null ? filterAction.hashCode() : 0;
        ActionSource actionSource = this.f10454c;
        int hashCode2 = actionSource != null ? actionSource.hashCode() : 0;
        String str = this.f10455d;
        int hashCode3 = str != null ? str.hashCode() : 0;
        int i2 = this.f10456e;
        int i3 = this.f10457f;
        FiltersContract.Filters.WildCardType wildCardType = this.f10458g;
        int hashCode4 = wildCardType != null ? wildCardType.hashCode() : 0;
        List<Long> list = this.f10459h;
        int hashCode5 = list != null ? list.hashCode() : 0;
        Integer num = this.f10460i;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FilterMatch(id=");
        m8728C.append(this.f10452a);
        m8728C.append(", action=");
        m8728C.append(this.f10453b);
        m8728C.append(", filterSource=");
        m8728C.append(this.f10454c);
        m8728C.append(", label=");
        m8728C.append(this.f10455d);
        m8728C.append(", syncState=");
        m8728C.append(this.f10456e);
        m8728C.append(", count=");
        m8728C.append(this.f10457f);
        m8728C.append(", wildCardType=");
        m8728C.append(this.f10458g);
        m8728C.append(", spamCategoryIds=");
        m8728C.append(this.f10459h);
        m8728C.append(", spamVersion=");
        return C22128a.m8689L2(m8728C, this.f10460i, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeLong(this.f10452a);
        parcel.writeInt(this.f10453b.ordinal());
        parcel.writeInt(this.f10454c.ordinal());
        parcel.writeString(this.f10455d);
        parcel.writeInt(this.f10456e);
        parcel.writeInt(this.f10457f);
        parcel.writeInt(this.f10458g.ordinal());
        parcel.writeList(this.f10459h);
        Integer num = this.f10460i;
        parcel.writeInt(num != null ? num.intValue() : -1);
    }
}
