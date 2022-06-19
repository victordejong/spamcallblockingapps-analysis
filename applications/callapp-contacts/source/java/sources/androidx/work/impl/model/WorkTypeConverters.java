package androidx.work.impl.model;

import androidx.work.C2990c;
import androidx.work.C3163t;
import androidx.work.EnumC2986a;
import androidx.work.EnumC3147l;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters.class */
public class WorkTypeConverters {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.model.WorkTypeConverters$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$1.class */
    public static /* synthetic */ class C30991 {
        static final /* synthetic */ int[] $SwitchMap$androidx$work$BackoffPolicy;
        static final /* synthetic */ int[] $SwitchMap$androidx$work$NetworkType;
        static final /* synthetic */ int[] $SwitchMap$androidx$work$WorkInfo$State;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ac -> B:56:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b0 -> B:52:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b4 -> B:64:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b8 -> B:60:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bc -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c0 -> B:66:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c4 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c8 -> B:44:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cc -> B:54:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d0 -> B:50:0x0089). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d4 -> B:62:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d8 -> B:58:0x009f). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC3147l.values().length];
            $SwitchMap$androidx$work$NetworkType = iArr;
            try {
                iArr[EnumC3147l.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[EnumC3147l.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[EnumC3147l.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[EnumC3147l.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[EnumC3147l.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[EnumC2986a.values().length];
            $SwitchMap$androidx$work$BackoffPolicy = iArr2;
            try {
                iArr2[EnumC2986a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$androidx$work$BackoffPolicy[EnumC2986a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[C3163t.EnumC3164a.values().length];
            $SwitchMap$androidx$work$WorkInfo$State = iArr3;
            try {
                iArr3[C3163t.EnumC3164a.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[C3163t.EnumC3164a.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[C3163t.EnumC3164a.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[C3163t.EnumC3164a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[C3163t.EnumC3164a.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[C3163t.EnumC3164a.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds.class */
    public interface BackoffPolicyIds {
        public static final int EXPONENTIAL = 0;
        public static final int LINEAR = 1;
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$NetworkTypeIds.class */
    public interface NetworkTypeIds {
        public static final int CONNECTED = 1;
        public static final int METERED = 4;
        public static final int NOT_REQUIRED = 0;
        public static final int NOT_ROAMING = 3;
        public static final int UNMETERED = 2;
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$StateIds.class */
    public interface StateIds {
        public static final int BLOCKED = 4;
        public static final int CANCELLED = 5;
        public static final String COMPLETED_STATES = "(2, 3, 5)";
        public static final int ENQUEUED = 0;
        public static final int FAILED = 3;
        public static final int RUNNING = 1;
        public static final int SUCCEEDED = 2;
    }

    private WorkTypeConverters() {
    }

    public static int backoffPolicyToInt(EnumC2986a enumC2986a) {
        int i = C30991.$SwitchMap$androidx$work$BackoffPolicy[enumC2986a.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            throw new IllegalArgumentException("Could not convert " + enumC2986a + " to int");
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00a7 -> B:40:0x00ab). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C2990c byteArrayToContentUriTriggers(byte[] r4) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkTypeConverters.byteArrayToContentUriTriggers(byte[]):androidx.work.c");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:36:0x00c1). Please submit an issue!!! */
    public static byte[] contentUriTriggersToByteArray(C2990c c2990c) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        if (c2990c.m39514a() == 0) {
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
            objectOutputStream2.writeInt(c2990c.m39514a());
            for (C2990c.C2991a c2991a : c2990c.f11146a) {
                objectOutputStream2.writeUTF(c2991a.f11147a.toString());
                objectOutputStream2.writeBoolean(c2991a.f11148b);
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

    public static EnumC2986a intToBackoffPolicy(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC2986a.LINEAR;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
        return EnumC2986a.EXPONENTIAL;
    }

    public static EnumC3147l intToNetworkType(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC3147l.CONNECTED;
            }
            if (i == 2) {
                return EnumC3147l.UNMETERED;
            }
            if (i == 3) {
                return EnumC3147l.NOT_ROAMING;
            }
            if (i == 4) {
                return EnumC3147l.METERED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
        return EnumC3147l.NOT_REQUIRED;
    }

    public static C3163t.EnumC3164a intToState(int i) {
        if (i != 0) {
            if (i == 1) {
                return C3163t.EnumC3164a.RUNNING;
            }
            if (i == 2) {
                return C3163t.EnumC3164a.SUCCEEDED;
            }
            if (i == 3) {
                return C3163t.EnumC3164a.FAILED;
            }
            if (i == 4) {
                return C3163t.EnumC3164a.BLOCKED;
            }
            if (i == 5) {
                return C3163t.EnumC3164a.CANCELLED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
        return C3163t.EnumC3164a.ENQUEUED;
    }

    public static int networkTypeToInt(EnumC3147l enumC3147l) {
        int i = C30991.$SwitchMap$androidx$work$NetworkType[enumC3147l.ordinal()];
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
            throw new IllegalArgumentException("Could not convert " + enumC3147l + " to int");
        }
        return 0;
    }

    public static int stateToInt(C3163t.EnumC3164a enumC3164a) {
        switch (C30991.$SwitchMap$androidx$work$WorkInfo$State[enumC3164a.ordinal()]) {
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
                throw new IllegalArgumentException("Could not convert " + enumC3164a + " to int");
        }
    }
}
