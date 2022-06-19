package androidx.work.impl.p018n;

import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.C1236c;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
/* renamed from: androidx.work.impl.n.v */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/v.class */
public class C1362v {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/v$a.class */
    public static /* synthetic */ class C1363a {

        /* renamed from: a */
        static final /* synthetic */ int[] f5622a;

        /* renamed from: b */
        static final /* synthetic */ int[] f5623b;

        /* renamed from: c */
        static final /* synthetic */ int[] f5624c;

        /* renamed from: d */
        static final /* synthetic */ int[] f5625d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00cb -> B:53:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cf -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d3 -> B:61:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d7 -> B:73:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00db -> B:69:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00df -> B:79:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e3 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e7 -> B:55:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00eb -> B:22:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ef -> B:63:0x0092). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f3 -> B:59:0x009d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f7 -> B:71:0x00a8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fb -> B:67:0x00b3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00ff -> B:77:0x00be). Please submit an issue!!! */
        static {
            int[] iArr = new int[OutOfQuotaPolicy.values().length];
            f5625d = iArr;
            try {
                iArr[OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5625d[OutOfQuotaPolicy.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[NetworkType.values().length];
            f5624c = iArr2;
            try {
                iArr2[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5624c[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5624c[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5624c[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5624c[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[BackoffPolicy.values().length];
            f5623b = iArr3;
            try {
                iArr3[BackoffPolicy.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5623b[BackoffPolicy.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            int[] iArr4 = new int[WorkInfo$State.values().length];
            f5622a = iArr4;
            try {
                iArr4[WorkInfo$State.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f5622a[WorkInfo$State.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f5622a[WorkInfo$State.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f5622a[WorkInfo$State.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f5622a[WorkInfo$State.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f5622a[WorkInfo$State.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* renamed from: a */
    public static int m30255a(BackoffPolicy backoffPolicy) {
        int i = C1363a.f5623b[backoffPolicy.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            throw new IllegalArgumentException("Could not convert " + backoffPolicy + " to int");
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0085 -> B:32:0x0089). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C1236c m30254b(byte[] r4) {
        /*
            androidx.work.c r0 = new androidx.work.c
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            if (r0 != 0) goto Le
            r0 = r5
            return r0
        Le:
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            java.io.ObjectInputStream r0 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L62
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L62
            r0 = r7
            r4 = r0
            r0 = r7
            int r0 = r0.readInt()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            r8 = r0
        L28:
            r0 = r8
            if (r0 <= 0) goto L44
            r0 = r7
            r4 = r0
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.readUTF()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            r2 = r7
            boolean r2 = r2.readBoolean()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            r0.m30563a(r1, r2)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            int r8 = r8 + (-1)
            goto L28
        L44:
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L4b
            goto L50
        L4b:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L50:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L84
            goto L89
        L57:
            r9 = move-exception
            goto L66
        L5c:
            r7 = move-exception
            r0 = 0
            r4 = r0
            goto L8c
        L62:
            r9 = move-exception
            r0 = 0
            r7 = r0
        L66:
            r0 = r7
            r4 = r0
            r0 = r9
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            r0 = r7
            if (r0 == 0) goto L7d
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L78
            goto L7d
        L78:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L7d:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L84
            goto L89
        L84:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L89:
            r0 = r5
            return r0
        L8b:
            r7 = move-exception
        L8c:
            r0 = r4
            if (r0 == 0) goto L9c
            r0 = r4
            r0.close()     // Catch: java.io.IOException -> L97
            goto L9c
        L97:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L9c:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> La3
            goto La8
        La3:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        La8:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p018n.C1362v.m30254b(byte[]):androidx.work.c");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:36:0x00c1). Please submit an issue!!! */
    /* renamed from: c */
    public static byte[] m30253c(C1236c c1236c) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        if (c1236c.m30561c() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                try {
                    objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                } catch (IOException e2) {
                    e = e2;
                    objectOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            objectOutputStream2.writeInt(c1236c.m30561c());
            for (C1236c.C1237a c1237a : c1236c.m30562b()) {
                objectOutputStream2.writeUTF(c1237a.m30560a().toString());
                objectOutputStream2.writeBoolean(c1237a.m30559b());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            byteArrayOutputStream.close();
        } catch (IOException e5) {
            objectOutputStream = objectOutputStream2;
            e = e5;
            objectOutputStream3 = objectOutputStream;
            e.printStackTrace();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: d */
    public static BackoffPolicy m30252d(int i) {
        if (i != 0) {
            if (i == 1) {
                return BackoffPolicy.LINEAR;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
        return BackoffPolicy.EXPONENTIAL;
    }

    /* renamed from: e */
    public static NetworkType m30251e(int i) {
        if (i != 0) {
            if (i == 1) {
                return NetworkType.CONNECTED;
            }
            if (i == 2) {
                return NetworkType.UNMETERED;
            }
            if (i == 3) {
                return NetworkType.NOT_ROAMING;
            }
            if (i == 4) {
                return NetworkType.METERED;
            }
            if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                return NetworkType.TEMPORARILY_UNMETERED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
        return NetworkType.NOT_REQUIRED;
    }

    /* renamed from: f */
    public static OutOfQuotaPolicy m30250f(int i) {
        if (i != 0) {
            if (i == 1) {
                return OutOfQuotaPolicy.DROP_WORK_REQUEST;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to OutOfQuotaPolicy");
        }
        return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
    }

    /* renamed from: g */
    public static WorkInfo$State m30249g(int i) {
        if (i != 0) {
            if (i == 1) {
                return WorkInfo$State.RUNNING;
            }
            if (i == 2) {
                return WorkInfo$State.SUCCEEDED;
            }
            if (i == 3) {
                return WorkInfo$State.FAILED;
            }
            if (i == 4) {
                return WorkInfo$State.BLOCKED;
            }
            if (i == 5) {
                return WorkInfo$State.CANCELLED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
        return WorkInfo$State.ENQUEUED;
    }

    /* renamed from: h */
    public static int m30248h(NetworkType networkType) {
        int i = C1363a.f5624c[networkType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            if (i == 4) {
                return 3;
            }
            if (i == 5) {
                return 4;
            }
            if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
                return 5;
            }
            throw new IllegalArgumentException("Could not convert " + networkType + " to int");
        }
        return 0;
    }

    /* renamed from: i */
    public static int m30247i(OutOfQuotaPolicy outOfQuotaPolicy) {
        int i = C1363a.f5625d[outOfQuotaPolicy.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            throw new IllegalArgumentException("Could not convert " + outOfQuotaPolicy + " to int");
        }
        return 0;
    }

    /* renamed from: j */
    public static int m30246j(WorkInfo$State workInfo$State) {
        switch (C1363a.f5622a[workInfo$State.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + workInfo$State + " to int");
        }
    }
}
