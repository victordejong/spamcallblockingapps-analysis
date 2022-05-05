package p459j.p460a.p474c0.p475c;

import android.database.Cursor;
import android.database.MatrixCursor;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12197q;
/* renamed from: j.a.c0.c.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/m.class */
public class C11537m {

    /* renamed from: a */
    public Cursor f25782a;

    /* renamed from: b */
    public Cursor f25783b;

    /* renamed from: j.a.c0.c.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/m$a.class */
    public class C11538a implements Comparator<Object[]> {

        /* renamed from: a */
        public final /* synthetic */ SimpleArrayMap f25784a;

        public C11538a(C11537m mVar, SimpleArrayMap simpleArrayMap) {
            this.f25784a = simpleArrayMap;
        }

        /* renamed from: a */
        public int compare(Object[] objArr, Object[] objArr2) {
            String str = (String) objArr[6];
            String str2 = (String) objArr2[6];
            C12151d.m6999b(this.f25784a.containsKey(str) && this.f25784a.containsKey(str2));
            int intValue = ((Integer) this.f25784a.get(str)).intValue();
            int intValue2 = ((Integer) this.f25784a.get(str2)).intValue();
            int i = -1;
            if (intValue < intValue2) {
                return -1;
            }
            if (intValue > intValue2) {
                return 1;
            }
            int intValue3 = ((Integer) objArr[4]).intValue();
            int intValue4 = ((Integer) objArr2[4]).intValue();
            if (intValue3 == 2 && intValue4 == 2) {
                return 0;
            }
            if (intValue3 == 2) {
                return -1;
            }
            if (intValue4 == 2) {
                return 1;
            }
            if (intValue3 >= intValue4) {
                i = intValue3 == intValue4 ? 0 : 1;
            }
            return i;
        }
    }

    /* renamed from: a */
    public Cursor m9209a() {
        Cursor cursor = this.f25783b;
        if (cursor == null || this.f25782a == null) {
            return null;
        }
        C12151d.m6999b(!cursor.isClosed());
        C12151d.m6999b(!this.f25782a.isClosed());
        MatrixCursor matrixCursor = new MatrixCursor(C12197q.C12201d.f27361a);
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        int position = this.f25783b.getPosition();
        this.f25783b.moveToPosition(-1);
        int i = 0;
        while (this.f25783b.moveToNext()) {
            simpleArrayMap.put(this.f25783b.getString(3), Integer.valueOf(i));
            i++;
        }
        this.f25783b.moveToPosition(position);
        ArrayList arrayList = new ArrayList(this.f25783b.getCount());
        int position2 = this.f25782a.getPosition();
        this.f25782a.moveToPosition(-1);
        while (this.f25782a.moveToNext()) {
            if (simpleArrayMap.containsKey(this.f25782a.getString(6))) {
                Object[] objArr = new Object[C12197q.C12201d.f27361a.length];
                objArr[7] = Long.valueOf(this.f25782a.getLong(7));
                objArr[0] = Long.valueOf(this.f25782a.getLong(0));
                objArr[6] = this.f25782a.getString(6);
                objArr[1] = this.f25782a.getString(1);
                objArr[2] = this.f25782a.getString(2);
                objArr[3] = this.f25782a.getString(3);
                objArr[4] = Integer.valueOf(this.f25782a.getInt(4));
                objArr[5] = this.f25782a.getString(5);
                arrayList.add(objArr);
            }
        }
        this.f25782a.moveToPosition(position2);
        Collections.sort(arrayList, new C11538a(this, simpleArrayMap));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            matrixCursor.addRow((Object[]) it.next());
        }
        return matrixCursor;
    }

    /* renamed from: a */
    public C11537m m9208a(Cursor cursor) {
        this.f25782a = cursor;
        return this;
    }

    /* renamed from: b */
    public C11537m m9206b(Cursor cursor) {
        this.f25783b = cursor;
        return this;
    }

    /* renamed from: b */
    public void m9207b() {
        this.f25782a = null;
        this.f25783b = null;
    }
}
