package p193e.p194a.p1342w4.p1345t.p1346a;

import java.util.List;
import p193e.p194a.p1342w4.p1345t.p1346a.C21297c;
/* renamed from: e.a.w4.t.a.e */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/a/e.class */
public class C21300e {

    /* renamed from: a */
    public int f59665a;

    /* renamed from: b */
    public int f59666b;

    /* renamed from: c */
    public String f59667c;

    /* renamed from: d */
    public String f59668d;

    /* renamed from: e */
    public List<Integer> f59669e;

    /* renamed from: a */
    public boolean m9928a(C21297c.C21298a[] c21298aArr, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        if (i >= c21298aArr.length) {
            return false;
        }
        C21297c.C21298a c21298a = c21298aArr[i];
        int size = this.f59669e.size();
        if (size == 0) {
            this.f59666b = 0;
            this.f59665a = 0;
            return false;
        }
        int i6 = -1;
        if (size >= 2 && c21298a.f59658a.length() >= 2 && this.f59668d.charAt(0) == '0' && this.f59668d.charAt(1) == '0' && ((c21298a.f59658a.charAt(0) == '0' && c21298a.f59658a.charAt(1) == '0') || c21298a.f59658a.charAt(0) == '+')) {
            i2 = c21298a.f59658a.charAt(0) == '+' ? -1 : 0;
            if (size == 2) {
                this.f59665a = 0;
                if (c21298a.f59658a.charAt(0) == '+') {
                    this.f59666b = 1;
                    return true;
                }
                this.f59666b = 2;
                return true;
            }
            i3 = 2;
        } else {
            i2 = 0;
            i3 = 0;
        }
        if (c21298a.f59658a.length() < 2 || this.f59668d.charAt(0) != '+' || c21298a.f59658a.charAt(0) != '0' || c21298a.f59658a.charAt(1) != '0') {
            i4 = i3;
            i5 = 0;
            i6 = i2;
            z2 = false;
        } else if (size == 1) {
            this.f59665a = 0;
            this.f59666b = 2;
            return true;
        } else {
            z2 = true;
            i4 = 1;
            i5 = 2;
        }
        this.f59665a = c21298aArr[i].f59661d;
        int i7 = i5 + i4 + i6;
        int i8 = i5;
        int i9 = i7;
        boolean z4 = z2;
        int i10 = i;
        while (true) {
            List<Integer> list = c21298aArr[i10].f59660c.get(0);
            int i11 = i10;
            int i12 = 0;
            while (i4 < size) {
                while (i9 >= list.size()) {
                    i11++;
                    if (list.size() == 0 && i4 == 0) {
                        this.f59665a++;
                    }
                    if (i11 >= c21298aArr.length) {
                        this.f59666b = 0;
                        this.f59665a = 0;
                        return false;
                    }
                    list = c21298aArr[i11].f59660c.get(0);
                    i9 = 0;
                    i12 = 0;
                }
                int intValue = list.get(i9).intValue();
                int intValue2 = this.f59669e.get(i4).intValue();
                if (this.f59668d.charAt(i4) != '+' || (i9 == 0 && c21298aArr[i11].f59658a.charAt(0) == '+')) {
                    if (intValue2 == intValue) {
                        i9++;
                    } else if (!z) {
                        i12++;
                        if (i12 < c21298aArr[i11].f59660c.size()) {
                            i4 -= i9 + 1;
                            list = c21298aArr[i11].f59660c.get(i12);
                            i9 = 0;
                        }
                    }
                    i4++;
                }
                z3 = false;
            }
            z3 = true;
            if (z3) {
                this.f59665a += i8;
                if (C21297c.m9933c(c21298aArr[i10].f59658a.charAt(0))) {
                    this.f59665a++;
                }
                if (z4) {
                    this.f59665a = 0;
                }
                this.f59666b = c21298aArr[i11].f59661d + i9;
                if (C21297c.m9933c(c21298aArr[i11].f59658a.charAt(0))) {
                    this.f59666b++;
                }
                if (this.f59666b <= c21298aArr[i11].f59662e) {
                    return true;
                }
                this.f59666b = c21298aArr[i11].f59662e;
                return true;
            } else if (!z) {
                this.f59666b = 0;
                this.f59665a = 0;
                return false;
            } else {
                int i13 = i8 + 1;
                if (i13 >= list.size()) {
                    i10++;
                    if (i10 >= c21298aArr.length) {
                        this.f59666b = 0;
                        this.f59665a = 0;
                        return false;
                    }
                    this.f59665a = c21298aArr[i10].f59661d;
                    i9 = 0;
                    i13 = 0;
                } else {
                    i9 = i13;
                }
                z4 = false;
                i4 = 0;
                i8 = i13;
            }
        }
    }
}
