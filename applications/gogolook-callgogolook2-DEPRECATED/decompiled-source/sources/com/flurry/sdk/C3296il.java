package com.flurry.sdk;

import com.flurry.sdk.C3425kq;
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
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: com.flurry.sdk.il */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/il.class */
public class C3296il {

    /* renamed from: b */
    public static final String f5575b = "il";

    /* renamed from: c */
    public static C3296il f5576c;

    /* renamed from: d */
    public final Set<String> f5578d;

    /* renamed from: f */
    public C3315iv f5580f;

    /* renamed from: g */
    public String f5581g;

    /* renamed from: h */
    public C3320ix f5582h;

    /* renamed from: a */
    public final Map<EnumC3313it, byte[]> f5577a = new HashMap();

    /* renamed from: e */
    public EnumC3302a f5579e = EnumC3302a.NONE;

    /* renamed from: i */
    public final AbstractC3344jl<C3425kq> f5583i = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.sdk.il.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3425kq kqVar) {
            if (C33014.f5587a[kqVar.f5861c - 1] == 1 && C3296il.this.m32742b()) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.il.1.1
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3296il.this.m32738e();
                    }
                });
            }
        }
    };

    /* renamed from: com.flurry.sdk.il$4 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/il$4.class */
    public static final /* synthetic */ class C33014 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5587a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f5588b = new int[EnumC3302a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0054 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0058 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005c -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0060 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0064 -> B:12:0x0040). Please submit an issue!!! */
        static {
            try {
                f5588b[EnumC3302a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5588b[EnumC3302a.ADVERTISING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5588b[EnumC3302a.INSTALL_ID.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5588b[EnumC3302a.DEVICE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5588b[EnumC3302a.REPORTED_IDS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            f5587a = new int[C3425kq.EnumC3426a.m32518a().length];
            try {
                f5587a[C3425kq.EnumC3426a.f5863a - 1] = 1;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.flurry.sdk.il$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/il$a.class */
    public enum EnumC3302a {
        NONE,
        ADVERTISING,
        DEVICE,
        INSTALL_ID,
        REPORTED_IDS,
        FINISHED
    }

    public C3296il() {
        HashSet hashSet = new HashSet();
        hashSet.add(C14247d.f31851f);
        hashSet.add("9774d56d682e549c");
        hashSet.add("dead00beef");
        this.f5578d = Collections.unmodifiableSet(hashSet);
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", this.f5583i);
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.il.2
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3296il.m32741b(C3296il.this);
            }
        });
    }

    /* renamed from: a */
    public static C3296il m32745a() {
        C3296il ilVar;
        synchronized (C3296il.class) {
            try {
                if (f5576c == null) {
                    f5576c = new C3296il();
                }
                ilVar = f5576c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ilVar;
    }

    /* renamed from: a */
    public static void m32743a(String str, File file) {
        Throwable th;
        DataOutputStream dataOutputStream = null;
        try {
            dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            dataOutputStream.writeInt(1);
            dataOutputStream.writeUTF(str);
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = dataOutputStream;
            try {
                C3356jq.m32614a(6, f5575b, "Error when saving deviceId", th);
            } finally {
                C3445la.m32465a(dataOutputStream);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ce A[Catch: Exception -> 0x01ac, TRY_ENTER, TryCatch #0 {Exception -> 0x01ac, blocks: (B:19:0x0066, B:28:0x0089, B:29:0x0090, B:31:0x00a9, B:38:0x00ce, B:40:0x00e8, B:43:0x00f1, B:45:0x00f9, B:47:0x0101, B:49:0x0109, B:51:0x0110, B:54:0x0158, B:56:0x0160, B:58:0x0171, B:60:0x0179, B:62:0x0183, B:63:0x018b, B:65:0x0195, B:66:0x01a5), top: B:71:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f1 A[Catch: Exception -> 0x01ac, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01ac, blocks: (B:19:0x0066, B:28:0x0089, B:29:0x0090, B:31:0x00a9, B:38:0x00ce, B:40:0x00e8, B:43:0x00f1, B:45:0x00f9, B:47:0x0101, B:49:0x0109, B:51:0x0110, B:54:0x0158, B:56:0x0160, B:58:0x0171, B:60:0x0179, B:62:0x0183, B:63:0x018b, B:65:0x0195, B:66:0x01a5), top: B:71:0x0066 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m32741b(com.flurry.sdk.C3296il r10) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3296il.m32741b(com.flurry.sdk.il):void");
    }

    /* renamed from: f */
    public static C3315iv m32737f() {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(C3331jb.m32681a().f5679a);
            return new C3315iv(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (Exception e) {
            String str = f5575b;
            C3356jq.m32609b(str, "GOOGLE PLAY SERVICES ERROR: " + e.getMessage());
            C3356jq.m32609b(f5575b, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        } catch (NoClassDefFoundError e2) {
            C3356jq.m32609b(f5575b, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    /* renamed from: g */
    public static String m32736g() {
        Throwable th;
        DataInputStream dataInputStream;
        String str;
        File fileStreamPath = C3331jb.m32681a().f5679a.getFileStreamPath(".flurryb.");
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
                    C3356jq.m32614a(6, f5575b, "Error when loading deviceId", th);
                    str = null;
                    return str;
                } finally {
                    C3445la.m32465a((Closeable) dataInputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            dataInputStream = null;
        }
        return str;
    }

    /* renamed from: b */
    public final boolean m32742b() {
        return EnumC3302a.FINISHED.equals(this.f5579e);
    }

    /* renamed from: c */
    public final boolean m32740c() {
        C3315iv ivVar = this.f5580f;
        return ivVar == null || !ivVar.f5634b;
    }

    /* renamed from: d */
    public final byte[] m32739d() {
        if (this.f5582h == null) {
            this.f5582h = new C3320ix();
        }
        try {
            return this.f5582h.m32698a();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    public final void m32738e() {
        C3445la.m32460b();
        this.f5580f = m32737f();
        if (m32742b()) {
            m32734i();
            C3345jm.m32636a().m32635a(new C3304in());
        }
    }

    /* renamed from: h */
    public final String m32735h() {
        String[] list;
        Throwable th;
        DataInputStream dataInputStream;
        String str;
        File filesDir = C3331jb.m32681a().f5679a.getFilesDir();
        if (filesDir == null || (list = filesDir.list(new FilenameFilter(this) { // from class: com.flurry.sdk.il.3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.startsWith(".flurryagent.");
            }
        })) == null || list.length == 0) {
            return null;
        }
        File fileStreamPath = C3331jb.m32681a().f5679a.getFileStreamPath(list[0]);
        if (fileStreamPath == null || !fileStreamPath.exists()) {
            return null;
        }
        try {
            dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
            try {
                if (46586 != dataInputStream.readUnsignedShort()) {
                    str = null;
                } else if (2 != dataInputStream.readUnsignedShort()) {
                    str = null;
                } else {
                    dataInputStream.readUTF();
                    str = dataInputStream.readUTF();
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    C3356jq.m32614a(6, f5575b, "Error when loading deviceId", th);
                    str = null;
                    return str;
                } finally {
                    C3445la.m32465a((Closeable) dataInputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            dataInputStream = null;
        }
        return str;
    }

    /* renamed from: i */
    public final void m32734i() {
        C3315iv ivVar = this.f5580f;
        String str = ivVar == null ? null : ivVar.f5633a;
        if (str != null) {
            C3356jq.m32615a(3, f5575b, "Fetched advertising id");
            this.f5577a.put(EnumC3313it.AndroidAdvertisingId, C3445la.m32454d(str));
        }
        byte[] d = m32739d();
        if (d != null) {
            C3356jq.m32615a(3, f5575b, "Fetched install id");
            this.f5577a.put(EnumC3313it.AndroidInstallationId, d);
        }
        String str2 = this.f5581g;
        if (str2 != null) {
            C3356jq.m32615a(3, f5575b, "Fetched device id");
            this.f5577a.put(EnumC3313it.DeviceId, C3445la.m32454d(str2));
        }
    }
}
