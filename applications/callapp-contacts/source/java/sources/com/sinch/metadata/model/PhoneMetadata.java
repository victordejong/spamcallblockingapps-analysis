package com.sinch.metadata.model;

import android.os.Build;
import com.sinch.metadata.collector.MetadataCollector;
import com.sinch.metadata.collector.sim.SimCardsInfoListSerializer;
import com.sinch.metadata.model.network.NetworkInfo;
import com.sinch.metadata.model.network.NetworkInfo$$serializer;
import com.sinch.metadata.model.sim.SimCardInfo;
import com.sinch.metadata.model.sim.SimState;
import com.sinch.metadata.model.sim.SimState$$serializer;
import io.objectbox.model.PropertyFlags;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.p572b.C20339ad;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� N2\u00020\u0001:\u0002MNB¹\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0001\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0016\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001aBi\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0005¢\u0006\u0002\u0010\u001bJ\t\u0010<\u001a\u00020\u0005HÆ\u0003J\t\u0010=\u001a\u00020\u0014HÆ\u0003J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\t\u0010?\u001a\u00020\u0005HÆ\u0003J\t\u0010@\u001a\u00020\u0005HÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003J\t\u0010B\u001a\u00020\nHÆ\u0003J\u0011\u0010C\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003J\t\u0010D\u001a\u00020\u000fHÆ\u0003J\t\u0010E\u001a\u00020\u0005HÆ\u0003J\t\u0010F\u001a\u00020\u0012HÆ\u0003J\u007f\u0010G\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0005HÆ\u0001J\u0013\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010K\u001a\u00020\u0003HÖ\u0001J\t\u0010L\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0015\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\u001fR\u001c\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010\u001fR\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b$\u0010\u001d\u001a\u0004\b%\u0010&R\u001c\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b'\u0010\u001d\u001a\u0004\b(\u0010)R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b*\u0010\u001d\u001a\u0004\b+\u0010\u001fR\u001c\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b,\u0010\u001d\u001a\u0004\b-\u0010.R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b/\u0010\u001d\u001a\u0004\b0\u0010\u001fR\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b1\u0010\u001d\u001a\u0004\b2\u0010\u001fR\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004¢\u0006\n\n\u0002\u00104\u0012\u0004\b3\u0010\u001dR$\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b5\u0010\u001d\u001a\u0004\b6\u00107R\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b8\u0010\u001d\u001a\u0004\b9\u0010:R\u0016\u0010\u0016\u001a\u00020\u00038\u0002X\u0083D¢\u0006\b\n��\u0012\u0004\b;\u0010\u001d¨\u0006O"}, m4298d2 = {"Lcom/sinch/metadata/model/PhoneMetadata;", "", "seen1", "", "os", "", "platform", "sdk", "buildFlavor", "device", "Lcom/sinch/metadata/model/DeviceMetadata;", "simCardsInfo", "", "Lcom/sinch/metadata/model/sim/SimCardInfo;", "simState", "Lcom/sinch/metadata/model/sim/SimState;", "defaultLocale", "permissionsMetadata", "Lcom/sinch/metadata/model/PermissionsMetadata;", "networkInfo", "Lcom/sinch/metadata/model/network/NetworkInfo;", "batteryLevel", "version", "simCardCount", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/DeviceMetadata;Ljava/util/List;Lcom/sinch/metadata/model/sim/SimState;Ljava/lang/String;Lcom/sinch/metadata/model/PermissionsMetadata;Lcom/sinch/metadata/model/network/NetworkInfo;Ljava/lang/String;ILjava/lang/Integer;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/DeviceMetadata;Ljava/util/List;Lcom/sinch/metadata/model/sim/SimState;Ljava/lang/String;Lcom/sinch/metadata/model/PermissionsMetadata;Lcom/sinch/metadata/model/network/NetworkInfo;Ljava/lang/String;)V", "batteryLevel$annotations", "()V", "getBatteryLevel", "()Ljava/lang/String;", "buildFlavor$annotations", "getBuildFlavor", "defaultLocale$annotations", "getDefaultLocale", "device$annotations", "getDevice", "()Lcom/sinch/metadata/model/DeviceMetadata;", "networkInfo$annotations", "getNetworkInfo", "()Lcom/sinch/metadata/model/network/NetworkInfo;", "os$annotations", "getOs", "permissionsMetadata$annotations", "getPermissionsMetadata", "()Lcom/sinch/metadata/model/PermissionsMetadata;", "platform$annotations", "getPlatform", "sdk$annotations", "getSdk", "simCardCount$annotations", "Ljava/lang/Integer;", "simCardsInfo$annotations", "getSimCardsInfo", "()Ljava/util/List;", "simState$annotations", "getSimState", "()Lcom/sinch/metadata/model/sim/SimState;", "version$annotations", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/PhoneMetadata.class */
public final class PhoneMetadata {
    public static final Companion Companion = new Companion(null);
    public static final int METADATA_VERSION_NUMBER = 2;
    private final String batteryLevel;
    private final String buildFlavor;
    private final String defaultLocale;
    private final DeviceMetadata device;
    private final NetworkInfo networkInfo;

