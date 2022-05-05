package com.android.contacts.model;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Entity;
import android.content.EntityIterator;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.model.RawContactDelta;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/RawContactDeltaList.class */
public class RawContactDeltaList extends ArrayList<RawContactDelta> implements Parcelable {
    public static final Parcelable.Creator<RawContactDeltaList> CREATOR = new Parcelable.Creator<RawContactDeltaList>() { // from class: com.android.contacts.model.RawContactDeltaList.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ RawContactDeltaList createFromParcel(Parcel parcel) {
            boolean z = false;
            RawContactDeltaList rawContactDeltaList = new RawContactDeltaList((byte) 0);
            ClassLoader classLoader = rawContactDeltaList.getClass().getClassLoader();
            int readInt = parcel.readInt();
            for (int i = 0; i < readInt; i++) {
                rawContactDeltaList.add(parcel.readParcelable(classLoader));
            }
            rawContactDeltaList.f1991b = parcel.createLongArray();
            if (parcel.readInt() != 0) {
                z = true;
            }
            rawContactDeltaList.f1990a = z;
            return rawContactDeltaList;
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ RawContactDeltaList[] newArray(int i) {
            return new RawContactDeltaList[i];
        }
    };
    private static final String c;
    private static final boolean d;

    /* renamed from: a  reason: collision with root package name */
    public boolean f1990a;

    /* renamed from: b  reason: collision with root package name */
    public long[] f1991b;

    static {
        String simpleName = RawContactDeltaList.class.getSimpleName();
        c = simpleName;
        d = Log.isLoggable(simpleName, 2);
    }

    private RawContactDeltaList() {
    }

    /* synthetic */ RawContactDeltaList(byte b2) {
        this();
    }

    public static RawContactDeltaList a(Uri uri, ContentResolver contentResolver, String str, String[] strArr) {
        EntityIterator newEntityIterator = ContactsContract.RawContacts.newEntityIterator(contentResolver.query(uri, null, str, strArr, null));
        try {
            return a(newEntityIterator);
        } finally {
            newEntityIterator.close();
        }
    }

    public static RawContactDeltaList a(RawContactDelta rawContactDelta) {
        RawContactDeltaList rawContactDeltaList = new RawContactDeltaList();
        rawContactDeltaList.add(rawContactDelta);
        return rawContactDeltaList;
    }

