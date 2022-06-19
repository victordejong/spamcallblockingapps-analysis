package p193e.p1485h.p1486a.p1493c.p1504t0;

import java.util.HashSet;
import java.util.Iterator;
import p193e.p1485h.p1486a.p1493c.AbstractC22839u;
import p193e.p1485h.p1486a.p1493c.C22741j0;
/* renamed from: e.h.a.c.t0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/t0/c.class */
public class C22834c {

    /* renamed from: a */
    public final HashSet<String> f63358a;

    public C22834c(HashSet<String> hashSet) {
        HashSet<String> hashSet2 = new HashSet<>();
        this.f63358a = hashSet2;
        hashSet2.addAll(hashSet);
    }

    public C22834c(String[] strArr) {
        char[] charArray;
        this.f63358a = new HashSet<>();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        for (String str : strArr) {
            if (C22741j0.m7849a(AbstractC22839u.f63387c, str)) {
                HashSet<String> hashSet = this.f63358a;
                String str2 = str;
                if (str != null) {
                    if (str.isEmpty()) {
                        str2 = str;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        boolean z = true;
                        for (char c : str.toCharArray()) {
                            if (Character.isSpaceChar(c)) {
                                z = true;
                            } else if (z) {
                                z = false;
                                c = Character.toTitleCase(c);
                            } else {
                                c = Character.toLowerCase(c);
                            }
                            sb.append(c);
                        }
                        str2 = sb.toString();
                    }
                }
                hashSet.add(str2);
            }
        }
    }

    /* renamed from: a */
    public boolean m7724a() {
        return !this.f63358a.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C22834c.class == obj.getClass()) {
            return this.f63358a.equals(((C22834c) obj).f63358a);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f63358a.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (AbstractC22839u.f63387c.contains(next)) {
                sb.append(next);
                sb.append(it.hasNext() ? "," : "");
            }
        }
        return sb.toString();
    }
}
