package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.encoders.a.a;
import com.google.firebase.encoders.a.b;
import com.google.firebase.encoders.c;
import com.google.firebase.encoders.d;
import com.google.firebase.encoders.e;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder.class */
public final class AutoCrashlyticsReportEncoder implements a {
    public static final int CODEGEN_VERSION = 2;
    public static final a CONFIG = new AutoCrashlyticsReportEncoder();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder.class */
    static final class CrashlyticsReportCustomAttributeEncoder implements d<CrashlyticsReport.CustomAttribute> {
        static final CrashlyticsReportCustomAttributeEncoder INSTANCE = new CrashlyticsReportCustomAttributeEncoder();
        private static final c KEY_DESCRIPTOR = c.a("key");
        private static final c VALUE_DESCRIPTOR = c.a("value");

        private CrashlyticsReportCustomAttributeEncoder() {
        }

        public final void encode(CrashlyticsReport.CustomAttribute customAttribute, e eVar) throws IOException {
            eVar.add(KEY_DESCRIPTOR, customAttribute.getKey());
            eVar.add(VALUE_DESCRIPTOR, customAttribute.getValue());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder.class */
    static final class CrashlyticsReportEncoder implements d<CrashlyticsReport> {
        static final CrashlyticsReportEncoder INSTANCE = new CrashlyticsReportEncoder();
        private static final c SDKVERSION_DESCRIPTOR = c.a("sdkVersion");
        private static final c GMPAPPID_DESCRIPTOR = c.a("gmpAppId");
        private static final c PLATFORM_DESCRIPTOR = c.a("platform");
        private static final c INSTALLATIONUUID_DESCRIPTOR = c.a("installationUuid");
        private static final c BUILDVERSION_DESCRIPTOR = c.a("buildVersion");
        private static final c DISPLAYVERSION_DESCRIPTOR = c.a("displayVersion");
        private static final c SESSION_DESCRIPTOR = c.a("session");
        private static final c NDKPAYLOAD_DESCRIPTOR = c.a("ndkPayload");

        private CrashlyticsReportEncoder() {
        }

        public final void encode(CrashlyticsReport crashlyticsReport, e eVar) throws IOException {
            eVar.add(SDKVERSION_DESCRIPTOR, crashlyticsReport.getSdkVersion());
            eVar.add(GMPAPPID_DESCRIPTOR, crashlyticsReport.getGmpAppId());
            eVar.add(PLATFORM_DESCRIPTOR, crashlyticsReport.getPlatform());
            eVar.add(INSTALLATIONUUID_DESCRIPTOR, crashlyticsReport.getInstallationUuid());
            eVar.add(BUILDVERSION_DESCRIPTOR, crashlyticsReport.getBuildVersion());
            eVar.add(DISPLAYVERSION_DESCRIPTOR, crashlyticsReport.getDisplayVersion());
            eVar.add(SESSION_DESCRIPTOR, crashlyticsReport.getSession());
            eVar.add(NDKPAYLOAD_DESCRIPTOR, crashlyticsReport.getNdkPayload());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder.class */
    static final class CrashlyticsReportFilesPayloadEncoder implements d<CrashlyticsReport.FilesPayload> {
        static final CrashlyticsReportFilesPayloadEncoder INSTANCE = new CrashlyticsReportFilesPayloadEncoder();
        private static final c FILES_DESCRIPTOR = c.a("files");
        private static final c ORGID_DESCRIPTOR = c.a("orgId");

        private CrashlyticsReportFilesPayloadEncoder() {
        }

        public final void encode(CrashlyticsReport.FilesPayload filesPayload, e eVar) throws IOException {
            eVar.add(FILES_DESCRIPTOR, filesPayload.getFiles());
            eVar.add(ORGID_DESCRIPTOR, filesPayload.getOrgId());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder.class */
    static final class CrashlyticsReportFilesPayloadFileEncoder implements d<CrashlyticsReport.FilesPayload.File> {
        static final CrashlyticsReportFilesPayloadFileEncoder INSTANCE = new CrashlyticsReportFilesPayloadFileEncoder();
        private static final c FILENAME_DESCRIPTOR = c.a("filename");
        private static final c CONTENTS_DESCRIPTOR = c.a("contents");

        private CrashlyticsReportFilesPayloadFileEncoder() {
        }

        public final void encode(CrashlyticsReport.FilesPayload.File file, e eVar) throws IOException {
            eVar.add(FILENAME_DESCRIPTOR, file.getFilename());
            eVar.add(CONTENTS_DESCRIPTOR, file.getContents());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder.class */
    static final class CrashlyticsReportSessionApplicationEncoder implements d<CrashlyticsReport.Session.Application> {
        static final CrashlyticsReportSessionApplicationEncoder INSTANCE = new CrashlyticsReportSessionApplicationEncoder();
        private static final c IDENTIFIER_DESCRIPTOR = c.a("identifier");
        private static final c VERSION_DESCRIPTOR = c.a("version");
        private static final c DISPLAYVERSION_DESCRIPTOR = c.a("displayVersion");
        private static final c ORGANIZATION_DESCRIPTOR = c.a("organization");
        private static final c INSTALLATIONUUID_DESCRIPTOR = c.a("installationUuid");
        private static final c DEVELOPMENTPLATFORM_DESCRIPTOR = c.a("developmentPlatform");
        private static final c DEVELOPMENTPLATFORMVERSION_DESCRIPTOR = c.a("developmentPlatformVersion");

        private CrashlyticsReportSessionApplicationEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Application application, e eVar) throws IOException {
            eVar.add(IDENTIFIER_DESCRIPTOR, application.getIdentifier());
            eVar.add(VERSION_DESCRIPTOR, application.getVersion());
            eVar.add(DISPLAYVERSION_DESCRIPTOR, application.getDisplayVersion());
            eVar.add(ORGANIZATION_DESCRIPTOR, application.getOrganization());
            eVar.add(INSTALLATIONUUID_DESCRIPTOR, application.getInstallationUuid());
            eVar.add(DEVELOPMENTPLATFORM_DESCRIPTOR, application.getDevelopmentPlatform());
            eVar.add(DEVELOPMENTPLATFORMVERSION_DESCRIPTOR, application.getDevelopmentPlatformVersion());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder.class */
    static final class CrashlyticsReportSessionApplicationOrganizationEncoder implements d<CrashlyticsReport.Session.Application.Organization> {
        static final CrashlyticsReportSessionApplicationOrganizationEncoder INSTANCE = new CrashlyticsReportSessionApplicationOrganizationEncoder();
        private static final c CLSID_DESCRIPTOR = c.a("clsId");

        private CrashlyticsReportSessionApplicationOrganizationEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Application.Organization organization, e eVar) throws IOException {
            eVar.add(CLSID_DESCRIPTOR, organization.getClsId());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder.class */
    static final class CrashlyticsReportSessionDeviceEncoder implements d<CrashlyticsReport.Session.Device> {
        static final CrashlyticsReportSessionDeviceEncoder INSTANCE = new CrashlyticsReportSessionDeviceEncoder();
        private static final c ARCH_DESCRIPTOR = c.a("arch");
        private static final c MODEL_DESCRIPTOR = c.a("model");
        private static final c CORES_DESCRIPTOR = c.a("cores");
        private static final c RAM_DESCRIPTOR = c.a("ram");
        private static final c DISKSPACE_DESCRIPTOR = c.a("diskSpace");
        private static final c SIMULATOR_DESCRIPTOR = c.a("simulator");
        private static final c STATE_DESCRIPTOR = c.a(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
        private static final c MANUFACTURER_DESCRIPTOR = c.a("manufacturer");
        private static final c MODELCLASS_DESCRIPTOR = c.a("modelClass");

        private CrashlyticsReportSessionDeviceEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Device device, e eVar) throws IOException {
            eVar.add(ARCH_DESCRIPTOR, device.getArch());
            eVar.add(MODEL_DESCRIPTOR, device.getModel());
            eVar.add(CORES_DESCRIPTOR, device.getCores());
            eVar.add(RAM_DESCRIPTOR, device.getRam());
            eVar.add(DISKSPACE_DESCRIPTOR, device.getDiskSpace());
            eVar.add(SIMULATOR_DESCRIPTOR, device.isSimulator());
            eVar.add(STATE_DESCRIPTOR, device.getState());
            eVar.add(MANUFACTURER_DESCRIPTOR, device.getManufacturer());
            eVar.add(MODELCLASS_DESCRIPTOR, device.getModelClass());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder.class */
    static final class CrashlyticsReportSessionEncoder implements d<CrashlyticsReport.Session> {
        static final CrashlyticsReportSessionEncoder INSTANCE = new CrashlyticsReportSessionEncoder();
        private static final c GENERATOR_DESCRIPTOR = c.a("generator");
        private static final c IDENTIFIER_DESCRIPTOR = c.a("identifier");
        private static final c STARTEDAT_DESCRIPTOR = c.a("startedAt");
        private static final c ENDEDAT_DESCRIPTOR = c.a("endedAt");
        private static final c CRASHED_DESCRIPTOR = c.a("crashed");
        private static final c APP_DESCRIPTOR = c.a("app");
        private static final c USER_DESCRIPTOR = c.a("user");
        private static final c OS_DESCRIPTOR = c.a("os");
        private static final c DEVICE_DESCRIPTOR = c.a("device");
        private static final c EVENTS_DESCRIPTOR = c.a(Constants.VIDEO_TRACKING_EVENTS_KEY);
        private static final c GENERATORTYPE_DESCRIPTOR = c.a("generatorType");

        private CrashlyticsReportSessionEncoder() {
        }

        public final void encode(CrashlyticsReport.Session session, e eVar) throws IOException {
            eVar.add(GENERATOR_DESCRIPTOR, session.getGenerator());
            eVar.add(IDENTIFIER_DESCRIPTOR, session.getIdentifierUtf8Bytes());
            eVar.add(STARTEDAT_DESCRIPTOR, session.getStartedAt());
            eVar.add(ENDEDAT_DESCRIPTOR, session.getEndedAt());
            eVar.add(CRASHED_DESCRIPTOR, session.isCrashed());
            eVar.add(APP_DESCRIPTOR, session.getApp());
            eVar.add(USER_DESCRIPTOR, session.getUser());
            eVar.add(OS_DESCRIPTOR, session.getOs());
            eVar.add(DEVICE_DESCRIPTOR, session.getDevice());
            eVar.add(EVENTS_DESCRIPTOR, session.getEvents());
            eVar.add(GENERATORTYPE_DESCRIPTOR, session.getGeneratorType());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationEncoder implements d<CrashlyticsReport.Session.Event.Application> {
        static final CrashlyticsReportSessionEventApplicationEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationEncoder();
        private static final c EXECUTION_DESCRIPTOR = c.a("execution");
        private static final c CUSTOMATTRIBUTES_DESCRIPTOR = c.a("customAttributes");
        private static final c BACKGROUND_DESCRIPTOR = c.a("background");
        private static final c UIORIENTATION_DESCRIPTOR = c.a("uiOrientation");

        private CrashlyticsReportSessionEventApplicationEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application application, e eVar) throws IOException {
            eVar.add(EXECUTION_DESCRIPTOR, application.getExecution());
            eVar.add(CUSTOMATTRIBUTES_DESCRIPTOR, application.getCustomAttributes());
            eVar.add(BACKGROUND_DESCRIPTOR, application.getBackground());
            eVar.add(UIORIENTATION_DESCRIPTOR, application.getUiOrientation());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder implements d<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> {
        static final CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder();
        private static final c BASEADDRESS_DESCRIPTOR = c.a("baseAddress");
        private static final c SIZE_DESCRIPTOR = c.a("size");
        private static final c NAME_DESCRIPTOR = c.a("name");
        private static final c UUID_DESCRIPTOR = c.a("uuid");

        private CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage binaryImage, e eVar) throws IOException {
            eVar.add(BASEADDRESS_DESCRIPTOR, binaryImage.getBaseAddress());
            eVar.add(SIZE_DESCRIPTOR, binaryImage.getSize());
            eVar.add(NAME_DESCRIPTOR, binaryImage.getName());
            eVar.add(UUID_DESCRIPTOR, binaryImage.getUuidUtf8Bytes());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionEncoder implements d<CrashlyticsReport.Session.Event.Application.Execution> {
        static final CrashlyticsReportSessionEventApplicationExecutionEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionEncoder();
        private static final c THREADS_DESCRIPTOR = c.a("threads");
        private static final c EXCEPTION_DESCRIPTOR = c.a("exception");
        private static final c SIGNAL_DESCRIPTOR = c.a("signal");
        private static final c BINARIES_DESCRIPTOR = c.a("binaries");

        private CrashlyticsReportSessionEventApplicationExecutionEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution execution, e eVar) throws IOException {
            eVar.add(THREADS_DESCRIPTOR, execution.getThreads());
            eVar.add(EXCEPTION_DESCRIPTOR, execution.getException());
            eVar.add(SIGNAL_DESCRIPTOR, execution.getSignal());
            eVar.add(BINARIES_DESCRIPTOR, execution.getBinaries());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder implements d<CrashlyticsReport.Session.Event.Application.Execution.Exception> {
        static final CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder();
        private static final c TYPE_DESCRIPTOR = c.a("type");
        private static final c REASON_DESCRIPTOR = c.a("reason");
        private static final c FRAMES_DESCRIPTOR = c.a("frames");
        private static final c CAUSEDBY_DESCRIPTOR = c.a("causedBy");
        private static final c OVERFLOWCOUNT_DESCRIPTOR = c.a("overflowCount");

        private CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Exception exception, e eVar) throws IOException {
            eVar.add(TYPE_DESCRIPTOR, exception.getType());
            eVar.add(REASON_DESCRIPTOR, exception.getReason());
            eVar.add(FRAMES_DESCRIPTOR, exception.getFrames());
            eVar.add(CAUSEDBY_DESCRIPTOR, exception.getCausedBy());
            eVar.add(OVERFLOWCOUNT_DESCRIPTOR, exception.getOverflowCount());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionSignalEncoder implements d<CrashlyticsReport.Session.Event.Application.Execution.Signal> {
        static final CrashlyticsReportSessionEventApplicationExecutionSignalEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionSignalEncoder();
        private static final c NAME_DESCRIPTOR = c.a("name");
        private static final c CODE_DESCRIPTOR = c.a("code");
        private static final c ADDRESS_DESCRIPTOR = c.a("address");

        private CrashlyticsReportSessionEventApplicationExecutionSignalEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Signal signal, e eVar) throws IOException {
            eVar.add(NAME_DESCRIPTOR, signal.getName());
            eVar.add(CODE_DESCRIPTOR, signal.getCode());
            eVar.add(ADDRESS_DESCRIPTOR, signal.getAddress());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionThreadEncoder implements d<CrashlyticsReport.Session.Event.Application.Execution.Thread> {
        static final CrashlyticsReportSessionEventApplicationExecutionThreadEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionThreadEncoder();
        private static final c NAME_DESCRIPTOR = c.a("name");
        private static final c IMPORTANCE_DESCRIPTOR = c.a("importance");
        private static final c FRAMES_DESCRIPTOR = c.a("frames");

        private CrashlyticsReportSessionEventApplicationExecutionThreadEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Thread thread, e eVar) throws IOException {
            eVar.add(NAME_DESCRIPTOR, thread.getName());
            eVar.add(IMPORTANCE_DESCRIPTOR, thread.getImportance());
            eVar.add(FRAMES_DESCRIPTOR, thread.getFrames());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder implements d<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> {
        static final CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder();
        private static final c PC_DESCRIPTOR = c.a("pc");
        private static final c SYMBOL_DESCRIPTOR = c.a("symbol");
        private static final c FILE_DESCRIPTOR = c.a("file");
        private static final c OFFSET_DESCRIPTOR = c.a(VastIconXmlManager.OFFSET);
        private static final c IMPORTANCE_DESCRIPTOR = c.a("importance");

        private CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame frame, e eVar) throws IOException {
            eVar.add(PC_DESCRIPTOR, frame.getPc());
            eVar.add(SYMBOL_DESCRIPTOR, frame.getSymbol());
            eVar.add(FILE_DESCRIPTOR, frame.getFile());
            eVar.add(OFFSET_DESCRIPTOR, frame.getOffset());
            eVar.add(IMPORTANCE_DESCRIPTOR, frame.getImportance());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder.class */
    static final class CrashlyticsReportSessionEventDeviceEncoder implements d<CrashlyticsReport.Session.Event.Device> {
        static final CrashlyticsReportSessionEventDeviceEncoder INSTANCE = new CrashlyticsReportSessionEventDeviceEncoder();
        private static final c BATTERYLEVEL_DESCRIPTOR = c.a("batteryLevel");
        private static final c BATTERYVELOCITY_DESCRIPTOR = c.a("batteryVelocity");
        private static final c PROXIMITYON_DESCRIPTOR = c.a("proximityOn");
        private static final c ORIENTATION_DESCRIPTOR = c.a("orientation");
        private static final c RAMUSED_DESCRIPTOR = c.a("ramUsed");
        private static final c DISKUSED_DESCRIPTOR = c.a("diskUsed");

        private CrashlyticsReportSessionEventDeviceEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Device device, e eVar) throws IOException {
            eVar.add(BATTERYLEVEL_DESCRIPTOR, device.getBatteryLevel());
            eVar.add(BATTERYVELOCITY_DESCRIPTOR, device.getBatteryVelocity());
            eVar.add(PROXIMITYON_DESCRIPTOR, device.isProximityOn());
            eVar.add(ORIENTATION_DESCRIPTOR, device.getOrientation());
            eVar.add(RAMUSED_DESCRIPTOR, device.getRamUsed());
            eVar.add(DISKUSED_DESCRIPTOR, device.getDiskUsed());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder.class */
    static final class CrashlyticsReportSessionEventEncoder implements d<CrashlyticsReport.Session.Event> {
        static final CrashlyticsReportSessionEventEncoder INSTANCE = new CrashlyticsReportSessionEventEncoder();
        private static final c TIMESTAMP_DESCRIPTOR = c.a(Reporting.Key.TIMESTAMP);
        private static final c TYPE_DESCRIPTOR = c.a("type");
        private static final c APP_DESCRIPTOR = c.a("app");
        private static final c DEVICE_DESCRIPTOR = c.a("device");
        private static final c LOG_DESCRIPTOR = c.a("log");

        private CrashlyticsReportSessionEventEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event event, e eVar) throws IOException {
            eVar.add(TIMESTAMP_DESCRIPTOR, event.getTimestamp());
            eVar.add(TYPE_DESCRIPTOR, event.getType());
            eVar.add(APP_DESCRIPTOR, event.getApp());
            eVar.add(DEVICE_DESCRIPTOR, event.getDevice());
            eVar.add(LOG_DESCRIPTOR, event.getLog());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder.class */
    static final class CrashlyticsReportSessionEventLogEncoder implements d<CrashlyticsReport.Session.Event.Log> {
        static final CrashlyticsReportSessionEventLogEncoder INSTANCE = new CrashlyticsReportSessionEventLogEncoder();
        private static final c CONTENT_DESCRIPTOR = c.a(Constants.VAST_TRACKER_CONTENT);

        private CrashlyticsReportSessionEventLogEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Log log, e eVar) throws IOException {
            eVar.add(CONTENT_DESCRIPTOR, log.getContent());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder.class */
    static final class CrashlyticsReportSessionOperatingSystemEncoder implements d<CrashlyticsReport.Session.OperatingSystem> {
        static final CrashlyticsReportSessionOperatingSystemEncoder INSTANCE = new CrashlyticsReportSessionOperatingSystemEncoder();
        private static final c PLATFORM_DESCRIPTOR = c.a("platform");
        private static final c VERSION_DESCRIPTOR = c.a("version");
        private static final c BUILDVERSION_DESCRIPTOR = c.a("buildVersion");
        private static final c JAILBROKEN_DESCRIPTOR = c.a("jailbroken");

        private CrashlyticsReportSessionOperatingSystemEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.OperatingSystem operatingSystem, e eVar) throws IOException {
            eVar.add(PLATFORM_DESCRIPTOR, operatingSystem.getPlatform());
            eVar.add(VERSION_DESCRIPTOR, operatingSystem.getVersion());
            eVar.add(BUILDVERSION_DESCRIPTOR, operatingSystem.getBuildVersion());
            eVar.add(JAILBROKEN_DESCRIPTOR, operatingSystem.isJailbroken());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder.class */
    static final class CrashlyticsReportSessionUserEncoder implements d<CrashlyticsReport.Session.User> {
        static final CrashlyticsReportSessionUserEncoder INSTANCE = new CrashlyticsReportSessionUserEncoder();
        private static final c IDENTIFIER_DESCRIPTOR = c.a("identifier");

        private CrashlyticsReportSessionUserEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.User user, e eVar) throws IOException {
            eVar.add(IDENTIFIER_DESCRIPTOR, user.getIdentifier());
        }
    }

    private AutoCrashlyticsReportEncoder() {
    }

    @Override // com.google.firebase.encoders.a.a
    public final void configure(b<?> bVar) {
        bVar.registerEncoder(CrashlyticsReport.class, CrashlyticsReportEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport.class, CrashlyticsReportEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.class, CrashlyticsReportSessionEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session.class, CrashlyticsReportSessionEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Application.class, CrashlyticsReportSessionApplicationEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Application.class, CrashlyticsReportSessionApplicationEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Application.Organization.class, CrashlyticsReportSessionApplicationOrganizationEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Application_Organization.class, CrashlyticsReportSessionApplicationOrganizationEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.User.class, CrashlyticsReportSessionUserEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_User.class, CrashlyticsReportSessionUserEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.OperatingSystem.class, CrashlyticsReportSessionOperatingSystemEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_OperatingSystem.class, CrashlyticsReportSessionOperatingSystemEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Device.class, CrashlyticsReportSessionDeviceEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Device.class, CrashlyticsReportSessionDeviceEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.class, CrashlyticsReportSessionEventEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event.class, CrashlyticsReportSessionEventEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.class, CrashlyticsReportSessionEventApplicationEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application.class, CrashlyticsReportSessionEventApplicationEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.class, CrashlyticsReportSessionEventApplicationExecutionEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution.class, CrashlyticsReportSessionEventApplicationExecutionEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Thread.class, CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.class, CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.class, CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.class, CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Exception.class, CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.class, CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Signal.class, CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.class, CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.class, CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.class, CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.CustomAttribute.class, CrashlyticsReportCustomAttributeEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_CustomAttribute.class, CrashlyticsReportCustomAttributeEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Device.class, CrashlyticsReportSessionEventDeviceEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Device.class, CrashlyticsReportSessionEventDeviceEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.Session.Event.Log.class, CrashlyticsReportSessionEventLogEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Log.class, CrashlyticsReportSessionEventLogEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.FilesPayload.class, CrashlyticsReportFilesPayloadEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_FilesPayload.class, CrashlyticsReportFilesPayloadEncoder.INSTANCE);
        bVar.registerEncoder(CrashlyticsReport.FilesPayload.File.class, CrashlyticsReportFilesPayloadFileEncoder.INSTANCE);
        bVar.registerEncoder(AutoValue_CrashlyticsReport_FilesPayload_File.class, CrashlyticsReportFilesPayloadFileEncoder.INSTANCE);
    }
}
