package com.android.contacts.model;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import com.android.contacts.model.a.a;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.google.a.b.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/RawContactDelta.class */
public class RawContactDelta implements Parcelable {
    public static final Parcelable.Creator<RawContactDelta> CREATOR = new Parcelable.Creator<RawContactDelta>() { // from class: com.android.contacts.model.RawContactDelta.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ RawContactDelta createFromParcel(Parcel parcel) {
            RawContactDelta rawContactDelta = new RawContactDelta();
            ClassLoader classLoader = rawContactDelta.getClass().getClassLoader();
            int readInt = parcel.readInt();
            rawContactDelta.f1987a = (ValuesDelta) parcel.readParcelable(classLoader);
            rawContactDelta.f1988b = (Uri) parcel.readParcelable(classLoader);
            for (int i = 0; i < readInt; i++) {
                rawContactDelta.a((ValuesDelta) parcel.readParcelable(classLoader));
            }
            return rawContactDelta;
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ RawContactDelta[] newArray(int i) {
            return new RawContactDelta[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public ValuesDelta f1987a;

    /* renamed from: b  reason: collision with root package name */
    public Uri f1988b = ContactsContract.RawContacts.CONTENT_URI;
    public final HashMap<String, ArrayList<ValuesDelta>> c = s.a();
    private final String d = "vnd.android.cursor.item/prodid";
    private final String e = "MOBILE";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/RawContactDelta$ValuesDelta.class */
    public static class ValuesDelta implements Parcelable {

        /* renamed from: b  reason: collision with root package name */
        protected ContentValues f1989b;
        protected ContentValues c;
        protected String d = "_id";
        public boolean e;
        protected static int f = -1;
        public static final Parcelable.Creator<ValuesDelta> CREATOR = new Parcelable.Creator<ValuesDelta>() { // from class: com.android.contacts.model.RawContactDelta.ValuesDelta.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ ValuesDelta createFromParcel(Parcel parcel) {
                ValuesDelta valuesDelta = new ValuesDelta();
                valuesDelta.a(parcel);
                return valuesDelta;
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ ValuesDelta[] newArray(int i) {
                return new ValuesDelta[i];
            }
        };

        public static ValuesDelta a(ValuesDelta valuesDelta, ValuesDelta valuesDelta2) {
            ValuesDelta valuesDelta3;
            if (valuesDelta != null || (!valuesDelta2.j() && !valuesDelta2.k())) {
                valuesDelta3 = valuesDelta;
                if (valuesDelta == null) {
                    valuesDelta3 = new ValuesDelta();
                }
                if (!valuesDelta3.c()) {
                    valuesDelta3.c = valuesDelta2.p();
                } else {
                    valuesDelta3.c = valuesDelta2.c;
                }
            } else {
                valuesDelta3 = null;
            }
            return valuesDelta3;
        }

        private boolean a(ValuesDelta valuesDelta) {
            boolean z;
            Iterator<String> it = e().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                String next = it.next();
                String a2 = a(next);
                String a3 = valuesDelta.a(next);
                if (a2 == null) {
                    if (a3 != null) {
                        z = false;
                        break;
                    }
                } else if (!a2.equals(a3)) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        public static ValuesDelta b(ContentValues contentValues) {
            ValuesDelta valuesDelta = new ValuesDelta();
            valuesDelta.f1989b = contentValues;
            valuesDelta.c = new ContentValues();
            return valuesDelta;
        }

        public static ValuesDelta c(ContentValues contentValues) {
            ValuesDelta valuesDelta = new ValuesDelta();
            valuesDelta.f1989b = null;
            valuesDelta.c = contentValues;
            ContentValues contentValues2 = valuesDelta.c;
            String str = valuesDelta.d;
            int i = f;
            f = i - 1;
            contentValues2.put(str, Integer.valueOf(i));
            return valuesDelta;
        }

        private void d() {
            if (this.c == null) {
                this.c = new ContentValues();
            }
        }

        private Set<String> e() {
            HashSet hashSet = new HashSet();
            if (this.f1989b != null) {
                for (Map.Entry<String, Object> entry : this.f1989b.valueSet()) {
                    hashSet.add(entry.getKey());
                }
            }
            if (this.c != null) {
                for (Map.Entry<String, Object> entry2 : this.c.valueSet()) {
                    hashSet.add(entry2.getKey());
                }
            }
            return hashSet;
        }

        public final ContentProviderOperation.Builder a(Uri uri) {
            ContentProviderOperation.Builder builder;
            if (n()) {
                this.c.remove(this.d);
                builder = ContentProviderOperation.newInsert(uri);
                builder.withValues(this.c);
            } else if (j()) {
                builder = ContentProviderOperation.newDelete(uri);
                builder.withSelection(this.d + "=" + a(), null);
            } else if (l()) {
                builder = ContentProviderOperation.newUpdate(uri);
                builder.withSelection(this.d + "=" + a(), null);
                builder.withValues(this.c);
            } else {
                builder = null;
            }
            return builder;
        }

        public final Integer a(String str, Integer num) {
            Integer num2;
            if (this.c == null || !this.c.containsKey(str)) {
                num2 = num;
                if (this.f1989b != null) {
                    num2 = num;
                    if (this.f1989b.containsKey(str)) {
                        num2 = Integer.valueOf(DateUtils.getAsInteger(this.f1989b, str));
                    }
                }
            } else {
                num2 = Integer.valueOf(DateUtils.getAsInteger(this.c, str));
            }
            return num2;
        }

        public Long a() {
            return d(this.d);
        }

        public String a(String str) {
            return (this.c == null || !this.c.containsKey(str)) ? (this.f1989b == null || !this.f1989b.containsKey(str)) ? null : this.f1989b.getAsString(str) : this.c.getAsString(str);
        }

        public final void a(long j) {
            a(CoverUtils.CoverData.COVER_URI, j);
        }

        public final void a(Parcel parcel) {
            ClassLoader classLoader = getClass().getClassLoader();
            this.f1989b = (ContentValues) parcel.readParcelable(classLoader);
            this.c = (ContentValues) parcel.readParcelable(classLoader);
            this.d = parcel.readString();
        }

        public final void a(ValuesDelta valuesDelta, String str) {
            d();
            a(str, valuesDelta.a(str));
        }

        public final void a(String str, int i) {
            d();
            this.c.put(str, Integer.valueOf(i));
        }

        public final void a(String str, long j) {
            d();
            this.c.put(str, Long.valueOf(j));
        }

        public void a(String str, String str2) {
            d();
            this.c.put(str, str2);
        }

        public final void a(String str, byte[] bArr) {
            d();
            this.c.put(str, bArr);
        }

        public final void a(StringBuilder sb) {
            sb.append("{ ");
            sb.append("IdColumn=");
            sb.append(this.d);
            sb.append(", FromTemplate=");
            sb.append(this.e);
            sb.append(", ");
            for (String str : e()) {
                sb.append(str);
                sb.append("=");
                sb.append(a(str));
                sb.append(", ");
            }
            sb.append("}");
        }

        public final void a(byte[] bArr) {
            a("data15", bArr);
        }

        public boolean b() {
            return this.c != null;
        }

        public final boolean b(String str) {
            return (this.c != null && this.c.containsKey(str)) || (this.f1989b != null && this.f1989b.containsKey(str));
        }

        public boolean c() {
            return this.f1989b != null && this.f1989b.containsKey(this.d);
        }

        public final byte[] c(String str) {
            return (this.c == null || !this.c.containsKey(str)) ? (this.f1989b == null || !this.f1989b.containsKey(str)) ? null : this.f1989b.getAsByteArray(str) : this.c.getAsByteArray(str);
        }

        public final Long d(String str) {
            return (this.c == null || !this.c.containsKey(str)) ? (this.f1989b == null || !this.f1989b.containsKey(str)) ? null : this.f1989b.getAsLong(str) : this.c.getAsLong(str);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final Integer e(String str) {
            return a(str, (Integer) null);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ValuesDelta) {
                ValuesDelta valuesDelta = (ValuesDelta) obj;
                z = false;
                if (a(valuesDelta)) {
                    z = false;
                    if (valuesDelta.a(this)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public final void f(String str) {
            this.d = str;
        }

        public final ContentValues g() {
            return this.c;
        }

        public final void g(String str) {
            d();
            this.c.putNull(str);
        }

        public final void h(String str) {
            if (str == null) {
                g(CoverUtils.CoverData.COVER_URI);
            } else {
                a(CoverUtils.CoverData.COVER_URI, str);
            }
        }

        public final boolean h() {
            Long d = d("is_primary");
            return (d == null || d.longValue() == 0) ? false : true;
        }

        public final boolean i() {
            Long d = d("is_super_primary");
            return (d == null || d.longValue() == 0) ? false : true;
        }

        public final boolean j() {
            return c() && this.c == null;
        }

        public final boolean k() {
            return this.f1989b == null && this.c == null;
        }

        public final boolean l() {
            boolean z;
            if (c() && this.c != null && this.c.size() != 0) {
                Iterator<String> it = this.c.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    String next = it.next();
                    Object obj = this.c.get(next);
                    Object obj2 = this.f1989b.get(next);
                    if (obj2 == null) {
                        if (obj != null) {
                            z = true;
                            break;
                        }
                    } else if (!obj2.equals(obj)) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
            }
            return z;
        }

        public final boolean m() {
            return c() && this.c != null && this.c.size() == 0;
        }

        public final boolean n() {
            return !c() && this.c != null;
        }

        public final void o() {
            this.c = null;
        }

        public final ContentValues p() {
            ContentValues contentValues = new ContentValues();
            if (this.f1989b != null) {
                contentValues.putAll(this.f1989b);
            }
            if (this.c != null) {
                contentValues.putAll(this.c);
            }
            if (contentValues.containsKey(CoverUtils.CoverData.COVER_URI)) {
                contentValues.remove("group_sourceid");
            }
            return contentValues;
        }

        public final Long q() {
            return d(CoverUtils.CoverData.COVER_URI);
        }

        public final void r() {
            a("is_super_primary", 1);
        }

        public final boolean s() {
            return b(CoverUtils.CoverData.COVER_TYPE);
        }

        public final int t() {
            return a(CoverUtils.CoverData.COVER_TYPE, (Integer) null).intValue();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            a(sb);
            return sb.toString();
        }

        public final Long u() {
            return d(CoverUtils.CoverData.COVER_TYPE);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1989b, i);
            parcel.writeParcelable(this.c, i);
            parcel.writeString(this.d);
        }
    }

    public RawContactDelta() {
    }

    public RawContactDelta(ValuesDelta valuesDelta) {
        this.f1987a = valuesDelta;
    }

    private ContentProviderOperation.Builder a(Long l, int i) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(this.f1988b);
        newUpdate.withValue("aggregation_mode", Integer.valueOf(i));
        newUpdate.withSelection("_id=" + l, null);
        return newUpdate;
    }

    public static RawContactDelta a(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2) {
        RawContactDelta rawContactDelta3;
        ValuesDelta valuesDelta;
        ValuesDelta valuesDelta2 = rawContactDelta2.f1987a;
        if (rawContactDelta == null) {
            rawContactDelta3 = null;
            if (!valuesDelta2.j()) {
                if (valuesDelta2.k()) {
                    rawContactDelta3 = null;
                }
            }
            return rawContactDelta3;
        }
        rawContactDelta3 = rawContactDelta;
        if (rawContactDelta == null) {
            rawContactDelta3 = new RawContactDelta();
        }
        rawContactDelta3.f1987a = ValuesDelta.a(rawContactDelta3.f1987a, rawContactDelta2.f1987a);
        for (ArrayList<ValuesDelta> arrayList : rawContactDelta2.c.values()) {
            Iterator<ValuesDelta> it = arrayList.iterator();
            while (it.hasNext()) {
                ValuesDelta next = it.next();
                Long a2 = next.a();
                if (a2 != null) {
                    for (ArrayList<ValuesDelta> arrayList2 : rawContactDelta3.c.values()) {
                        Iterator<ValuesDelta> it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            valuesDelta = it2.next();
                            if (a2.equals(valuesDelta.a())) {
                                break;
                            }
                        }
                    }
                }
                valuesDelta = null;
                ValuesDelta a3 = ValuesDelta.a(valuesDelta, next);
                if (valuesDelta == null && a3 != null) {
                    rawContactDelta3.a(a3);
                }
            }
        }
        return rawContactDelta3;
    }

    public static RawContactDelta a(e eVar) {
        RawContactDelta rawContactDelta = new RawContactDelta();
        rawContactDelta.f1987a = ValuesDelta.b(eVar.f2032b);
        rawContactDelta.f1987a.f("_id");
        for (a aVar : eVar.h()) {
            rawContactDelta.a(ValuesDelta.b(aVar.f1994a));
        }
        return rawContactDelta;
    }

    private static void a(ArrayList<ContentProviderOperation> arrayList, ContentProviderOperation.Builder builder) {
        if (builder != null) {
            arrayList.add(builder.build());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
        if (r4 == 2) goto L_0x0017;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
        if (r4 == 3) goto L_0x0028;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0036, code lost:
        if (r4 == 1) goto L_0x0039;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(int r3, int r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r3
            r1 = 2
            if (r0 != r1) goto L_0x000b
            r0 = r5
            r6 = r0
        L_0x0009:
            r0 = r6
            return r0
        L_0x000b:
            r0 = r3
            r1 = 3
            if (r0 != r1) goto L_0x0017
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 2
            if (r0 != r1) goto L_0x0009
        L_0x0017:
            r0 = r3
            r1 = 1
            if (r0 != r1) goto L_0x0028
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x0028
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 3
            if (r0 != r1) goto L_0x0009
        L_0x0028:
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x0039
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L_0x0039
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L_0x0009
        L_0x0039:
            r0 = 1
            r6 = r0
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.RawContactDelta.a(int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
        if (r4 == 1) goto L_0x0017;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
        if (r4 == 2) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(int r3, int r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r3
            r1 = 1
            if (r0 != r1) goto L_0x000b
            r0 = r5
            r6 = r0
        L_0x0009:
            r0 = r6
            return r0
        L_0x000b:
            r0 = r3
            r1 = 2
            if (r0 != r1) goto L_0x0017
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L_0x0009
        L_0x0017:
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x0023
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 2
            if (r0 != r1) goto L_0x0009
        L_0x0023:
            r0 = 1
            r6 = r0
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.RawContactDelta.b(int, int):boolean");
    }

    public final ValuesDelta a(ValuesDelta valuesDelta) {
        a(valuesDelta.a("mimetype"), true).add(valuesDelta);
        return valuesDelta;
    }

    public final ValuesDelta a(String str) {
        ValuesDelta valuesDelta;
        ArrayList<ValuesDelta> a2 = a(str, false);
        if (a2 == null) {
            valuesDelta = null;
        } else {
            Iterator<ValuesDelta> it = a2.iterator();
            while (true) {
                if (it.hasNext()) {
                    valuesDelta = it.next();
                    if (valuesDelta.h()) {
                        break;
                    }
                } else {
                    valuesDelta = a2.size() > 0 ? a2.get(0) : null;
                }
            }
        }
        return valuesDelta;
    }

    public final com.android.contacts.model.account.a a(Context context) {
        ContentValues p = this.f1987a.p();
        return a.a(context).a(p.getAsString(SelectAccountActivity.ACCOUNT_TYPE), p.getAsString(SelectAccountActivity.DATA_SET));
    }

    public final com.android.contacts.model.account.a a(a aVar) {
        return aVar.a(c(), d());
    }

    public final Long a() {
        return this.f1987a.d("_id");
    }

    public final ArrayList<ValuesDelta> a(String str, boolean z) {
        ArrayList<ValuesDelta> arrayList = this.c.get(str);
        ArrayList<ValuesDelta> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = arrayList;
            if (z) {
                arrayList2 = new ArrayList<>();
                this.c.put(str, arrayList2);
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0158, code lost:
        if (a(r19.t(), r0.t()) != false) goto L_0x015b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0290, code lost:
        if (b(r20.t(), r0.t()) != false) goto L_0x0293;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.ArrayList<android.content.ContentProviderOperation> r7) {
        /*
            Method dump skipped, instructions count: 1267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.RawContactDelta.a(java.util.ArrayList):void");
    }

    public final int b(String str, boolean z) {
        int i = 0;
        ArrayList<ValuesDelta> a2 = a(str, false);
        if (a2 != null) {
            Iterator<ValuesDelta> it = a2.iterator();
            i = 0;
            while (it.hasNext()) {
                ValuesDelta next = it.next();
                if (!z || next.b()) {
                    i++;
                }
            }
        }
        return i;
    }

    public final String b() {
        return this.f1987a.a(SelectAccountActivity.ACCOUNT_NAME);
    }

    public final boolean b(String str) {
        return this.c.containsKey(str);
    }

    public final String c() {
        return this.f1987a.a(SelectAccountActivity.ACCOUNT_TYPE);
    }

    public final String d() {
        return this.f1987a.a(SelectAccountActivity.DATA_SET);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj instanceof RawContactDelta) {
            RawContactDelta rawContactDelta = (RawContactDelta) obj;
            if (rawContactDelta.f1987a.equals(this.f1987a)) {
                Iterator<ArrayList<ValuesDelta>> it = this.c.values().iterator();
                loop0: while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    Iterator<ValuesDelta> it2 = it.next().iterator();
                    while (it2.hasNext()) {
                        ValuesDelta next = it2.next();
                        Iterator<ArrayList<ValuesDelta>> it3 = rawContactDelta.c.values().iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                z2 = false;
                                break;
                            }
                            Iterator<ValuesDelta> it4 = it3.next().iterator();
                            while (it4.hasNext()) {
                                if (it4.next().equals(next)) {
                                    z2 = true;
                                    break;
                                }
                            }
                        }
                        if (!z2) {
                            z = false;
                            break loop0;
                        }
                    }
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n(");
        sb.append("Uri=");
        sb.append(this.f1988b);
        sb.append(", Values=");
        sb.append(this.f1987a != null ? this.f1987a.toString() : "null");
        sb.append(", Entries={");
        for (ArrayList<ValuesDelta> arrayList : this.c.values()) {
            Iterator<ValuesDelta> it = arrayList.iterator();
            while (it.hasNext()) {
                sb.append("\n\t");
                it.next().a(sb);
            }
        }
        sb.append("\n})\n");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 0;
        for (String str : this.c.keySet()) {
            i2 = b(str, false) + i2;
        }
        parcel.writeInt(i2);
        parcel.writeParcelable(this.f1987a, i);
        parcel.writeParcelable(this.f1988b, i);
        for (ArrayList<ValuesDelta> arrayList : this.c.values()) {
            Iterator<ValuesDelta> it = arrayList.iterator();
            while (it.hasNext()) {
                parcel.writeParcelable(it.next(), i);
            }
        }
    }
}
