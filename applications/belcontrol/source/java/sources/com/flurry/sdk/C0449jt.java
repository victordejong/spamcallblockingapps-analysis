package com.flurry.sdk;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.flurry.sdk.jt */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jt.class */
public class C0449jt {

    /* renamed from: b */
    private static final String f3407b = "jt";

    /* renamed from: c */
    private static C0449jt f3408c;

    /* renamed from: d */
    private final Set<String> f3410d;

    /* renamed from: f */
    private C0458kd f3412f;

    /* renamed from: g */
    private String f3413g;

    /* renamed from: h */
    private final AbstractC0471kp<lt> f3414h;

    /* renamed from: a */
    public final Map<EnumC0457kb, byte[]> f3409a = new HashMap();

    /* renamed from: e */
    private EnumC0452a f3411e = EnumC0452a.NONE;

    /* renamed from: com.flurry.sdk.jt$4 */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/jt$4.class */
    public static final /* synthetic */ class C04514 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3416a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f3417b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0049 -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:10:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0452a.values().length];
            f3417b = iArr;
            try {
                iArr[EnumC0452a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3417b[EnumC0452a.ADVERTISING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3417b[EnumC0452a.DEVICE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3417b[EnumC0452a.REPORTED_IDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[lt$a.m4518a().length];
            f3416a = iArr2;
            try {
                iArr2[lt$a.f3568a - 1] = 1;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.flurry.sdk.jt$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/jt$a.class */
    public enum EnumC0452a {
        NONE,
        ADVERTISING,
        DEVICE,
        REPORTED_IDS,
        FINISHED
    }

    private C0449jt() {
        HashSet hashSet = new HashSet();
        hashSet.add("null");
        hashSet.add("9774d56d682e549c");
        hashSet.add("dead00beef");
        this.f3410d = Collections.unmodifiableSet(hashSet);
        AbstractC0471kp<?> abstractC0471kp = new 1<>(this);
        this.f3414h = abstractC0471kp;
        C0472kq.m4617a().m4613a("com.flurry.android.sdk.FlurrySessionEvent", abstractC0471kp);
        C0462kg.m4652a().m4647b(new 2(this));
    }

    /* renamed from: a */
    public static C0449jt m4684a() {
        C0449jt c0449jt;
        synchronized (C0449jt.class) {
            try {
                if (f3408c == null) {
                    f3408c = new C0449jt();
                }
                c0449jt = f3408c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0449jt;
    }

    /* renamed from: a */
    private static void m4682a(String str, File file) {
        Throwable th;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        try {
            dataOutputStream2 = new DataOutputStream(new FileOutputStream(file));
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
        try {
            dataOutputStream2.writeInt(1);
            dataOutputStream2.writeUTF(str);
            C0505md.m4487a(dataOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = dataOutputStream2;
            try {
                C0478ku.m4595a(6, f3407b, "Error when saving deviceId", th);
                C0505md.m4487a(dataOutputStream);
            } catch (Throwable th4) {
                C0505md.m4487a(dataOutputStream);
                throw th4;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r0 != 4) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00af A[Catch: Exception -> 0x0165, TRY_ENTER, TryCatch #0 {Exception -> 0x0165, blocks: (B:16:0x004e, B:23:0x006a, B:24:0x0071, B:26:0x008a, B:33:0x00af, B:35:0x00c5, B:38:0x00ce, B:40:0x00d4, B:42:0x00db, B:44:0x00e2, B:46:0x00e9, B:49:0x012f, B:51:0x0136, B:53:0x0146, B:55:0x014e, B:57:0x0156, B:58:0x015e), top: B:63:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ce A[Catch: Exception -> 0x0165, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0165, blocks: (B:16:0x004e, B:23:0x006a, B:24:0x0071, B:26:0x008a, B:33:0x00af, B:35:0x00c5, B:38:0x00ce, B:40:0x00d4, B:42:0x00db, B:44:0x00e2, B:46:0x00e9, B:49:0x012f, B:51:0x0136, B:53:0x0146, B:55:0x014e, B:57:0x0156, B:58:0x015e), top: B:63:0x004e }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m4680b(com.flurry.sdk.C0449jt r10) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0449jt.m4680b(com.flurry.sdk.jt):void");
    }

    /* renamed from: d */
    public void m4678d() {
        C0505md.m4482b();
        this.f3412f = m4677e();
        if (m4681b()) {
            m4674h();
            C0472kq.m4617a().m4616a(new jv());
        }
    }

    /* renamed from: e */
    private static C0458kd m4677e() {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(C0462kg.m4652a().f3460a);
            return new C0458kd(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (Exception e) {
            String str = f3407b;
            C0478ku.m4590b(str, "GOOGLE PLAY SERVICES ERROR: " + e.getMessage());
            C0478ku.m4590b(str, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        } catch (NoClassDefFoundError e2) {
            C0478ku.m4590b(f3407b, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private static String m4676f() {
        DataInputStream dataInputStream;
        Throwable th;
        String str;
        File fileStreamPath = C0462kg.m4652a().f3460a.getFileStreamPath(".flurryb.");
        if (fileStreamPath == null || !fileStreamPath.exists()) {
            return null;
        }
        try {
            dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
            try {
                str = 1 != dataInputStream.readInt() ? null : dataInputStream.readUTF();
            } catch (Throwable th2) {
                th = th2;
                try {
                    C0478ku.m4595a(6, f3407b, "Error when loading deviceId", th);
                    str = null;
                    C0505md.m4487a((Closeable) dataInputStream);
                    return str;
                } catch (Throwable th3) {
                    C0505md.m4487a((Closeable) dataInputStream);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            dataInputStream = null;
        }
        C0505md.m4487a((Closeable) dataInputStream);
        return str;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    private String m4675g() {
        String[] list;
        Throwable th;
        DataInputStream dataInputStream;
        String str;
        File filesDir = C0462kg.m4652a().f3460a.getFilesDir();
        if (filesDir == null || (list = filesDir.list(new FilenameFilter() { // from class: com.flurry.sdk.jt.3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.startsWith(".flurryagent.");
            }
        })) == null || list.length == 0) {
            return null;
        }
        File fileStreamPath = C0462kg.m4652a().f3460a.getFileStreamPath(list[0]);
        if (fileStreamPath == null || !fileStreamPath.exists()) {
            return null;
        }
        try {
            dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
        } catch (Throwable th2) {
            th = th2;
            dataInputStream = null;
        }
        try {
            if (46586 != dataInputStream.readUnsignedShort()) {
                str = null;
            } else if (2 != dataInputStream.readUnsignedShort()) {
                str = null;
            } else {
                dataInputStream.readUTF();
                str = dataInputStream.readUTF();
            }
        } catch (Throwable th3) {
            th = th3;
            try {
                C0478ku.m4595a(6, f3407b, "Error when loading deviceId", th);
                str = null;
                C0505md.m4487a((Closeable) dataInputStream);
                return str;
            } catch (Throwable th4) {
                C0505md.m4487a((Closeable) dataInputStream);
                throw th4;
            }
        }
        C0505md.m4487a((Closeable) dataInputStream);
        return str;
    }

    /* renamed from: h */
    private void m4674h() {
        C0458kd c0458kd = this.f3412f;
        String str = c0458kd == null ? null : c0458kd.f3443a;
        if (str != null) {
            C0478ku.m4596a(3, f3407b, "Fetched advertising id");
            this.f3409a.put(EnumC0457kb.AndroidAdvertisingId, C0505md.m4478d(str));
        }
        String str2 = this.f3413g;
        if (str2 != null) {
            C0478ku.m4596a(3, f3407b, "Fetched device id");
            this.f3409a.put(EnumC0457kb.DeviceId, C0505md.m4478d(str2));
        }
    }

    /* renamed from: b */
    public final boolean m4681b() {
        return EnumC0452a.FINISHED.equals(this.f3411e);
    }

    /* renamed from: c */
    public final boolean m4679c() {
        C0458kd c0458kd = this.f3412f;
        return c0458kd == null || !c0458kd.f3444b;
    }
}
