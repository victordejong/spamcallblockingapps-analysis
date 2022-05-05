package p459j.p460a.p474c0.p491g.p492a0;

import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.SectionIndexer;
import java.util.ArrayList;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.g.a0.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/f.class */
public class C11920f implements SectionIndexer {

    /* renamed from: a */
    public String[] f26717a;

    /* renamed from: b */
    public ArrayList<Integer> f26718b;

    public C11920f(Cursor cursor) {
        m7922a(cursor);
    }

    /* renamed from: a */
    public final void m7922a(Cursor cursor) {
        if (!m7921b(cursor)) {
            C12153d0.m6981e("MessagingApp", "contact provider didn't provide contact label information, fall back to using display name!");
            m7920c(cursor);
        }
    }

    /* renamed from: b */
    public final boolean m7921b(Cursor cursor) {
        Bundle extras;
        if (cursor == null || (extras = cursor.getExtras()) == null) {
            return false;
        }
        String[] stringArray = extras.getStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES");
        int[] intArray = extras.getIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS");
        if (stringArray == null || intArray == null || stringArray.length != intArray.length) {
            return false;
        }
        this.f26717a = stringArray;
        this.f26718b = new ArrayList<>(intArray.length);
        int i = 0;
        for (int i2 = 0; i2 < intArray.length; i2++) {
            if (TextUtils.isEmpty(this.f26717a[i2])) {
                this.f26717a[i2] = " ";
            } else if (!this.f26717a[i2].equals(" ")) {
                String[] strArr = this.f26717a;
                strArr[i2] = strArr[i2].trim();
            }
            this.f26718b.add(Integer.valueOf(i));
            i += intArray[i2];
        }
        return true;
    }

    /* renamed from: c */
    public final void m7920c(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        this.f26718b = new ArrayList<>();
        if (cursor != null) {
            cursor.moveToPosition(-1);
            int i = 0;
            while (cursor.moveToNext()) {
                String string = cursor.getString(8);
                String upperCase = TextUtils.isEmpty(string) ? " " : string.substring(0, 1).toUpperCase();
                int size = arrayList.size() - 1;
                if (!TextUtils.equals(size >= 0 ? (String) arrayList.get(size) : null, upperCase)) {
                    arrayList.add(upperCase);
                    this.f26718b.add(Integer.valueOf(i));
                }
                i++;
            }
        }
        this.f26717a = new String[arrayList.size()];
        arrayList.toArray(this.f26717a);
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        if (this.f26718b.isEmpty()) {
            return 0;
        }
        ArrayList<Integer> arrayList = this.f26718b;
        return arrayList.get(Math.max(Math.min(i, arrayList.size() - 1), 0)).intValue();
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        int i2 = 0;
        if (this.f26718b.isEmpty()) {
            return 0;
        }
        int size = this.f26718b.size() - 1;
        if (i <= this.f26718b.get(0).intValue()) {
            return 0;
        }
        int i3 = size;
        if (i >= this.f26718b.get(size).intValue()) {
            return size;
        }
        while (i2 <= i3) {
            int i4 = (i2 + i3) / 2;
            int intValue = this.f26718b.get(i4).intValue();
            int i5 = i4 + 1;
            int intValue2 = this.f26718b.get(i5).intValue();
            if (i >= intValue && i < intValue2) {
                return i4;
            }
            if (i < intValue) {
                i3 = i4 - 1;
            } else if (i >= intValue2) {
                i2 = i5;
            }
        }
        C12151d.m7005a("Invalid section indexer state: couldn't find section for pos " + i);
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.f26717a;
    }
}
