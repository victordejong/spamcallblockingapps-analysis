package com.android.contacts.j;

import android.text.TextUtils;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final String f1570a = "SmartDialUnbundle";

    /* renamed from: b  reason: collision with root package name */
    LinkedList<b> f1571b = new LinkedList<>();
    LinkedList<b> c = new LinkedList<>();
    private Set<Integer> d = new HashSet();
    private Map<String, Set<Integer>> e = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/q$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        b f1572a;

        /* renamed from: b  reason: collision with root package name */
        String f1573b;
        int c;
        int d;
        boolean[] e;
        boolean[] f;

        private a() {
        }

        /* synthetic */ a(q qVar, byte b2) {
            this();
        }

        public final void a() {
            this.c++;
        }

        public final void a(int i) {
            this.d = i;
            this.f[this.d] = true;
            boolean[] zArr = this.e;
            b bVar = this.f1572a;
            zArr[bVar.c[this.d]] = true;
        }

        public final void a(a aVar) {
            aVar.f1573b = this.f1573b;
            aVar.f1572a = this.f1572a;
            aVar.c = this.c;
            aVar.d = this.d;
            aVar.e = Arrays.copyOf(this.e, this.e.length);
            aVar.f = Arrays.copyOf(this.f, this.f.length);
        }

        public final void a(b bVar, String str) {
            this.f1573b = str;
            this.f1572a = bVar;
            this.c = -1;
            this.d = -1;
            this.f = new boolean[this.f1572a.a()];
            this.e = new boolean[this.f1572a.a()];
            Arrays.fill(this.f, false);
            Arrays.fill(this.e, false);
        }

        public final boolean b(int i) {
            return this.e[this.f1572a.c[i]];
        }

        public final int[] b() {
            return this.f1572a.f1575b.get(Character.valueOf(this.f1573b.charAt(this.c)));
        }

        public final boolean c() {
            return this.c + 1 < this.f1573b.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/q$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        p f1574a;

        /* renamed from: b  reason: collision with root package name */
        HashMap<Character, int[]> f1575b = new HashMap<>();
        int[] c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(p pVar) {
            char[] charArray;
            this.f1574a = pVar;
            this.c = new int[this.f1574a.c.length()];
            HashMap hashMap = new HashMap();
            int i = 0;
            int i2 = 0;
            for (char c : this.f1574a.c.toCharArray()) {
                if ('?' == c) {
                    i++;
                } else {
                    ArrayList arrayList = (ArrayList) hashMap.get(Character.valueOf(c));
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                        hashMap.put(Character.valueOf(c), arrayList2);
                    }
                    arrayList2.add(Integer.valueOf(i2));
                    this.c[i2] = i;
                }
                i2++;
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                int[] iArr = new int[((ArrayList) entry.getValue()).size()];
                Integer[] numArr = (Integer[]) ((ArrayList) entry.getValue()).toArray(new Integer[0]);
                for (int i3 = 0; i3 < iArr.length; i3++) {
                    iArr[i3] = numArr[i3].intValue();
                }
                this.f1575b.put(entry.getKey(), iArr);
            }
        }

        public final int a() {
            return this.f1574a.c.length();
        }
    }

    private void a(a aVar, LinkedList<r> linkedList, int i) {
        if (!aVar.c()) {
            linkedList.add(new r(aVar.f1572a.f1574a, aVar.f, i));
            return;
        }
        aVar.a();
        int[] b2 = aVar.b();
        if (b2 != null) {
            a aVar2 = new a(this, (byte) 0);
            for (int i2 : b2) {
                if (i2 == aVar.d + 1 || !aVar.b(i2)) {
                    aVar.a(aVar2);
                    aVar2.a(i2);
                    a(aVar2, linkedList, i);
                }
            }
        }
    }

    private void a(String str, b bVar, LinkedList<r> linkedList, int i) {
        if (!this.d.contains(Integer.valueOf(bVar.f1574a.f1568a))) {
            a aVar = new a(this, (byte) 0);
            aVar.a(bVar, str);
            if (bVar.f1574a.f1569b == 0) {
                if (l.a().f1556b) {
                    b(aVar, linkedList, i);
                } else {
                    a(aVar, linkedList, i);
                }
            } else if (bVar.f1574a.f1569b == 1) {
                if (l.a().c) {
                    b(aVar, linkedList, i);
                } else {
                    a(aVar, linkedList, i);
                }
                if (!TextUtils.isEmpty(h.e()) && str.startsWith("0")) {
                    String str2 = BuildConfig.FLAVOR;
                    if (h.e().equals("TW")) {
                        str2 = "+886" + str.substring(1);
                    } else if (h.e().equals("CN")) {
                        str2 = "+86" + str.substring(1);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        a aVar2 = new a(this, (byte) 0);
                        aVar2.a(bVar, str2);
                        if (l.a().c) {
                            b(aVar2, linkedList, i);
                        } else {
                            a(aVar2, linkedList, i);
                        }
                    }
                }
            } else {
                Log.e("SmartDialUnbundle", "Query error due to undefined wordinfo type");
            }
        }
    }

    private void b(a aVar, LinkedList<r> linkedList, int i) {
        if (!aVar.c()) {
            linkedList.add(new r(aVar.f1572a.f1574a, aVar.f, i));
            return;
        }
        aVar.a();
        int[] b2 = aVar.b();
        if (b2 != null) {
            a aVar2 = new a(this, (byte) 0);
            int length = b2.length;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = b2[i2];
                if (i3 != aVar.d + 1) {
                    if (!aVar.b(i3)) {
                        if (!(i3 == 0 ? true : aVar.f1572a.c[i3] != aVar.f1572a.c[i3 - 1])) {
                        }
                    }
                }
                aVar.a(aVar2);
                aVar2.a(i3);
                b(aVar2, linkedList, i);
            }
        }
    }

    public final void a() {
        if (this.e != null) {
            this.e.clear();
        }
    }

    public final r[] a(String str) {
        Set<Integer> set = null;
        int length = str.length();
        while (length > 0) {
            Set<Integer> set2 = this.e.get(str.substring(0, length));
            set = set2;
            if (set2 != null) {
                break;
            }
            length--;
            set = set2;
        }
        LinkedList<r> linkedList = new LinkedList<>();
        if (set == null) {
            Iterator<b> it = this.f1571b.iterator();
            while (it.hasNext()) {
                a(str, it.next(), linkedList, 0);
            }
            Iterator<b> it2 = this.c.iterator();
            while (it2.hasNext()) {
                a(str, it2.next(), linkedList, 1);
            }
        } else {
            Iterator<b> it3 = this.f1571b.iterator();
            while (it3.hasNext()) {
                b next = it3.next();
                if (set.contains(Integer.valueOf(next.f1574a.f1568a))) {
                    a(str, next, linkedList, 0);
                }
            }
            Iterator<b> it4 = this.c.iterator();
            while (it4.hasNext()) {
                b next2 = it4.next();
                if (set.contains(Integer.valueOf(next2.f1574a.f1568a))) {
                    a(str, next2, linkedList, 1);
                }
            }
        }
        r[] rVarArr = (r[]) linkedList.toArray(new r[0]);
        HashSet hashSet = new HashSet();
        for (r rVar : rVarArr) {
            hashSet.add(Integer.valueOf(rVar.f1576a.f1568a));
        }
        this.e.put(str, hashSet);
        return rVarArr;
    }
}
