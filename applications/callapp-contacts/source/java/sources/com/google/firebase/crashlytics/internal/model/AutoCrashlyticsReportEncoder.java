package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.encoders.AbstractC15738d;
import com.google.firebase.encoders.AbstractC15739e;
import com.google.firebase.encoders.C15736c;
import com.google.firebase.encoders.p393a.AbstractC15733a;
import com.google.firebase.encoders.p393a.AbstractC15734b;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder.class */
public final class AutoCrashlyticsReportEncoder implements AbstractC15733a {
    public static final int CODEGEN_VERSION = 2;
    public static final AbstractC15733a CONFIG = new AutoCrashlyticsReportEncoder();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder.class */
    static final class CrashlyticsReportCustomAttributeEncoder implements AbstractC15738d<CrashlyticsReport.CustomAttribute> {
        static final CrashlyticsReportCustomAttributeEncoder INSTANCE = new CrashlyticsReportCustomAttributeEncoder();
        private static final C15736c KEY_DESCRIPTOR = C15736c.m8470a("key");
        private static final C15736c VALUE_DESCRIPTOR = C15736c.m8470a("value");

        private CrashlyticsReportCustomAttributeEncoder() {
        }

        public final void encode(CrashlyticsReport.CustomAttribute customAttribute, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(KEY_DESCRIPTOR, customAttribute.getKey());
            abstractC15739e.add(VALUE_DESCRIPTOR, customAttribute.getValue());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder.class */
    static final class CrashlyticsReportEncoder implements AbstractC15738d<CrashlyticsReport> {
        static final CrashlyticsReportEncoder INSTANCE = new CrashlyticsReportEncoder();
        private static final C15736c SDKVERSION_DESCRIPTOR = C15736c.m8470a("sdkVersion");
        private static final C15736c GMPAPPID_DESCRIPTOR = C15736c.m8470a("gmpAppId");
        private static final C15736c PLATFORM_DESCRIPTOR = C15736c.m8470a("platform");
        private static final C15736c INSTALLATIONUUID_DESCRIPTOR = C15736c.m8470a("installationUuid");
        private static final C15736c BUILDVERSION_DESCRIPTOR = C15736c.m8470a("buildVersion");
        private static final C15736c DISPLAYVERSION_DESCRIPTOR = C15736c.m8470a("displayVersion");
        private static final C15736c SESSION_DESCRIPTOR = C15736c.m8470a("session");
        private static final C15736c NDKPAYLOAD_DESCRIPTOR = C15736c.m8470a("ndkPayload");

        private CrashlyticsReportEncoder() {
        }

        public final void encode(CrashlyticsReport crashlyticsReport, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(SDKVERSION_DESCRIPTOR, crashlyticsReport.getSdkVersion());
            abstractC15739e.add(GMPAPPID_DESCRIPTOR, crashlyticsReport.getGmpAppId());
            abstractC15739e.add(PLATFORM_DESCRIPTOR, crashlyticsReport.getPlatform());
            abstractC15739e.add(INSTALLATIONUUID_DESCRIPTOR, crashlyticsReport.getInstallationUuid());
            abstractC15739e.add(BUILDVERSION_DESCRIPTOR, crashlyticsReport.getBuildVersion());
            abstractC15739e.add(DISPLAYVERSION_DESCRIPTOR, crashlyticsReport.getDisplayVersion());
            abstractC15739e.add(SESSION_DESCRIPTOR, crashlyticsReport.getSession());
            abstractC15739e.add(NDKPAYLOAD_DESCRIPTOR, crashlyticsReport.getNdkPayload());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder.class */
    static final class CrashlyticsReportFilesPayloadEncoder implements AbstractC15738d<CrashlyticsReport.FilesPayload> {
        static final CrashlyticsReportFilesPayloadEncoder INSTANCE = new CrashlyticsReportFilesPayloadEncoder();
        private static final C15736c FILES_DESCRIPTOR = C15736c.m8470a("files");
        private static final C15736c ORGID_DESCRIPTOR = C15736c.m8470a("orgId");

        private CrashlyticsReportFilesPayloadEncoder() {
        }

        public final void encode(CrashlyticsReport.FilesPayload filesPayload, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(FILES_DESCRIPTOR, filesPayload.getFiles());
            abstractC15739e.add(ORGID_DESCRIPTOR, filesPayload.getOrgId());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder.class */
    static final class CrashlyticsReportFilesPayloadFileEncoder implements AbstractC15738d<CrashlyticsReport.FilesPayload.File> {
        static final CrashlyticsReportFilesPayloadFileEncoder INSTANCE = new CrashlyticsReportFilesPayloadFileEncoder();
        private static final C15736c FILENAME_DESCRIPTOR = C15736c.m8470a("filename");
        private static final C15736c CONTENTS_DESCRIPTOR = C15736c.m8470a("contents");

        private CrashlyticsReportFilesPayloadFileEncoder() {
        }

        public final void encode(CrashlyticsReport.FilesPayload.File file, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(FILENAME_DESCRIPTOR, file.getFilename());
            abstractC15739e.add(CONTENTS_DESCRIPTOR, file.getContents());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder.class */
    static final class CrashlyticsReportSessionApplicationEncoder implements AbstractC15738d<CrashlyticsReport.Session.Application> {
        static final CrashlyticsReportSessionApplicationEncoder INSTANCE = new CrashlyticsReportSessionApplicationEncoder();
        private static final C15736c IDENTIFIER_DESCRIPTOR = C15736c.m8470a("identifier");
        private static final C15736c VERSION_DESCRIPTOR = C15736c.m8470a("version");
        private static final C15736c DISPLAYVERSION_DESCRIPTOR = C15736c.m8470a("displayVersion");
        private static final C15736c ORGANIZATION_DESCRIPTOR = C15736c.m8470a("organization");
        private static final C15736c INSTALLATIONUUID_DESCRIPTOR = C15736c.m8470a("installationUuid");
        private static final C15736c DEVELOPMENTPLATFORM_DESCRIPTOR = C15736c.m8470a("developmentPlatform");
        private static final C15736c DEVELOPMENTPLATFORMVERSION_DESCRIPTOR = C15736c.m8470a("developmentPlatformVersion");

        private CrashlyticsReportSessionApplicationEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Application application, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(IDENTIFIER_DESCRIPTOR, application.getIdentifier());
            abstractC15739e.add(VERSION_DESCRIPTOR, application.getVersion());
            abstractC15739e.add(DISPLAYVERSION_DESCRIPTOR, application.getDisplayVersion());
            abstractC15739e.add(ORGANIZATION_DESCRIPTOR, application.getOrganization());
            abstractC15739e.add(INSTALLATIONUUID_DESCRIPTOR, application.getInstallationUuid());
            abstractC15739e.add(DEVELOPMENTPLATFORM_DESCRIPTOR, application.getDevelopmentPlatform());
            abstractC15739e.add(DEVELOPMENTPLATFORMVERSION_DESCRIPTOR, application.getDevelopmentPlatformVersion());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder.class */
    static final class CrashlyticsReportSessionApplicationOrganizationEncoder implements AbstractC15738d<CrashlyticsReport.Session.Application.Organization> {
        static final CrashlyticsReportSessionApplicationOrganizationEncoder INSTANCE = new CrashlyticsReportSessionApplicationOrganizationEncoder();
        private static final C15736c CLSID_DESCRIPTOR = C15736c.m8470a("clsId");

        private CrashlyticsReportSessionApplicationOrganizationEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Application.Organization organization, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(CLSID_DESCRIPTOR, organization.getClsId());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder.class */
    static final class CrashlyticsReportSessionDeviceEncoder implements AbstractC15738d<CrashlyticsReport.Session.Device> {
        static final CrashlyticsReportSessionDeviceEncoder INSTANCE = new CrashlyticsReportSessionDeviceEncoder();
        private static final C15736c ARCH_DESCRIPTOR = C15736c.m8470a("arch");
        private static final C15736c MODEL_DESCRIPTOR = C15736c.m8470a("model");
        private static final C15736c CORES_DESCRIPTOR = C15736c.m8470a("cores");
        private static final C15736c RAM_DESCRIPTOR = C15736c.m8470a("ram");
        private static final C15736c DISKSPACE_DESCRIPTOR = C15736c.m8470a("diskSpace");
        private static final C15736c SIMULATOR_DESCRIPTOR = C15736c.m8470a("simulator");
        private static final C15736c STATE_DESCRIPTOR = C15736c.m8470a(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
        private static final C15736c MANUFACTURER_DESCRIPTOR = C15736c.m8470a("manufacturer");
        private static final C15736c MODELCLASS_DESCRIPTOR = C15736c.m8470a("modelClass");

        private CrashlyticsReportSessionDeviceEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Device device, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(ARCH_DESCRIPTOR, device.getArch());
            abstractC15739e.add(MODEL_DESCRIPTOR, device.getModel());
            abstractC15739e.add(CORES_DESCRIPTOR, device.getCores());
            abstractC15739e.add(RAM_DESCRIPTOR, device.getRam());
            abstractC15739e.add(DISKSPACE_DESCRIPTOR, device.getDiskSpace());
            abstractC15739e.add(SIMULATOR_DESCRIPTOR, device.isSimulator());
            abstractC15739e.add(STATE_DESCRIPTOR, device.getState());
            abstractC15739e.add(MANUFACTURER_DESCRIPTOR, device.getManufacturer());
            abstractC15739e.add(MODELCLASS_DESCRIPTOR, device.getModelClass());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder.class */
    static final class CrashlyticsReportSessionEncoder implements AbstractC15738d<CrashlyticsReport.Session> {
        static final CrashlyticsReportSessionEncoder INSTANCE = new CrashlyticsReportSessionEncoder();
        private static final C15736c GENERATOR_DESCRIPTOR = C15736c.m8470a("generator");
        private static final C15736c IDENTIFIER_DESCRIPTOR = C15736c.m8470a("identifier");
        private static final C15736c STARTEDAT_DESCRIPTOR = C15736c.m8470a("startedAt");
        private static final C15736c ENDEDAT_DESCRIPTOR = C15736c.m8470a("endedAt");
        private static final C15736c CRASHED_DESCRIPTOR = C15736c.m8470a("crashed");
        private static final C15736c APP_DESCRIPTOR = C15736c.m8470a("app");
        private static final C15736c USER_DESCRIPTOR = C15736c.m8470a("user");
        private static final C15736c OS_DESCRIPTOR = C15736c.m8470a("os");
        private static final C15736c DEVICE_DESCRIPTOR = C15736c.m8470a("device");
        private static final C15736c EVENTS_DESCRIPTOR = C15736c.m8470a(Constants.VIDEO_TRACKING_EVENTS_KEY);
        private static final C15736c GENERATORTYPE_DESCRIPTOR = C15736c.m8470a("generatorType");

        private CrashlyticsReportSessionEncoder() {
        }

        public final void encode(CrashlyticsReport.Session session, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(GENERATOR_DESCRIPTOR, session.getGenerator());
            abstractC15739e.add(IDENTIFIER_DESCRIPTOR, session.getIdentifierUtf8Bytes());
            abstractC15739e.add(STARTEDAT_DESCRIPTOR, session.getStartedAt());
            abstractC15739e.add(ENDEDAT_DESCRIPTOR, session.getEndedAt());
            abstractC15739e.add(CRASHED_DESCRIPTOR, session.isCrashed());
            abstractC15739e.add(APP_DESCRIPTOR, session.getApp());
            abstractC15739e.add(USER_DESCRIPTOR, session.getUser());
            abstractC15739e.add(OS_DESCRIPTOR, session.getOs());
            abstractC15739e.add(DEVICE_DESCRIPTOR, session.getDevice());
            abstractC15739e.add(EVENTS_DESCRIPTOR, session.getEvents());
            abstractC15739e.add(GENERATORTYPE_DESCRIPTOR, session.getGeneratorType());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event.Application> {
        static final CrashlyticsReportSessionEventApplicationEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationEncoder();
        private static final C15736c EXECUTION_DESCRIPTOR = C15736c.m8470a("execution");
        private static final C15736c CUSTOMATTRIBUTES_DESCRIPTOR = C15736c.m8470a("customAttributes");
        private static final C15736c BACKGROUND_DESCRIPTOR = C15736c.m8470a("background");
        private static final C15736c UIORIENTATION_DESCRIPTOR = C15736c.m8470a("uiOrientation");

        private CrashlyticsReportSessionEventApplicationEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application application, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(EXECUTION_DESCRIPTOR, application.getExecution());
            abstractC15739e.add(CUSTOMATTRIBUTES_DESCRIPTOR, application.getCustomAttributes());
            abstractC15739e.add(BACKGROUND_DESCRIPTOR, application.getBackground());
            abstractC15739e.add(UIORIENTATION_DESCRIPTOR, application.getUiOrientation());
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder.class */
    static final class C15696x99c932db implements AbstractC15738d<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> {
        static final C15696x99c932db INSTANCE = new C15696x99c932db();
        private static final C15736c BASEADDRESS_DESCRIPTOR = C15736c.m8470a("baseAddress");
        private static final C15736c SIZE_DESCRIPTOR = C15736c.m8470a("size");
        private static final C15736c NAME_DESCRIPTOR = C15736c.m8470a("name");
        private static final C15736c UUID_DESCRIPTOR = C15736c.m8470a("uuid");

        private C15696x99c932db() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage binaryImage, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(BASEADDRESS_DESCRIPTOR, binaryImage.getBaseAddress());
            abstractC15739e.add(SIZE_DESCRIPTOR, binaryImage.getSize());
            abstractC15739e.add(NAME_DESCRIPTOR, binaryImage.getName());
            abstractC15739e.add(UUID_DESCRIPTOR, binaryImage.getUuidUtf8Bytes());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event.Application.Execution> {
        static final CrashlyticsReportSessionEventApplicationExecutionEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionEncoder();
        private static final C15736c THREADS_DESCRIPTOR = C15736c.m8470a("threads");
        private static final C15736c EXCEPTION_DESCRIPTOR = C15736c.m8470a("exception");
        private static final C15736c SIGNAL_DESCRIPTOR = C15736c.m8470a("signal");
        private static final C15736c BINARIES_DESCRIPTOR = C15736c.m8470a("binaries");

        private CrashlyticsReportSessionEventApplicationExecutionEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution execution, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(THREADS_DESCRIPTOR, execution.getThreads());
            abstractC15739e.add(EXCEPTION_DESCRIPTOR, execution.getException());
            abstractC15739e.add(SIGNAL_DESCRIPTOR, execution.getSignal());
            abstractC15739e.add(BINARIES_DESCRIPTOR, execution.getBinaries());
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder.class */
    static final class C15697x55689506 implements AbstractC15738d<CrashlyticsReport.Session.Event.Application.Execution.Exception> {
        static final C15697x55689506 INSTANCE = new C15697x55689506();
        private static final C15736c TYPE_DESCRIPTOR = C15736c.m8470a("type");
        private static final C15736c REASON_DESCRIPTOR = C15736c.m8470a("reason");
        private static final C15736c FRAMES_DESCRIPTOR = C15736c.m8470a("frames");
        private static final C15736c CAUSEDBY_DESCRIPTOR = C15736c.m8470a("causedBy");
        private static final C15736c OVERFLOWCOUNT_DESCRIPTOR = C15736c.m8470a("overflowCount");

        private C15697x55689506() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Exception exception, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(TYPE_DESCRIPTOR, exception.getType());
            abstractC15739e.add(REASON_DESCRIPTOR, exception.getReason());
            abstractC15739e.add(FRAMES_DESCRIPTOR, exception.getFrames());
            abstractC15739e.add(CAUSEDBY_DESCRIPTOR, exception.getCausedBy());
            abstractC15739e.add(OVERFLOWCOUNT_DESCRIPTOR, exception.getOverflowCount());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionSignalEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event.Application.Execution.Signal> {
        static final CrashlyticsReportSessionEventApplicationExecutionSignalEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionSignalEncoder();
        private static final C15736c NAME_DESCRIPTOR = C15736c.m8470a("name");
        private static final C15736c CODE_DESCRIPTOR = C15736c.m8470a("code");
        private static final C15736c ADDRESS_DESCRIPTOR = C15736c.m8470a("address");

        private CrashlyticsReportSessionEventApplicationExecutionSignalEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Signal signal, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(NAME_DESCRIPTOR, signal.getName());
            abstractC15739e.add(CODE_DESCRIPTOR, signal.getCode());
            abstractC15739e.add(ADDRESS_DESCRIPTOR, signal.getAddress());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.class */
    static final class CrashlyticsReportSessionEventApplicationExecutionThreadEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event.Application.Execution.Thread> {
        static final CrashlyticsReportSessionEventApplicationExecutionThreadEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionThreadEncoder();
        private static final C15736c NAME_DESCRIPTOR = C15736c.m8470a("name");
        private static final C15736c IMPORTANCE_DESCRIPTOR = C15736c.m8470a("importance");
        private static final C15736c FRAMES_DESCRIPTOR = C15736c.m8470a("frames");

        private CrashlyticsReportSessionEventApplicationExecutionThreadEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Thread thread, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(NAME_DESCRIPTOR, thread.getName());
            abstractC15739e.add(IMPORTANCE_DESCRIPTOR, thread.getImportance());
            abstractC15739e.add(FRAMES_DESCRIPTOR, thread.getFrames());
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder.class */
    static final class C15698xc3999712 implements AbstractC15738d<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> {
        static final C15698xc3999712 INSTANCE = new C15698xc3999712();
        private static final C15736c PC_DESCRIPTOR = C15736c.m8470a("pc");
        private static final C15736c SYMBOL_DESCRIPTOR = C15736c.m8470a("symbol");
        private static final C15736c FILE_DESCRIPTOR = C15736c.m8470a("file");
        private static final C15736c OFFSET_DESCRIPTOR = C15736c.m8470a(VastIconXmlManager.OFFSET);
        private static final C15736c IMPORTANCE_DESCRIPTOR = C15736c.m8470a("importance");

        private C15698xc3999712() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame frame, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(PC_DESCRIPTOR, frame.getPc());
            abstractC15739e.add(SYMBOL_DESCRIPTOR, frame.getSymbol());
            abstractC15739e.add(FILE_DESCRIPTOR, frame.getFile());
            abstractC15739e.add(OFFSET_DESCRIPTOR, frame.getOffset());
            abstractC15739e.add(IMPORTANCE_DESCRIPTOR, frame.getImportance());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder.class */
    static final class CrashlyticsReportSessionEventDeviceEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event.Device> {
        static final CrashlyticsReportSessionEventDeviceEncoder INSTANCE = new CrashlyticsReportSessionEventDeviceEncoder();
        private static final C15736c BATTERYLEVEL_DESCRIPTOR = C15736c.m8470a("batteryLevel");
        private static final C15736c BATTERYVELOCITY_DESCRIPTOR = C15736c.m8470a("batteryVelocity");
        private static final C15736c PROXIMITYON_DESCRIPTOR = C15736c.m8470a("proximityOn");
        private static final C15736c ORIENTATION_DESCRIPTOR = C15736c.m8470a("orientation");
        private static final C15736c RAMUSED_DESCRIPTOR = C15736c.m8470a("ramUsed");
        private static final C15736c DISKUSED_DESCRIPTOR = C15736c.m8470a("diskUsed");

        private CrashlyticsReportSessionEventDeviceEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Device device, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(BATTERYLEVEL_DESCRIPTOR, device.getBatteryLevel());
            abstractC15739e.add(BATTERYVELOCITY_DESCRIPTOR, device.getBatteryVelocity());
            abstractC15739e.add(PROXIMITYON_DESCRIPTOR, device.isProximityOn());
            abstractC15739e.add(ORIENTATION_DESCRIPTOR, device.getOrientation());
            abstractC15739e.add(RAMUSED_DESCRIPTOR, device.getRamUsed());
            abstractC15739e.add(DISKUSED_DESCRIPTOR, device.getDiskUsed());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder.class */
    static final class CrashlyticsReportSessionEventEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event> {
        static final CrashlyticsReportSessionEventEncoder INSTANCE = new CrashlyticsReportSessionEventEncoder();
        private static final C15736c TIMESTAMP_DESCRIPTOR = C15736c.m8470a(Reporting.Key.TIMESTAMP);
        private static final C15736c TYPE_DESCRIPTOR = C15736c.m8470a("type");
        private static final C15736c APP_DESCRIPTOR = C15736c.m8470a("app");
        private static final C15736c DEVICE_DESCRIPTOR = C15736c.m8470a("device");
        private static final C15736c LOG_DESCRIPTOR = C15736c.m8470a("log");

        private CrashlyticsReportSessionEventEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event event, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(TIMESTAMP_DESCRIPTOR, event.getTimestamp());
            abstractC15739e.add(TYPE_DESCRIPTOR, event.getType());
            abstractC15739e.add(APP_DESCRIPTOR, event.getApp());
            abstractC15739e.add(DEVICE_DESCRIPTOR, event.getDevice());
            abstractC15739e.add(LOG_DESCRIPTOR, event.getLog());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder.class */
    static final class CrashlyticsReportSessionEventLogEncoder implements AbstractC15738d<CrashlyticsReport.Session.Event.Log> {
        static final CrashlyticsReportSessionEventLogEncoder INSTANCE = new CrashlyticsReportSessionEventLogEncoder();
        private static final C15736c CONTENT_DESCRIPTOR = C15736c.m8470a(Constants.VAST_TRACKER_CONTENT);

        private CrashlyticsReportSessionEventLogEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.Event.Log log, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(CONTENT_DESCRIPTOR, log.getContent());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder.class */
    static final class CrashlyticsReportSessionOperatingSystemEncoder implements AbstractC15738d<CrashlyticsReport.Session.OperatingSystem> {
        static final CrashlyticsReportSessionOperatingSystemEncoder INSTANCE = new CrashlyticsReportSessionOperatingSystemEncoder();
        private static final C15736c PLATFORM_DESCRIPTOR = C15736c.m8470a("platform");
        private static final C15736c VERSION_DESCRIPTOR = C15736c.m8470a("version");
        private static final C15736c BUILDVERSION_DESCRIPTOR = C15736c.m8470a("buildVersion");
        private static final C15736c JAILBROKEN_DESCRIPTOR = C15736c.m8470a("jailbroken");

        private CrashlyticsReportSessionOperatingSystemEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.OperatingSystem operatingSystem, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(PLATFORM_DESCRIPTOR, operatingSystem.getPlatform());
            abstractC15739e.add(VERSION_DESCRIPTOR, operatingSystem.getVersion());
            abstractC15739e.add(BUILDVERSION_DESCRIPTOR, operatingSystem.getBuildVersion());
            abstractC15739e.add(JAILBROKEN_DESCRIPTOR, operatingSystem.isJailbroken());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder.class */
    static final class CrashlyticsReportSessionUserEncoder implements AbstractC15738d<CrashlyticsReport.Session.User> {
        static final CrashlyticsReportSessionUserEncoder INSTANCE = new CrashlyticsReportSessionUserEncoder();
        private static final C15736c IDENTIFIER_DESCRIPTOR = C15736c.m8470a("identifier");

        private CrashlyticsReportSessionUserEncoder() {
        }

        public final void encode(CrashlyticsReport.Session.User user, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add(IDENTIFIER_DESCRIPTOR, user.getIdentifier());
        }
    }

    private AutoCrashlyticsReportEncoder() {
    }

    @Override // com.google.firebase.encoders.p393a.AbstractC15733a
    public final void configure(AbstractC15734b<?> abstractC15734b) {
        abstractC15734b.registerEncoder(CrashlyticsReport.class, CrashlyticsReportEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport.class, CrashlyticsReportEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.class, CrashlyticsReportSessionEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session.class, CrashlyticsReportSessionEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Application.class, CrashlyticsReportSessionApplicationEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Application.class, CrashlyticsReportSessionApplicationEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Application.Organization.class, CrashlyticsReportSessionApplicationOrganizationEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Application_Organization.class, CrashlyticsReportSessionApplicationOrganizationEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.User.class, CrashlyticsReportSessionUserEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_User.class, CrashlyticsReportSessionUserEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.OperatingSystem.class, CrashlyticsReportSessionOperatingSystemEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_OperatingSystem.class, CrashlyticsReportSessionOperatingSystemEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Device.class, CrashlyticsReportSessionDeviceEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Device.class, CrashlyticsReportSessionDeviceEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.class, CrashlyticsReportSessionEventEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Event.class, CrashlyticsReportSessionEventEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.class, CrashlyticsReportSessionEventApplicationEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application.class, CrashlyticsReportSessionEventApplicationEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.class, CrashlyticsReportSessionEventApplicationExecutionEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution.class, CrashlyticsReportSessionEventApplicationExecutionEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Thread.class, CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.INSTANCE);
        abstractC15734b.registerEncoder(C15716x7e3e3ebd.class, CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.class, C15698xc3999712.INSTANCE);
        abstractC15734b.registerEncoder(C15718xce3d994b.class, C15698xc3999712.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Exception.class, C15697x55689506.INSTANCE);
        abstractC15734b.registerEncoder(C15712xc2f5febc.class, C15697x55689506.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Signal.class, CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.INSTANCE);
        abstractC15734b.registerEncoder(C15714x7c929f5b.class, CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.class, C15696x99c932db.INSTANCE);
        abstractC15734b.registerEncoder(C15710xfe724d07.class, C15696x99c932db.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.CustomAttribute.class, CrashlyticsReportCustomAttributeEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_CustomAttribute.class, CrashlyticsReportCustomAttributeEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Device.class, CrashlyticsReportSessionEventDeviceEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Device.class, CrashlyticsReportSessionEventDeviceEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.Session.Event.Log.class, CrashlyticsReportSessionEventLogEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Log.class, CrashlyticsReportSessionEventLogEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.FilesPayload.class, CrashlyticsReportFilesPayloadEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_FilesPayload.class, CrashlyticsReportFilesPayloadEncoder.INSTANCE);
        abstractC15734b.registerEncoder(CrashlyticsReport.FilesPayload.File.class, CrashlyticsReportFilesPayloadFileEncoder.INSTANCE);
        abstractC15734b.registerEncoder(AutoValue_CrashlyticsReport_FilesPayload_File.class, CrashlyticsReportFilesPayloadFileEncoder.INSTANCE);
    }
}
