package com.liulishuo.filedownloader.model;

import p092e.p096e.p097a.AbstractC3005a;
/* renamed from: com.liulishuo.filedownloader.model.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/b.class */
public class C2775b {
    /* renamed from: a */
    public static boolean m1779a(int i) {
        return i > 0;
    }

    /* renamed from: b */
    public static boolean m1778b(int i, int i2) {
        if ((i != 3 && i != 5 && i == i2) || m1775e(i)) {
            return false;
        }
        if (i >= 1 && i <= 6 && i2 >= 10 && i2 <= 11) {
            return false;
        }
        if (i == 1) {
            return i2 != 0;
        }
        if (i == 2) {
            return (i2 == 0 || i2 == 1 || i2 == 6) ? false : true;
        }
        if (i == 3) {
            return (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 6) ? false : true;
        }
        if (i == 5) {
            return (i2 == 1 || i2 == 6) ? false : true;
        }
        if (i != 6) {
            return true;
        }
        return (i2 == 0 || i2 == 1) ? false : true;
    }

    /* renamed from: c */
    public static boolean m1777c(int i, int i2) {
        if ((i != 3 && i != 5 && i == i2) || m1775e(i)) {
            return false;
        }
        if (i2 == -2 || i2 == -1) {
            return true;
        }
        if (i == 0) {
            return i2 == 10;
        }
        if (i == 1) {
            return i2 == 6;
        }
        if (i == 2 || i == 3) {
            return i2 == -3 || i2 == 3 || i2 == 5;
        }
        if (i == 5 || i == 6) {
            return i2 == 2 || i2 == 5;
        }
        if (i == 10) {
            return i2 == 11;
        }
        if (i != 11) {
            return false;
        }
        return i2 == -4 || i2 == -3 || i2 == 1;
    }

    /* renamed from: d */
    public static boolean m1776d(AbstractC3005a aVar) {
        return aVar.mo557e() == 0 || aVar.mo557e() == 3;
    }

    /* renamed from: e */
    public static boolean m1775e(int i) {
        return i < 0;
    }
}
