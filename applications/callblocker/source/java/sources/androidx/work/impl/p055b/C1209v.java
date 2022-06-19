package androidx.work.impl.p055b;

import androidx.work.C1308s;
import androidx.work.EnumC1125a;
import androidx.work.EnumC1295m;
/* renamed from: androidx.work.impl.b.v */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/v.class */
public class C1209v {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.b.v$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/b/v$1.class */
    public static /* synthetic */ class C12101 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4056a;

        /* renamed from: b */
        static final /* synthetic */ int[] f4057b;

        /* renamed from: c */
        static final /* synthetic */ int[] f4058c = new int[EnumC1295m.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b0 -> B:44:0x009f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b4 -> B:54:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b8 -> B:50:0x0089). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bc -> B:62:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c0 -> B:58:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c4 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c8 -> B:66:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cc -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d0 -> B:46:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d4 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d8 -> B:52:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dc -> B:64:0x0014). Please submit an issue!!! */
        static {
            try {
                f4058c[EnumC1295m.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4058c[EnumC1295m.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4058c[EnumC1295m.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4058c[EnumC1295m.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4058c[EnumC1295m.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            f4057b = new int[EnumC1125a.values().length];
            try {
                f4057b[EnumC1125a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4057b[EnumC1125a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            f4056a = new int[C1308s.EnumC1309a.values().length];
            try {
                f4056a[C1308s.EnumC1309a.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4056a[C1308s.EnumC1309a.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4056a[C1308s.EnumC1309a.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f4056a[C1308s.EnumC1309a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f4056a[C1308s.EnumC1309a.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f4056a[C1308s.EnumC1309a.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: a */
    public static int m17777a(EnumC1125a enumC1125a) {
        int i;
        switch (C12101.f4057b[enumC1125a.ordinal()]) {
            case 1:
                i = 0;
                break;
            case 2:
                i = 1;
                break;
            default:
                throw new IllegalArgumentException("Could not convert " + enumC1125a + " to int");
        }
        return i;
    }

    /* renamed from: a */
    public static int m17775a(EnumC1295m enumC1295m) {
        int i;
        switch (C12101.f4058c[enumC1295m.ordinal()]) {
            case 1:
                i = 0;
                break;
            case 2:
                i = 1;
                break;
            case 3:
                i = 2;
                break;
            case 4:
                i = 3;
                break;
            case 5:
                i = 4;
                break;
            default:
                throw new IllegalArgumentException("Could not convert " + enumC1295m + " to int");
        }
        return i;
    }

    /* renamed from: a */
    public static int m17774a(C1308s.EnumC1309a enumC1309a) {
        int i;
        switch (C12101.f4056a[enumC1309a.ordinal()]) {
            case 1:
                i = 0;
                break;
            case 2:
                i = 1;
                break;
            case 3:
                i = 2;
                break;
            case 4:
                i = 3;
                break;
            case 5:
                i = 4;
                break;
            case 6:
                i = 5;
                break;
            default:
                throw new IllegalArgumentException("Could not convert " + enumC1309a + " to int");
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C1131d m17773a(byte[] r4) {
        /*
            androidx.work.d r0 = new androidx.work.d
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            if (r0 != 0) goto Le
        Lc:
            r0 = r5
            return r0
        Le:
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            java.io.ObjectInputStream r0 = new java.io.ObjectInputStream     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L8d
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L8d
            r0 = r7
            r4 = r0
            r0 = r7
            int r0 = r0.readInt()     // Catch: java.lang.Throwable -> Lae java.io.IOException -> Lb2
            r8 = r0
        L28:
            r0 = r8
            if (r0 <= 0) goto L44
            r0 = r7
            r4 = r0
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.readUTF()     // Catch: java.lang.Throwable -> Lae java.io.IOException -> Lb2
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> Lae java.io.IOException -> Lb2
            r2 = r7
            boolean r2 = r2.readBoolean()     // Catch: java.lang.Throwable -> Lae java.io.IOException -> Lb2
            r0.m17927a(r1, r2)     // Catch: java.lang.Throwable -> Lae java.io.IOException -> Lb2
            int r8 = r8 + (-1)
            goto L28
        L44:
            r0 = r7
            if (r0 == 0) goto L4c
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L5b
        L4c:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L53
            goto Lc
        L53:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto Lc
        L5b:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto L4c
        L63:
            r9 = move-exception
            r0 = 0
            r7 = r0
        L67:
            r0 = r7
            r4 = r0
            r0 = r9
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Lae
            r0 = r7
            if (r0 == 0) goto L76
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L85
        L76:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L7d
            goto Lc
        L7d:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto Lc
        L85:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto L76
        L8d:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L90:
            r0 = r4
            if (r0 == 0) goto L98
            r0 = r4
            r0.close()     // Catch: java.io.IOException -> L9e
        L98:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> La6
        L9c:
            r0 = r7
            throw r0
        L9e:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto L98
        La6:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto L9c
        Lae:
            r7 = move-exception
            goto L90
        Lb2:
            r9 = move-exception
            goto L67
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p055b.C1209v.m17773a(byte[]):androidx.work.d");
    }

    /* renamed from: a */
    public static C1308s.EnumC1309a m17778a(int i) {
        C1308s.EnumC1309a enumC1309a;
        switch (i) {
            case 0:
                enumC1309a = C1308s.EnumC1309a.ENQUEUED;
                break;
            case 1:
                enumC1309a = C1308s.EnumC1309a.RUNNING;
                break;
            case 2:
                enumC1309a = C1308s.EnumC1309a.SUCCEEDED;
                break;
            case 3:
                enumC1309a = C1308s.EnumC1309a.FAILED;
                break;
            case 4:
                enumC1309a = C1308s.EnumC1309a.BLOCKED;
                break;
            case 5:
                enumC1309a = C1308s.EnumC1309a.CANCELLED;
                break;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
        return enumC1309a;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m17776a(androidx.work.C1131d r3) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p055b.C1209v.m17776a(androidx.work.d):byte[]");
    }

    /* renamed from: b */
    public static EnumC1125a m17772b(int i) {
        EnumC1125a enumC1125a;
        switch (i) {
            case 0:
                enumC1125a = EnumC1125a.EXPONENTIAL;
                break;
            case 1:
                enumC1125a = EnumC1125a.LINEAR;
                break;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
        return enumC1125a;
    }

    /* renamed from: c */
    public static EnumC1295m m17771c(int i) {
        EnumC1295m enumC1295m;
        switch (i) {
            case 0:
                enumC1295m = EnumC1295m.NOT_REQUIRED;
                break;
            case 1:
                enumC1295m = EnumC1295m.CONNECTED;
                break;
            case 2:
                enumC1295m = EnumC1295m.UNMETERED;
                break;
            case 3:
                enumC1295m = EnumC1295m.NOT_ROAMING;
                break;
            case 4:
                enumC1295m = EnumC1295m.METERED;
                break;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
        return enumC1295m;
    }
}
