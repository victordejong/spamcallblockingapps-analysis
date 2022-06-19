package io.realm.internal;

import androidx.webkit.ProxyConfig;
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
    public static final byte CLIENT_RESYNC_MODE_DISCARD = 1;
    public static final byte CLIENT_RESYNC_MODE_MANUAL = 2;
    public static final byte CLIENT_RESYNC_MODE_RECOVER = 0;
    private static final byte PROXYCONFIG_TYPE_VALUE_HTTP = 0;
    private static final byte SCHEMA_MODE_VALUE_ADDITIVE = 4;
    private static final byte SCHEMA_MODE_VALUE_AUTOMATIC = 0;
    private static final byte SCHEMA_MODE_VALUE_IMMUTABLE = 1;
    private static final byte SCHEMA_MODE_VALUE_MANUAL = 5;
    private static final byte SCHEMA_MODE_VALUE_READONLY = 2;
    private static final byte SCHEMA_MODE_VALUE_RESET_FILE = 3;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_AFTER_CHANGES_UPLOADED = 2;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_IMMEDIATELY = 0;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_LIVE_INDEFINETELY = 1;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final CompactOnLaunchCallback compactOnLaunchCallback;
    private final NativeContext context;
    private final OsSharedRealm.InitializationCallback initializationCallback;
    private final OsSharedRealm.MigrationCallback migrationCallback;
    private final long nativePtr;
    private final RealmConfiguration realmConfiguration;
    private final URI resolvedRealmURI;

    /* renamed from: io.realm.internal.OsRealmConfig$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$1.class */
    public static /* synthetic */ class C23981 {
        static final /* synthetic */ int[] $SwitchMap$java$net$Proxy$Type;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            $SwitchMap$java$net$Proxy$Type = iArr;
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsRealmConfig$Builder.class */
    public static class Builder {
        private RealmConfiguration configuration;
        private OsSchemaInfo schemaInfo = null;
        private OsSharedRealm.MigrationCallback migrationCallback = null;
        private OsSharedRealm.InitializationCallback initializationCallback = null;
        private boolean autoUpdateNotification = false;
        private String fifoFallbackDir = "";

        public Builder(RealmConfiguration realmConfiguration) {
            this.configuration = realmConfiguration;
        }

        public Builder autoUpdateNotification(boolean z) {
            this.autoUpdateNotification = z;
            return this;
        }

        public OsRealmConfig build() {
            return new OsRealmConfig(this.configuration, this.fifoFallbackDir, this.autoUpdateNotification, this.schemaInfo, this.migrationCallback, this.initializationCallback, null);
        }

        public Builder fifoFallbackDir(File file) {
            this.fifoFallbackDir = file.getAbsolutePath();
            return this;
        }

        public Builder initializationCallback(@Nullable OsSharedRealm.InitializationCallback initializationCallback) {
            this.initializationCallback = initializationCallback;
            return this;
        }

        public Builder migrationCallback(@Nullable OsSharedRealm.MigrationCallback migrationCallback) {
            this.migrationCallback = migrationCallback;
            return this;
        }

        public Builder schemaInfo(@Nullable OsSchemaInfo osSchemaInfo) {
            this.schemaInfo = osSchemaInfo;
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

    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    private OsRealmConfig(RealmConfiguration realmConfiguration, String str, boolean z, @Nullable OsSchemaInfo osSchemaInfo, @Nullable OsSharedRealm.MigrationCallback migrationCallback, @Nullable OsSharedRealm.InitializationCallback initializationCallback) {
        String str2;
        URI uri;
        this.context = new NativeContext();
        this.realmConfiguration = realmConfiguration;
        this.nativePtr = nativeCreate(realmConfiguration.getPath(), str, true, realmConfiguration.getMaxNumberOfActiveVersions());
        NativeContext.dummyContext.addReference(this);
        Object[] syncConfigurationOptions = ObjectServerFacade.getSyncFacadeIfPossible().getSyncConfigurationOptions(realmConfiguration);
        String str3 = (String) syncConfigurationOptions[0];
        String str4 = (String) syncConfigurationOptions[1];
        String str5 = (String) syncConfigurationOptions[2];
        String str6 = (String) syncConfigurationOptions[3];
        String str7 = (String) syncConfigurationOptions[4];
        String str8 = (String) syncConfigurationOptions[5];
        Byte b = (Byte) syncConfigurationOptions[6];
        String str9 = (String) syncConfigurationOptions[7];
        String str10 = (String) syncConfigurationOptions[8];
        Map map = (Map) syncConfigurationOptions[9];
        Byte b2 = (Byte) syncConfigurationOptions[10];
        String str11 = (String) syncConfigurationOptions[11];
        Object obj = syncConfigurationOptions[12];
        Long l = (Long) syncConfigurationOptions[13];
        String[] strArr = new String[map != null ? map.size() * 2 : 0];
        if (map != null) {
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                strArr[i] = (String) entry.getKey();
                strArr[i + 1] = (String) entry.getValue();
                i += 2;
            }
        }
        byte[] encryptionKey = realmConfiguration.getEncryptionKey();
        if (encryptionKey != null) {
            nativeSetEncryptionKey(this.nativePtr, encryptionKey);
        }
        nativeSetInMemory(this.nativePtr, realmConfiguration.getDurability() == Durability.MEM_ONLY);
        nativeEnableChangeNotification(this.nativePtr, z);
        SchemaMode schemaMode = SchemaMode.SCHEMA_MODE_MANUAL;
        if (realmConfiguration.isRecoveryConfiguration()) {
            schemaMode = SchemaMode.SCHEMA_MODE_IMMUTABLE;
        } else if (realmConfiguration.isReadOnly()) {
            schemaMode = SchemaMode.SCHEMA_MODE_READONLY;
        } else if (str4 != null) {
            schemaMode = SchemaMode.SCHEMA_MODE_ADDITIVE;
        } else if (realmConfiguration.shouldDeleteRealmIfMigrationNeeded()) {
            schemaMode = SchemaMode.SCHEMA_MODE_RESET_FILE;
        }
        long schemaVersion = realmConfiguration.getSchemaVersion();
        char nativePtr = osSchemaInfo == null ? (char) 0 : osSchemaInfo.getNativePtr();
        this.migrationCallback = migrationCallback;
        nativeSetSchemaConfig(this.nativePtr, schemaMode.getNativeValue(), schemaVersion, nativePtr, migrationCallback);
        CompactOnLaunchCallback compactOnLaunchCallback = realmConfiguration.getCompactOnLaunchCallback();
        this.compactOnLaunchCallback = compactOnLaunchCallback;
        if (compactOnLaunchCallback != null) {
            nativeSetCompactOnLaunchCallback(this.nativePtr, compactOnLaunchCallback);
        }
        this.initializationCallback = initializationCallback;
        if (initializationCallback != null) {
            nativeSetInitializationCallback(this.nativePtr, initializationCallback);
        }
        URI uri2 = null;
        if (str4 != null) {
            String nativeCreateAndSetSyncConfig = nativeCreateAndSetSyncConfig(l.longValue(), this.nativePtr, str4, str5, str3, str6, str7, str8, b.byteValue(), str9, str10, strArr, b2.byteValue(), str11, obj);
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(str5);
                sb.append(str9.substring(1));
                str2 = sb.toString();
                nativeCreateAndSetSyncConfig = str2;
                uri2 = new URI(str2);
            } catch (URISyntaxException e) {
                RealmLog.error(e, "Cannot create a URI from the Realm URL address", new Object[0]);
                str2 = nativeCreateAndSetSyncConfig;
                uri2 = null;
            }
            ProxySelector proxySelector = ProxySelector.getDefault();
            if (uri2 != null && proxySelector != null) {
                try {
                    uri = new URI(str2.replaceFirst("ws", ProxyConfig.MATCH_HTTP));
                } catch (URISyntaxException e2) {
                    RealmLog.error(e2, "Cannot create a URI from the Realm URL address", new Object[0]);
                    uri = null;
                }
                List<Proxy> select = proxySelector.select(uri);
                if (select != null && !select.isEmpty()) {
                    Proxy proxy = select.get(0);
                    if (proxy.type() != Proxy.Type.DIRECT) {
                        byte b3 = C23981.$SwitchMap$java$net$Proxy$Type[proxy.type().ordinal()] != 1 ? (byte) -1 : (byte) 0;
                        if (proxy.type() == Proxy.Type.HTTP) {
                            SocketAddress address = proxy.address();
                            if (address instanceof InetSocketAddress) {
                                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                                nativeSetSyncConfigProxySettings(this.nativePtr, b3, inetSocketAddress.getHostString(), inetSocketAddress.getPort());
                            } else {
                                RealmLog.error("Unsupported proxy socket address type: " + address.getClass().getName(), new Object[0]);
                            }
                        } else {
                            RealmLog.error("SOCKS proxies are not supported.", new Object[0]);
                        }
                    }
                }
            }
        }
        this.resolvedRealmURI = uri2;
    }

    /* synthetic */ OsRealmConfig(RealmConfiguration realmConfiguration, String str, boolean z, OsSchemaInfo osSchemaInfo, OsSharedRealm.MigrationCallback migrationCallback, OsSharedRealm.InitializationCallback initializationCallback, C23981 c23981) {
        this(realmConfiguration, str, z, osSchemaInfo, migrationCallback, initializationCallback);
    }

    private static native long nativeCreate(String str, String str2, boolean z, long j);

    private static native String nativeCreateAndSetSyncConfig(long j, long j2, String str, String str2, String str3, String str4, String str5, String str6, byte b, String str7, String str8, String[] strArr, byte b2, String str9, Object obj);

    private static native void nativeEnableChangeNotification(long j, boolean z);

    private static native long nativeGetFinalizerPtr();

    private static native void nativeSetCompactOnLaunchCallback(long j, CompactOnLaunchCallback compactOnLaunchCallback);

    private static native void nativeSetEncryptionKey(long j, byte[] bArr);

    private static native void nativeSetInMemory(long j, boolean z);

    private native void nativeSetInitializationCallback(long j, OsSharedRealm.InitializationCallback initializationCallback);

    private native void nativeSetSchemaConfig(long j, byte b, long j2, long j3, @Nullable OsSharedRealm.MigrationCallback migrationCallback);

    private static native void nativeSetSyncConfigProxySettings(long j, byte b, String str, int i);

    private static native void nativeSetSyncConfigSslSettings(long j, boolean z, String str);

    public NativeContext getContext() {
        return this.context;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public RealmConfiguration getRealmConfiguration() {
        return this.realmConfiguration;
    }

    public URI getResolvedRealmURI() {
        return this.resolvedRealmURI;
    }
}