    public static RawContactDeltaList a(RawContactDeltaList rawContactDeltaList, RawContactDeltaList rawContactDeltaList2) {
        int i;
        RawContactDeltaList rawContactDeltaList3 = rawContactDeltaList;
        if (rawContactDeltaList == null) {
            rawContactDeltaList3 = new RawContactDeltaList();
        }
        Iterator<RawContactDelta> it = rawContactDeltaList2.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            Long a2 = next.f1987a.a();
            if (a2 != null) {
                int size = rawContactDeltaList3.size();
                i = 0;
                while (i < size) {
                    if (a2.equals(rawContactDeltaList3.a(i))) {
                        break;
                    }
                    i++;
                }
            }
            i = -1;
            RawContactDelta rawContactDelta = i == -1 ? null : rawContactDeltaList3.get(i);
            RawContactDelta a3 = RawContactDelta.a(rawContactDelta, next);
            if (rawContactDelta == null && a3 != null) {
                rawContactDeltaList3.add(a3);
            }
        }
        return rawContactDeltaList3;
    }

    public static RawContactDeltaList a(Iterator<?> it) {
        e eVar;
        RawContactDeltaList rawContactDeltaList = new RawContactDeltaList();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof Entity) {
                Entity entity = (Entity) next;
                ContentValues entityValues = entity.getEntityValues();
                ArrayList<Entity.NamedContentValues> subValues = entity.getSubValues();
                eVar = new e(null, entityValues);
                Iterator<Entity.NamedContentValues> it2 = subValues.iterator();
                while (it2.hasNext()) {
                    Entity.NamedContentValues next2 = it2.next();
                    eVar.a(next2.uri, next2.values);
                }
            } else {
                eVar = (e) next;
            }
            rawContactDeltaList.add(RawContactDelta.a(eVar));
        }
        return rawContactDeltaList;
    }

    private static String a(ArrayList<ContentProviderOperation> arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append("[\n");
        Iterator<ContentProviderOperation> it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append(",\n");
        }
        sb.append("]\n");
        return sb.toString();
    }

    private void a(ArrayList<ContentProviderOperation> arrayList, int[] iArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            for (int i2 = 0; i2 < size; i2++) {
                if (i != i2) {
                    ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
                    newUpdate.withValue("type", 2);
                    Long d2 = get(i).f1987a.d("_id");
                    int i3 = iArr[i];
                    if (d2 != null && d2.longValue() >= 0) {
                        newUpdate.withValue("raw_contact_id1", d2);
                    } else if (i3 >= 0) {
                        newUpdate.withValueBackReference("raw_contact_id1", i3);
                    }
                    Long d3 = get(i2).f1987a.d("_id");
                    int i4 = iArr[i2];
                    if (d3 != null && d3.longValue() >= 0) {
                        newUpdate.withValue("raw_contact_id2", d3);
                    } else if (i4 >= 0) {
                        newUpdate.withValueBackReference("raw_contact_id2", i4);
                    }
                    arrayList.add(newUpdate.build());
                }
            }
        }
    }

    private static ContentProviderOperation.Builder c() {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue("type", 1);
        return newUpdate;
    }

    public final int a(Context context) {
        Iterator<RawContactDelta> it = iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().a(context).d()) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    public final Long a(int i) {
        Long l;
        if (i >= 0 && i < size()) {
            RawContactDelta.ValuesDelta valuesDelta = get(i).f1987a;
            if (valuesDelta.b()) {
                l = valuesDelta.d("_id");
                return l;
            }
        }
        l = null;
        return l;
    }

    public final ArrayList<ContentProviderOperation> a() {
        long[] jArr;
        if (d) {
            Log.v(c, "buildDiff: list=" + toString());
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        long b2 = b();
        Iterator<RawContactDelta> it = iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            if (!next.f1987a.n()) {
                Long a2 = next.f1987a.a();
                Long d2 = next.f1987a.d("version");
                if (!(a2 == null || d2 == null)) {
                    ContentProviderOperation.Builder newAssertQuery = ContentProviderOperation.newAssertQuery(next.f1988b);
                    newAssertQuery.withSelection("_id=" + a2, null);
                    newAssertQuery.withValue("version", d2);
                    arrayList.add(newAssertQuery.build());
                }
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size()];
        Iterator<RawContactDelta> it2 = iterator();
        int i = 0;
        int i2 = -1;
        while (it2.hasNext()) {
            RawContactDelta next2 = it2.next();
            int size2 = arrayList.size();
            boolean n = next2.f1987a.n();
            int i3 = i + 1;
            iArr[i] = n ? size2 : -1;
            next2.a(arrayList);
            if (this.f1991b != null) {
                for (long j : this.f1991b) {
                    ContentProviderOperation.Builder c2 = c();
                    c2.withValue("raw_contact_id1", Long.valueOf(j));
                    if (b2 != -1) {
                        c2.withValue("raw_contact_id2", Long.valueOf(b2));
                    } else {
                        c2.withValueBackReference("raw_contact_id2", size2);
                    }
                    arrayList.add(c2.build());
                }
            }
            if (!n || this.f1990a) {
                i = i3;
            } else if (b2 != -1) {
                ContentProviderOperation.Builder c3 = c();
                c3.withValue("raw_contact_id1", Long.valueOf(b2));
                c3.withValueBackReference("raw_contact_id2", size2);
                arrayList.add(c3.build());
                i = i3;
            } else if (i2 == -1) {
                i = i3;
                i2 = size2;
            } else {
                ContentProviderOperation.Builder c4 = c();
                c4.withValueBackReference("raw_contact_id1", i2);
                c4.withValueBackReference("raw_contact_id2", size2);
                arrayList.add(c4.build());
                i = i3;
            }
        }
        if (this.f1990a) {
            a(arrayList, iArr);
        }
        if (arrayList.size() == size) {
            arrayList.clear();
        }
        if (d) {
            Log.v(c, "buildDiff: ops=" + a(arrayList));
        }
        return arrayList;
    }

    public final long b() {
        long j;
        Iterator<RawContactDelta> it = iterator();
        while (true) {
            if (!it.hasNext()) {
                j = -1;
                break;
            }
            Long d2 = it.next().f1987a.d("_id");
            if (d2 != null && d2.longValue() >= 0) {
                j = d2.longValue();
                break;
            }
        }
        return j;
    }

    public final RawContactDelta b(Context context) {
        int a2 = a(context);
        return a2 == -1 ? null : get(a2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return "(Split=" + this.f1990a + ", Join=[" + Arrays.toString(this.f1991b) + "], Values=" + super.toString() + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(size());
        Iterator<RawContactDelta> it = iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), i);
        }
        parcel.writeLongArray(this.f1991b);
        parcel.writeInt(this.f1990a ? 1 : 0);
    }
}
