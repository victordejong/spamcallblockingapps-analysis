package androidx.work.impl.model;

import androidx.work.a;
import androidx.work.c;
import androidx.work.l;
import androidx.work.t;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters.class */
public class WorkTypeConverters {

    /* renamed from: androidx.work.impl.model.WorkTypeConverters$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$1.class */
    static /* synthetic */ class AnonymousClass1 {
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
            int[] iArr = new int[l.values().length];
            $SwitchMap$androidx$work$NetworkType = iArr;
            try {
                iArr[l.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[l.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[l.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[l.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[l.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[a.values().length];
            $SwitchMap$androidx$work$BackoffPolicy = iArr2;
            try {
                iArr2[a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$androidx$work$BackoffPolicy[a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[t.a.values().length];
            $SwitchMap$androidx$work$WorkInfo$State = iArr3;
            try {
                iArr3[t.a.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[t.a.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[t.a.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[t.a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[t.a.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[t.a.CANCELLED.ordinal()] = 6;
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

    public static int backoffPolicyToInt(a aVar) {
        int i = AnonymousClass1.$SwitchMap$androidx$work$BackoffPolicy[aVar.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        throw new IllegalArgumentException("Could not convert " + aVar + " to int");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00a7 -> B:40:0x00ab). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.c byteArrayToContentUriTriggers(byte[] r4) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkTypeConverters.byteArrayToContentUriTriggers(byte[]):androidx.work.c");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:36:0x00c1). Please submit an issue!!! */
    public static byte[] contentUriTriggersToByteArray(c cVar) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        int a2 = cVar.a();
        ObjectOutputStream objectOutputStream2 = null;
        ObjectOutputStream objectOutputStream3 = null;
        if (a2 == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            objectOutputStream.writeInt(cVar.a());
            for (c.a aVar : cVar.f5973a) {
                objectOutputStream.writeUTF(aVar.f5974a.toString());
                objectOutputStream.writeBoolean(aVar.f5975b);
            }
            try {
                objectOutputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            byteArrayOutputStream.close();
        } catch (IOException e5) {
            e = e5;
            objectOutputStream2 = objectOutputStream;
            objectOutputStream3 = objectOutputStream2;
            e.printStackTrace();
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream;
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

    public static a intToBackoffPolicy(int i) {
        if (i == 0) {
            return a.EXPONENTIAL;
        }
        if (i == 1) {
            return a.LINEAR;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
    }

    public static l intToNetworkType(int i) {
        if (i == 0) {
            return l.NOT_REQUIRED;
        }
        if (i == 1) {
            return l.CONNECTED;
        }
        if (i == 2) {
            return l.UNMETERED;
        }
        if (i == 3) {
            return l.NOT_ROAMING;
        }
        if (i == 4) {
            return l.METERED;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
    }

    public static t.a intToState(int i) {
        if (i == 0) {
            return t.a.ENQUEUED;
        }
        if (i == 1) {
            return t.a.RUNNING;
        }
        if (i == 2) {
            return t.a.SUCCEEDED;
        }
        if (i == 3) {
            return t.a.FAILED;
        }
        if (i == 4) {
            return t.a.BLOCKED;
        }
        if (i == 5) {
            return t.a.CANCELLED;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to State");
    }

    public static int networkTypeToInt(l lVar) {
        int i = AnonymousClass1.$SwitchMap$androidx$work$NetworkType[lVar.ordinal()];
        if (i == 1) {
            return 0;
        }
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
        throw new IllegalArgumentException("Could not convert " + lVar + " to int");
    }

    public static int stateToInt(t.a aVar) {
        switch (AnonymousClass1.$SwitchMap$androidx$work$WorkInfo$State[aVar.ordinal()]) {
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
                throw new IllegalArgumentException("Could not convert " + aVar + " to int");
        }
    }
}
