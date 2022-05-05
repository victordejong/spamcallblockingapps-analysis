package com.android.contacts.j;

import android.util.LongSparseArray;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final long f1545a;

    /* renamed from: b  reason: collision with root package name */
    public final String[] f1546b;
    public final long c;
    public final String d;
    public final String[] e;
    public ArrayList<a> f;
    public final int g;
    public boolean h;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f1547a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1548b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final String h;
        public final String i;
        public final String j;

        public a(int i, String[] strArr) {
            this.f1548b = i;
            this.f1547a = strArr[0] == null ? 0L : Long.parseLong(strArr[0]);
            this.f = (strArr[1] == null || !com.asus.contacts.a.d(strArr[1])) ? 0 : Integer.parseInt(strArr[1]);
            this.g = (strArr[2] == null || !com.asus.contacts.a.d(strArr[2])) ? 0 : Integer.parseInt(strArr[2]);
            this.c = (strArr[3] == null || !com.asus.contacts.a.d(strArr[3])) ? 0 : Integer.parseInt(strArr[3]);
            this.d = (strArr[4] == null || !com.asus.contacts.a.d(strArr[4])) ? -1 : Integer.parseInt(strArr[4]);
            this.h = strArr[5];
            int i2 = 0;
            if (strArr[6] != null) {
                i2 = 0;
                if (com.asus.contacts.a.d(strArr[6])) {
                    i2 = Integer.parseInt(strArr[6]);
                }
            }
            this.e = i2;
            this.i = strArr[7];
            this.j = strArr[8];
        }

        public final String a() {
            return new String(this.f1548b + "," + this.f1547a + "," + this.f + "," + this.g + "," + this.c + "," + this.d + "," + this.h + "," + this.e + "," + this.i + "," + this.j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public String f1549a;

        /* renamed from: b  reason: collision with root package name */
        public LongSparseArray<String[]> f1550b = new LongSparseArray<>(0);

        public b(String str) {
            this.f1549a = str;
        }
    }

    public i(int i, long j, long j2, String str, String[] strArr, String[] strArr2, ArrayList<a> arrayList) {
        boolean z = true;
        this.f1545a = j;
        this.f1546b = strArr;
        this.c = j2;
        this.d = str;
        this.e = strArr2 == null ? new String[]{BuildConfig.FLAVOR, "0", "0", "-1", "0", "0"} : strArr2;
        this.f = arrayList;
        this.g = i;
        this.h = this.f.size() <= 0 ? false : z;
    }
}