    /* renamed from: os */
    private final String f60695os;
    private final PermissionsMetadata permissionsMetadata;
    private final String platform;
    private final String sdk;
    private final Integer simCardCount;
    private final List<SimCardInfo> simCardsInfo;
    private final SimState simState;
    private final int version;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u009c\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0010\u0010\n\u001a\f\u0012\u0004\u0012\u00020\f0\u000bj\u0002`\r2\u0018\u0010\u000e\u001a\u0014\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000bj\u0002`\u00112\u0010\u0010\u0012\u001a\f\u0012\u0004\u0012\u00020\u00130\u000bj\u0002`\u00142\u0010\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\b0\u000bj\u0002`\u00162\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00180\u000bj\u0002`\u00192\u0010\u0010\u001a\u001a\f\u0012\u0004\u0012\u00020\u001b0\u000bj\u0002`\u001c2\u0010\u0010\u001d\u001a\f\u0012\u0004\u0012\u00020\b0\u000bj\u0002`\u001eJ\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060 HÆ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006!"}, m4298d2 = {"Lcom/sinch/metadata/model/PhoneMetadata$Companion;", "", "()V", "METADATA_VERSION_NUMBER", "", "createUsing", "Lcom/sinch/metadata/model/PhoneMetadata;", "sdk", "", "sdkFlavor", "deviceMetadataCollector", "Lcom/sinch/metadata/collector/MetadataCollector;", "Lcom/sinch/metadata/model/DeviceMetadata;", "Lcom/sinch/metadata/collector/DeviceMetadataCollector;", "simCardInfoCollector", "", "Lcom/sinch/metadata/model/sim/SimCardInfo;", "Lcom/sinch/metadata/collector/SimCardInfoCollector;", "simsStateCollector", "Lcom/sinch/metadata/model/sim/SimState;", "Lcom/sinch/metadata/collector/SimsStateCollector;", "localeCollector", "Lcom/sinch/metadata/collector/LocaleCollector;", "permissionsCollector", "Lcom/sinch/metadata/model/PermissionsMetadata;", "Lcom/sinch/metadata/collector/PermissionsCollector;", "networkInfoCollector", "Lcom/sinch/metadata/model/network/NetworkInfo;", "Lcom/sinch/metadata/collector/NetworkInfoCollector;", "batteryLevelCollector", "Lcom/sinch/metadata/collector/BatteryLevelCollector;", "serializer", "Lkotlinx/serialization/KSerializer;", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/PhoneMetadata$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PhoneMetadata createUsing(String sdk, String sdkFlavor, MetadataCollector<DeviceMetadata> deviceMetadataCollector, MetadataCollector<List<SimCardInfo>> simCardInfoCollector, MetadataCollector<SimState> simsStateCollector, MetadataCollector<String> localeCollector, MetadataCollector<PermissionsMetadata> permissionsCollector, MetadataCollector<NetworkInfo> networkInfoCollector, MetadataCollector<String> batteryLevelCollector) {
            C18524p.m3841c(sdk, "sdk");
            C18524p.m3841c(sdkFlavor, "sdkFlavor");
            C18524p.m3841c(deviceMetadataCollector, "deviceMetadataCollector");
            C18524p.m3841c(simCardInfoCollector, "simCardInfoCollector");
            C18524p.m3841c(simsStateCollector, "simsStateCollector");
            C18524p.m3841c(localeCollector, "localeCollector");
            C18524p.m3841c(permissionsCollector, "permissionsCollector");
            C18524p.m3841c(networkInfoCollector, "networkInfoCollector");
            C18524p.m3841c(batteryLevelCollector, "batteryLevelCollector");
            String str = Build.VERSION.RELEASE;
            C18524p.m3849a((Object) str, "Build.VERSION.RELEASE");
            return new PhoneMetadata(str, null, sdk, sdkFlavor, deviceMetadataCollector.collect(), simCardInfoCollector.collect(), simsStateCollector.collect(), localeCollector.collect(), permissionsCollector.collect(), networkInfoCollector.collect(), batteryLevelCollector.collect(), 2, null);
        }

        public final KSerializer<PhoneMetadata> serializer() {
            return PhoneMetadata$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PhoneMetadata(int i, String str, String str2, String str3, String str4, DeviceMetadata deviceMetadata, List<SimCardInfo> list, SimState simState, String str5, PermissionsMetadata permissionsMetadata, NetworkInfo networkInfo, String str6, int i2, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.f60695os = str;
        } else {
            String str7 = Build.VERSION.RELEASE;
            C18524p.m3849a((Object) str7, "Build.VERSION.RELEASE");
            this.f60695os = str7;
        }
        if ((i & 2) != 0) {
            this.platform = str2;
        } else {
            this.platform = "Android";
        }
        if ((i & 4) != 0) {
            this.sdk = str3;
            if ((i & 8) == 0) {
                throw new MissingFieldException("buildFlavor");
            }
            this.buildFlavor = str4;
            if ((i & 16) == 0) {
                throw new MissingFieldException("device");
            }
            this.device = deviceMetadata;
            if ((i & 32) == 0) {
                throw new MissingFieldException("simCardsInfo");
            }
            this.simCardsInfo = list;
            if ((i & 64) == 0) {
                throw new MissingFieldException("simState");
            }
            this.simState = simState;
            if ((i & 128) == 0) {
                throw new MissingFieldException("defaultLocale");
            }
            this.defaultLocale = str5;
            if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 0) {
                throw new MissingFieldException("permissions");
            }
            this.permissionsMetadata = permissionsMetadata;
            if ((i & 512) == 0) {
                throw new MissingFieldException("networkInfo");
            }
            this.networkInfo = networkInfo;
            if ((i & 1024) == 0) {
                throw new MissingFieldException("batteryLevel");
            }
            this.batteryLevel = str6;
            if ((i & 2048) != 0) {
                this.version = i2;
            } else {
                this.version = 2;
            }
            this.simCardCount = (i & 4096) == 0 ? list != null ? Integer.valueOf(list.size()) : null : num;
            return;
        }
        throw new MissingFieldException("sdk");
    }

    public PhoneMetadata(String os, String platform, String sdk, String buildFlavor, DeviceMetadata device, List<SimCardInfo> list, SimState simState, String defaultLocale, PermissionsMetadata permissionsMetadata, NetworkInfo networkInfo, String batteryLevel) {
        C18524p.m3841c(os, "os");
        C18524p.m3841c(platform, "platform");
        C18524p.m3841c(sdk, "sdk");
        C18524p.m3841c(buildFlavor, "buildFlavor");
        C18524p.m3841c(device, "device");
        C18524p.m3841c(simState, "simState");
        C18524p.m3841c(defaultLocale, "defaultLocale");
        C18524p.m3841c(permissionsMetadata, "permissionsMetadata");
        C18524p.m3841c(networkInfo, "networkInfo");
        C18524p.m3841c(batteryLevel, "batteryLevel");
        this.f60695os = os;
        this.platform = platform;
        this.sdk = sdk;
        this.buildFlavor = buildFlavor;
        this.device = device;
        this.simCardsInfo = list;
        this.simState = simState;
        this.defaultLocale = defaultLocale;
        this.permissionsMetadata = permissionsMetadata;
        this.networkInfo = networkInfo;
        this.batteryLevel = batteryLevel;
        this.version = 2;
        this.simCardCount = list != null ? Integer.valueOf(list.size()) : null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PhoneMetadata(java.lang.String r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, com.sinch.metadata.model.DeviceMetadata r18, java.util.List r19, com.sinch.metadata.model.sim.SimState r20, java.lang.String r21, com.sinch.metadata.model.PermissionsMetadata r22, com.sinch.metadata.model.network.NetworkInfo r23, java.lang.String r24, int r25, kotlin.jvm.internal.DefaultConstructorMarker r26) {
        /*
            r13 = this;
            r0 = r25
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L14
            java.lang.String r0 = android.os.Build.VERSION.RELEASE
            r14 = r0
            r0 = r14
            java.lang.String r1 = "Build.VERSION.RELEASE"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            goto L14
        L14:
            r0 = r25
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L21
            java.lang.String r0 = "Android"
            r15 = r0
            goto L21
        L21:
            r0 = r13
            r1 = r14
            r2 = r15
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r9 = r22
            r10 = r23
            r11 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sinch.metadata.model.PhoneMetadata.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.sinch.metadata.model.DeviceMetadata, java.util.List, com.sinch.metadata.model.sim.SimState, java.lang.String, com.sinch.metadata.model.PermissionsMetadata, com.sinch.metadata.model.network.NetworkInfo, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public static /* synthetic */ void batteryLevel$annotations() {
    }

    public static /* synthetic */ void buildFlavor$annotations() {
    }

    public static /* synthetic */ PhoneMetadata copy$default(PhoneMetadata phoneMetadata, String str, String str2, String str3, String str4, DeviceMetadata deviceMetadata, List list, SimState simState, String str5, PermissionsMetadata permissionsMetadata, NetworkInfo networkInfo, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = phoneMetadata.f60695os;
        }
        if ((i & 2) != 0) {
            str2 = phoneMetadata.platform;
        }
        if ((i & 4) != 0) {
            str3 = phoneMetadata.sdk;
        }
        if ((i & 8) != 0) {
            str4 = phoneMetadata.buildFlavor;
        }
        if ((i & 16) != 0) {
            deviceMetadata = phoneMetadata.device;
        }
        if ((i & 32) != 0) {
            list = phoneMetadata.simCardsInfo;
        }
        if ((i & 64) != 0) {
            simState = phoneMetadata.simState;
        }
        if ((i & 128) != 0) {
            str5 = phoneMetadata.defaultLocale;
        }
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            permissionsMetadata = phoneMetadata.permissionsMetadata;
        }
        if ((i & 512) != 0) {
            networkInfo = phoneMetadata.networkInfo;
        }
        if ((i & 1024) != 0) {
            str6 = phoneMetadata.batteryLevel;
        }
        return phoneMetadata.copy(str, str2, str3, str4, deviceMetadata, list, simState, str5, permissionsMetadata, networkInfo, str6);
    }

    public static /* synthetic */ void defaultLocale$annotations() {
    }

    public static /* synthetic */ void device$annotations() {
    }

    public static /* synthetic */ void networkInfo$annotations() {
    }

    public static /* synthetic */ void os$annotations() {
    }

    public static /* synthetic */ void permissionsMetadata$annotations() {
    }

    public static /* synthetic */ void platform$annotations() {
    }

    public static /* synthetic */ void sdk$annotations() {
    }

    private static /* synthetic */ void simCardCount$annotations() {
    }

    public static /* synthetic */ void simCardsInfo$annotations() {
    }

    public static /* synthetic */ void simState$annotations() {
    }

    private static /* synthetic */ void version$annotations() {
    }

    public static final void write$Self(PhoneMetadata self, CompositeEncoder output, SerialDescriptor serialDesc) {
        String str;
        List<SimCardInfo> list;
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        String str2 = self.f60695os;
        C18524p.m3849a((Object) Build.VERSION.RELEASE, "Build.VERSION.RELEASE");
        boolean z = false;
        if ((!C18524p.m3850a((Object) str2, (Object) str)) || output.shouldEncodeElementDefault(serialDesc, 0)) {
            output.encodeStringElement(serialDesc, 0, self.f60695os);
        }
        if ((!C18524p.m3850a((Object) self.platform, (Object) "Android")) || output.shouldEncodeElementDefault(serialDesc, 1)) {
            output.encodeStringElement(serialDesc, 1, self.platform);
        }
        output.encodeStringElement(serialDesc, 2, self.sdk);
        output.encodeStringElement(serialDesc, 3, self.buildFlavor);
        output.encodeSerializableElement(serialDesc, 4, DeviceMetadata$$serializer.INSTANCE, self.device);
        output.encodeNullableSerializableElement(serialDesc, 5, SimCardsInfoListSerializer.INSTANCE, self.simCardsInfo);
        output.encodeSerializableElement(serialDesc, 6, SimState$$serializer.INSTANCE, self.simState);
        output.encodeStringElement(serialDesc, 7, self.defaultLocale);
        output.encodeSerializableElement(serialDesc, 8, PermissionsMetadata$$serializer.INSTANCE, self.permissionsMetadata);
        output.encodeSerializableElement(serialDesc, 9, NetworkInfo$$serializer.INSTANCE, self.networkInfo);
        output.encodeStringElement(serialDesc, 10, self.batteryLevel);
        if (self.version != 2) {
            z = true;
        }
        if (z || output.shouldEncodeElementDefault(serialDesc, 11)) {
            output.encodeIntElement(serialDesc, 11, self.version);
        }
        Integer num = self.simCardCount;
        if ((!C18524p.m3850a(num, self.simCardsInfo != null ? Integer.valueOf(list.size()) : null)) || output.shouldEncodeElementDefault(serialDesc, 12)) {
            output.encodeNullableSerializableElement(serialDesc, 12, C20339ad.f66810a, self.simCardCount);
        }
    }

    public final String component1() {
        return this.f60695os;
    }

    public final NetworkInfo component10() {
        return this.networkInfo;
    }

    public final String component11() {
        return this.batteryLevel;
    }

    public final String component2() {
        return this.platform;
    }

    public final String component3() {
        return this.sdk;
    }

    public final String component4() {
        return this.buildFlavor;
    }

    public final DeviceMetadata component5() {
        return this.device;
    }

    public final List<SimCardInfo> component6() {
        return this.simCardsInfo;
    }

    public final SimState component7() {
        return this.simState;
    }

    public final String component8() {
        return this.defaultLocale;
    }

    public final PermissionsMetadata component9() {
        return this.permissionsMetadata;
    }

    public final PhoneMetadata copy(String os, String platform, String sdk, String buildFlavor, DeviceMetadata device, List<SimCardInfo> list, SimState simState, String defaultLocale, PermissionsMetadata permissionsMetadata, NetworkInfo networkInfo, String batteryLevel) {
        C18524p.m3841c(os, "os");
        C18524p.m3841c(platform, "platform");
        C18524p.m3841c(sdk, "sdk");
        C18524p.m3841c(buildFlavor, "buildFlavor");
        C18524p.m3841c(device, "device");
        C18524p.m3841c(simState, "simState");
        C18524p.m3841c(defaultLocale, "defaultLocale");
        C18524p.m3841c(permissionsMetadata, "permissionsMetadata");
        C18524p.m3841c(networkInfo, "networkInfo");
        C18524p.m3841c(batteryLevel, "batteryLevel");
        return new PhoneMetadata(os, platform, sdk, buildFlavor, device, list, simState, defaultLocale, permissionsMetadata, networkInfo, batteryLevel);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PhoneMetadata)) {
                return false;
            }
            PhoneMetadata phoneMetadata = (PhoneMetadata) obj;
            return C18524p.m3850a((Object) this.f60695os, (Object) phoneMetadata.f60695os) && C18524p.m3850a((Object) this.platform, (Object) phoneMetadata.platform) && C18524p.m3850a((Object) this.sdk, (Object) phoneMetadata.sdk) && C18524p.m3850a((Object) this.buildFlavor, (Object) phoneMetadata.buildFlavor) && C18524p.m3850a(this.device, phoneMetadata.device) && C18524p.m3850a(this.simCardsInfo, phoneMetadata.simCardsInfo) && C18524p.m3850a(this.simState, phoneMetadata.simState) && C18524p.m3850a((Object) this.defaultLocale, (Object) phoneMetadata.defaultLocale) && C18524p.m3850a(this.permissionsMetadata, phoneMetadata.permissionsMetadata) && C18524p.m3850a(this.networkInfo, phoneMetadata.networkInfo) && C18524p.m3850a((Object) this.batteryLevel, (Object) phoneMetadata.batteryLevel);
        }
        return true;
    }

    public final String getBatteryLevel() {
        return this.batteryLevel;
    }

    public final String getBuildFlavor() {
        return this.buildFlavor;
    }

    public final String getDefaultLocale() {
        return this.defaultLocale;
    }

    public final DeviceMetadata getDevice() {
        return this.device;
    }

    public final NetworkInfo getNetworkInfo() {
        return this.networkInfo;
    }

    public final String getOs() {
        return this.f60695os;
    }

    public final PermissionsMetadata getPermissionsMetadata() {
        return this.permissionsMetadata;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final String getSdk() {
        return this.sdk;
    }

    public final List<SimCardInfo> getSimCardsInfo() {
        return this.simCardsInfo;
    }

    public final SimState getSimState() {
        return this.simState;
    }

    public final int hashCode() {
        String str = this.f60695os;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.platform;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.sdk;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.buildFlavor;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        DeviceMetadata deviceMetadata = this.device;
        int hashCode5 = deviceMetadata != null ? deviceMetadata.hashCode() : 0;
        List<SimCardInfo> list = this.simCardsInfo;
        int hashCode6 = list != null ? list.hashCode() : 0;
        SimState simState = this.simState;
        int hashCode7 = simState != null ? simState.hashCode() : 0;
        String str5 = this.defaultLocale;
        int hashCode8 = str5 != null ? str5.hashCode() : 0;
        PermissionsMetadata permissionsMetadata = this.permissionsMetadata;
        int hashCode9 = permissionsMetadata != null ? permissionsMetadata.hashCode() : 0;
        NetworkInfo networkInfo = this.networkInfo;
        int hashCode10 = networkInfo != null ? networkInfo.hashCode() : 0;
        String str6 = this.batteryLevel;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    public final String toString() {
        return "PhoneMetadata(os=" + this.f60695os + ", platform=" + this.platform + ", sdk=" + this.sdk + ", buildFlavor=" + this.buildFlavor + ", device=" + this.device + ", simCardsInfo=" + this.simCardsInfo + ", simState=" + this.simState + ", defaultLocale=" + this.defaultLocale + ", permissionsMetadata=" + this.permissionsMetadata + ", networkInfo=" + this.networkInfo + ", batteryLevel=" + this.batteryLevel + ")";
    }
}
