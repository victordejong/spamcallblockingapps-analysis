package p282x1;

import android.os.Build;
import p186o1.EnumC3826i;
import p186o1.EnumC3836m;
/* renamed from: x1.v */
/* loaded from: classes-dex2jar.jar:x1/v.class */
public class C4848v {
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00a7 -> B:40:0x00ab). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p186o1.C3818c m369a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p282x1.C4848v.m369a(byte[]):o1.c");
    }

    /* renamed from: b */
    public static int m368b(int i) {
        if (i != 0) {
            if (i == 1) {
                return 2;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
        return 1;
    }

    /* renamed from: c */
    public static EnumC3826i m367c(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC3826i.CONNECTED;
            }
            if (i == 2) {
                return EnumC3826i.UNMETERED;
            }
            if (i == 3) {
                return EnumC3826i.NOT_ROAMING;
            }
            if (i == 4) {
                return EnumC3826i.METERED;
            }
            if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                return EnumC3826i.TEMPORARILY_UNMETERED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
        return EnumC3826i.NOT_REQUIRED;
    }

    /* renamed from: d */
    public static int m366d(int i) {
        if (i != 0) {
            if (i == 1) {
                return 2;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to OutOfQuotaPolicy");
        }
        return 1;
    }

    /* renamed from: e */
    public static EnumC3836m m365e(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC3836m.RUNNING;
            }
            if (i == 2) {
                return EnumC3836m.SUCCEEDED;
            }
            if (i == 3) {
                return EnumC3836m.FAILED;
            }
            if (i == 4) {
                return EnumC3836m.BLOCKED;
            }
            if (i == 5) {
                return EnumC3836m.CANCELLED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
        return EnumC3836m.ENQUEUED;
    }

    /* renamed from: f */
    public static int m364f(EnumC3836m enumC3836m) {
        int ordinal = enumC3836m.ordinal();
        if (ordinal != 0) {
            int i = 1;
            if (ordinal != 1) {
                i = 2;
                if (ordinal != 2) {
                    i = 3;
                    if (ordinal != 3) {
                        i = 4;
                        if (ordinal != 4) {
                            if (ordinal == 5) {
                                return 5;
                            }
                            throw new IllegalArgumentException("Could not convert " + enumC3836m + " to int");
                        }
                    }
                }
            }
            return i;
        }
        return 0;
    }
}
