package io.realm.internal;

import io.realm.CompactOnLaunchCallback;
import io.realm.RealmConfiguration;
import io.realm.internal.OsSharedRealm;
import io.realm.log.RealmLog;
import java.io.File;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig.class */
public class OsRealmConfig implements NativeObject {

    /* renamed from: k */
    private static final long f20132k = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final RealmConfiguration f20133f;

    /* renamed from: g */
    private final URI f20134g;

    /* renamed from: h */
    private final long f20135h;

    /* renamed from: i */
    private final NativeContext f20136i;

    /* renamed from: j */
    private final CompactOnLaunchCallback f20137j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.internal.OsRealmConfig$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$1.class */
    public static /* synthetic */ class C21721 {

        /* renamed from: a */
        static final /* synthetic */ int[] f20138a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            f20138a = iArr;
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private RealmConfiguration f20139a;

        /* renamed from: b */
        private OsSchemaInfo f20140b = null;

        /* renamed from: c */
        private OsSharedRealm.MigrationCallback f20141c = null;

        /* renamed from: d */
        private OsSharedRealm.InitializationCallback f20142d = null;

        /* renamed from: e */
        private boolean f20143e = false;

        /* renamed from: f */
        private String f20144f = "";

        public Builder(RealmConfiguration realmConfiguration) {
            this.f20139a = realmConfiguration;
        }

        /* renamed from: a */
        public Builder m2737a(boolean z) {
            this.f20143e = z;
            return this;
        }

        /* renamed from: b */
        public OsRealmConfig m2736b() {
            return new OsRealmConfig(this.f20139a, this.f20144f, this.f20143e, this.f20140b, this.f20141c, this.f20142d, null);
        }

        /* renamed from: c */
        public Builder m2735c(File file) {
            this.f20144f = file.getAbsolutePath();
            return this;
        }

        /* renamed from: d */
        public Builder m2734d(@Nullable OsSharedRealm.InitializationCallback initializationCallback) {
            this.f20142d = initializationCallback;
            return this;
        }

        /* renamed from: e */
        public Builder m2733e(@Nullable OsSharedRealm.MigrationCallback migrationCallback) {
            this.f20141c = migrationCallback;
            return this;
        }

        /* renamed from: f */
        public Builder m2732f(@Nullable OsSchemaInfo osSchemaInfo) {
            this.f20140b = osSchemaInfo;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$Durability.class */
    public enum Durability {
        FULL(0),
        MEM_ONLY(1);
        
        final int value;

        Durability(int i) {
            this.value = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$SchemaMode.class */
    public enum SchemaMode {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_IMMUTABLE((byte) 1),
        SCHEMA_MODE_READONLY((byte) 2),
        SCHEMA_MODE_RESET_FILE((byte) 3),
        SCHEMA_MODE_ADDITIVE((byte) 4),
        SCHEMA_MODE_MANUAL((byte) 5);
        
        final byte value;

        SchemaMode(byte b) {
            this.value = b;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$SyncSessionStopPolicy.class */
    public enum SyncSessionStopPolicy {
        IMMEDIATELY((byte) 0),
        LIVE_INDEFINITELY((byte) 1),
        AFTER_CHANGES_UPLOADED((byte) 2);
        
        final byte value;

        SyncSessionStopPolicy(byte b) {
            this.value = b;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    private OsRealmConfig(RealmConfiguration realmConfiguration, String str, boolean z, @Nullable OsSchemaInfo osSchemaInfo, @Nullable OsSharedRealm.MigrationCallback migrationCallback, @Nullable OsSharedRealm.InitializationCallback initializationCallback) {
        this.f20136i = new NativeContext();
        this.f20133f = realmConfiguration;
        this.f20135h = nativeCreate(realmConfiguration.m2987l(), str, true, realmConfiguration.m2990i());
        NativeContext.f20097c.m2829a(this);
        Object[] d = ObjectServerFacade.m2817e().m2818d(this.f20133f);
        String str2 = (String) d[0];
        String str3 = (String) d[1];
        String str4 = (String) d[2];
        String str5 = (String) d[3];
        boolean equals = Boolean.TRUE.equals(d[4]);
        String str6 = (String) d[5];
        Byte b = (Byte) d[6];
        boolean equals2 = Boolean.TRUE.equals(d[7]);
        String str7 = (String) d[8];
        String str8 = (String) d[9];
        Byte b2 = (Byte) d[11];
        Map map = (Map) d[10];
        String[] strArr = new String[map != null ? map.size() * 2 : 0];
        if (map != null) {
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                strArr[i] = (String) entry.getKey();
                strArr[i + 1] = (String) entry.getValue();
                i += 2;
            }
        }
        byte[] g = realmConfiguration.m2992g();
        if (g != null) {
            nativeSetEncryptionKey(this.f20135h, g);
        }
        nativeSetInMemory(this.f20135h, realmConfiguration.m2993f() == Durability.MEM_ONLY);
        nativeEnableChangeNotification(this.f20135h, z);
        SchemaMode schemaMode = SchemaMode.SCHEMA_MODE_MANUAL;
        if (realmConfiguration.m2979t()) {
            schemaMode = SchemaMode.SCHEMA_MODE_IMMUTABLE;
        } else if (realmConfiguration.m2980s()) {
            schemaMode = SchemaMode.SCHEMA_MODE_READONLY;
        } else if (str3 != null) {
            schemaMode = SchemaMode.SCHEMA_MODE_ADDITIVE;
        } else if (realmConfiguration.m2975x()) {
            schemaMode = SchemaMode.SCHEMA_MODE_RESET_FILE;
        }
        nativeSetSchemaConfig(this.f20135h, schemaMode.getNativeValue(), realmConfiguration.m2982q(), osSchemaInfo == null ? 0L : osSchemaInfo.getNativePtr(), migrationCallback);
        CompactOnLaunchCallback e = realmConfiguration.m2994e();
        this.f20137j = e;
        if (e != null) {
            nativeSetCompactOnLaunchCallback(this.f20135h, e);
        }
        if (initializationCallback != null) {
            nativeSetInitializationCallback(this.f20135h, initializationCallback);
        }
        URI uri = null;
        URI uri2 = null;
        if (str3 != null) {
            String nativeCreateAndSetSyncConfig = nativeCreateAndSetSyncConfig(this.f20135h, str3, str4, str2, str5, equals2, b.byteValue(), str7, str8, strArr, b2.byteValue());
            try {
                uri = new URI(nativeCreateAndSetSyncConfig);
            } catch (URISyntaxException e2) {
                RealmLog.m2534b(e2, "Cannot create a URI from the Realm URL address", new Object[0]);
                uri = null;
            }
            nativeSetSyncConfigSslSettings(this.f20135h, equals, str6);
            ProxySelector proxySelector = ProxySelector.getDefault();
            if (!(uri == null || proxySelector == null)) {
                try {
                    uri2 = new URI(nativeCreateAndSetSyncConfig.replaceFirst("realm", "http"));
                } catch (URISyntaxException e3) {
                    RealmLog.m2534b(e3, "Cannot create a URI from the Realm URL address", new Object[0]);
                }
                List<Proxy> select = proxySelector.select(uri2);
                if (select != null && !select.isEmpty()) {
                    Proxy proxy = select.get(0);
                    if (proxy.type() != Proxy.Type.DIRECT) {
                        byte b3 = -1;
                        if (C21721.f20138a[proxy.type().ordinal()] == 1) {
                            b3 = 0;
                        }
                        if (proxy.type() == Proxy.Type.HTTP) {
                            SocketAddress address = proxy.address();
                            if (address instanceof InetSocketAddress) {
                                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                                nativeSetSyncConfigProxySettings(this.f20135h, b3, inetSocketAddress.getHostString(), inetSocketAddress.getPort());
                            } else {
                                RealmLog.m2535a("Unsupported proxy socket address type: " + address.getClass().getName(), new Object[0]);
                            }
                        } else {
                            RealmLog.m2535a("SOCKS proxies are not supported.", new Object[0]);
                        }
                    }
                }
            }
        }
        this.f20134g = uri;
    }

    /* synthetic */ OsRealmConfig(RealmConfiguration realmConfiguration, String str, boolean z, OsSchemaInfo osSchemaInfo, OsSharedRealm.MigrationCallback migrationCallback, OsSharedRealm.InitializationCallback initializationCallback, C21721 r15) {
        this(realmConfiguration, str, z, osSchemaInfo, migrationCallback, initializationCallback);
    }

    private static native long nativeCreate(String str, String str2, boolean z, long j);

    private static native String nativeCreateAndSetSyncConfig(long j, String str, String str2, String str3, String str4, boolean z, byte b, String str5, String str6, String[] strArr, byte b2);

    private static native void nativeEnableChangeNotification(long j, boolean z);

    private static native long nativeGetFinalizerPtr();

    private static native void nativeSetCompactOnLaunchCallback(long j, CompactOnLaunchCallback compactOnLaunchCallback);

    private static native void nativeSetEncryptionKey(long j, byte[] bArr);

    private static native void nativeSetInMemory(long j, boolean z);

    private native void nativeSetInitializationCallback(long j, OsSharedRealm.InitializationCallback initializationCallback);

    private native void nativeSetSchemaConfig(long j, byte b, long j2, long j3, @Nullable OsSharedRealm.MigrationCallback migrationCallback);

    private static native void nativeSetSyncConfigProxySettings(long j, byte b, String str, int i);

    private static native void nativeSetSyncConfigSslSettings(long j, boolean z, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public NativeContext m2740a() {
        return this.f20136i;
    }

    /* renamed from: b */
    public RealmConfiguration m2739b() {
        return this.f20133f;
    }

    /* renamed from: c */
    public URI m2738c() {
        return this.f20134g;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20132k;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20135h;
    }
}
