package com.liulishuo.filedownloader.model;

import p078c.p122d.p123a.AbstractC1978a;
/* renamed from: com.liulishuo.filedownloader.model.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/b.class */
public class C9380b {
    /* renamed from: a */
    public static boolean m824a(int i) {
        return i > 0;
    }

    /* renamed from: b */
    public static boolean m823b(int i, int i2) {
        if ((i == 3 || i == 5 || i != i2) && !m820e(i)) {
            if (i >= 1 && i <= 6 && i2 >= 10 && i2 <= 11) {
                return false;
            }
            if (i == 1) {
                return i2 != 0;
            } else if (i == 2) {
                return (i2 == 0 || i2 == 1 || i2 == 6) ? false : true;
            } else if (i == 3) {
                return (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 6) ? false : true;
            } else if (i == 5) {
                return (i2 == 1 || i2 == 6) ? false : true;
            } else if (i != 6) {
                return true;
            } else {
                return (i2 == 0 || i2 == 1) ? false : true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m822c(int i, int i2) {
        if ((i == 3 || i == 5 || i != i2) && !m820e(i)) {
            if (i2 == -2 || i2 == -1) {
                return true;
            }
            if (i == 0) {
                return i2 == 10;
            } else if (i == 1) {
                return i2 == 6;
            } else if (i == 2 || i == 3) {
                return i2 == -3 || i2 == 3 || i2 == 5;
            } else if (i == 5 || i == 6) {
                return i2 == 2 || i2 == 5;
            } else if (i == 10) {
                return i2 == 11;
            } else if (i != 11) {
                return false;
            } else {
                return i2 == -4 || i2 == -3 || i2 == 1;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m821d(AbstractC1978a abstractC1978a) {
        return abstractC1978a.mo28383e() == 0 || abstractC1978a.mo28383e() == 3;
    }

    /* renamed from: e */
    public static boolean m820e(int i) {
        return i < 0;
    }
}
