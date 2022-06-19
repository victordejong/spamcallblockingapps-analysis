package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder.class */
public final class AutoBatchedLogRequestEncoder implements Configurator {
    public static final int CODEGEN_VERSION = 2;
    public static final Configurator CONFIG = new AutoBatchedLogRequestEncoder();

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$AndroidClientInfoEncoder.class */
    private static final class AndroidClientInfoEncoder implements ObjectEncoder<AndroidClientInfo> {
        static final AndroidClientInfoEncoder INSTANCE = new AndroidClientInfoEncoder();
        private static final FieldDescriptor SDKVERSION_DESCRIPTOR = FieldDescriptor.m1338of("sdkVersion");
        private static final FieldDescriptor MODEL_DESCRIPTOR = FieldDescriptor.m1338of("model");
        private static final FieldDescriptor HARDWARE_DESCRIPTOR = FieldDescriptor.m1338of("hardware");
        private static final FieldDescriptor DEVICE_DESCRIPTOR = FieldDescriptor.m1338of(POBConstants.KEY_DEVICE);
        private static final FieldDescriptor PRODUCT_DESCRIPTOR = FieldDescriptor.m1338of("product");
        private static final FieldDescriptor OSBUILD_DESCRIPTOR = FieldDescriptor.m1338of("osBuild");
        private static final FieldDescriptor MANUFACTURER_DESCRIPTOR = FieldDescriptor.m1338of("manufacturer");
        private static final FieldDescriptor FINGERPRINT_DESCRIPTOR = FieldDescriptor.m1338of("fingerprint");
        private static final FieldDescriptor LOCALE_DESCRIPTOR = FieldDescriptor.m1338of("locale");
        private static final FieldDescriptor COUNTRY_DESCRIPTOR = FieldDescriptor.m1338of("country");
        private static final FieldDescriptor MCCMNC_DESCRIPTOR = FieldDescriptor.m1338of("mccMnc");
        private static final FieldDescriptor APPLICATIONBUILD_DESCRIPTOR = FieldDescriptor.m1338of("applicationBuild");

        private AndroidClientInfoEncoder() {
        }

        public void encode(AndroidClientInfo androidClientInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(SDKVERSION_DESCRIPTOR, androidClientInfo.getSdkVersion());
            objectEncoderContext.add(MODEL_DESCRIPTOR, androidClientInfo.getModel());
            objectEncoderContext.add(HARDWARE_DESCRIPTOR, androidClientInfo.getHardware());
            objectEncoderContext.add(DEVICE_DESCRIPTOR, androidClientInfo.getDevice());
            objectEncoderContext.add(PRODUCT_DESCRIPTOR, androidClientInfo.getProduct());
            objectEncoderContext.add(OSBUILD_DESCRIPTOR, androidClientInfo.getOsBuild());
            objectEncoderContext.add(MANUFACTURER_DESCRIPTOR, androidClientInfo.getManufacturer());
            objectEncoderContext.add(FINGERPRINT_DESCRIPTOR, androidClientInfo.getFingerprint());
            objectEncoderContext.add(LOCALE_DESCRIPTOR, androidClientInfo.getLocale());
            objectEncoderContext.add(COUNTRY_DESCRIPTOR, androidClientInfo.getCountry());
            objectEncoderContext.add(MCCMNC_DESCRIPTOR, androidClientInfo.getMccMnc());
            objectEncoderContext.add(APPLICATIONBUILD_DESCRIPTOR, androidClientInfo.getApplicationBuild());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$BatchedLogRequestEncoder.class */
    private static final class BatchedLogRequestEncoder implements ObjectEncoder<BatchedLogRequest> {
        static final BatchedLogRequestEncoder INSTANCE = new BatchedLogRequestEncoder();
        private static final FieldDescriptor LOGREQUEST_DESCRIPTOR = FieldDescriptor.m1338of("logRequest");

        private BatchedLogRequestEncoder() {
        }

        public void encode(BatchedLogRequest batchedLogRequest, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(LOGREQUEST_DESCRIPTOR, batchedLogRequest.getLogRequests());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$ClientInfoEncoder.class */
    private static final class ClientInfoEncoder implements ObjectEncoder<ClientInfo> {
        static final ClientInfoEncoder INSTANCE = new ClientInfoEncoder();
        private static final FieldDescriptor CLIENTTYPE_DESCRIPTOR = FieldDescriptor.m1338of("clientType");
        private static final FieldDescriptor ANDROIDCLIENTINFO_DESCRIPTOR = FieldDescriptor.m1338of("androidClientInfo");

        private ClientInfoEncoder() {
        }

        public void encode(ClientInfo clientInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(CLIENTTYPE_DESCRIPTOR, clientInfo.getClientType());
            objectEncoderContext.add(ANDROIDCLIENTINFO_DESCRIPTOR, clientInfo.getAndroidClientInfo());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$LogEventEncoder.class */
    private static final class LogEventEncoder implements ObjectEncoder<LogEvent> {
        static final LogEventEncoder INSTANCE = new LogEventEncoder();
        private static final FieldDescriptor EVENTTIMEMS_DESCRIPTOR = FieldDescriptor.m1338of("eventTimeMs");
        private static final FieldDescriptor EVENTCODE_DESCRIPTOR = FieldDescriptor.m1338of("eventCode");
        private static final FieldDescriptor EVENTUPTIMEMS_DESCRIPTOR = FieldDescriptor.m1338of("eventUptimeMs");
        private static final FieldDescriptor SOURCEEXTENSION_DESCRIPTOR = FieldDescriptor.m1338of("sourceExtension");
        private static final FieldDescriptor SOURCEEXTENSIONJSONPROTO3_DESCRIPTOR = FieldDescriptor.m1338of("sourceExtensionJsonProto3");
        private static final FieldDescriptor TIMEZONEOFFSETSECONDS_DESCRIPTOR = FieldDescriptor.m1338of("timezoneOffsetSeconds");
        private static final FieldDescriptor NETWORKCONNECTIONINFO_DESCRIPTOR = FieldDescriptor.m1338of("networkConnectionInfo");

        private LogEventEncoder() {
        }

        public void encode(LogEvent logEvent, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(EVENTTIMEMS_DESCRIPTOR, logEvent.getEventTimeMs());
            objectEncoderContext.add(EVENTCODE_DESCRIPTOR, logEvent.getEventCode());
            objectEncoderContext.add(EVENTUPTIMEMS_DESCRIPTOR, logEvent.getEventUptimeMs());
            objectEncoderContext.add(SOURCEEXTENSION_DESCRIPTOR, logEvent.getSourceExtension());
            objectEncoderContext.add(SOURCEEXTENSIONJSONPROTO3_DESCRIPTOR, logEvent.getSourceExtensionJsonProto3());
            objectEncoderContext.add(TIMEZONEOFFSETSECONDS_DESCRIPTOR, logEvent.getTimezoneOffsetSeconds());
            objectEncoderContext.add(NETWORKCONNECTIONINFO_DESCRIPTOR, logEvent.getNetworkConnectionInfo());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$LogRequestEncoder.class */
    private static final class LogRequestEncoder implements ObjectEncoder<LogRequest> {
        static final LogRequestEncoder INSTANCE = new LogRequestEncoder();
        private static final FieldDescriptor REQUESTTIMEMS_DESCRIPTOR = FieldDescriptor.m1338of("requestTimeMs");
        private static final FieldDescriptor REQUESTUPTIMEMS_DESCRIPTOR = FieldDescriptor.m1338of("requestUptimeMs");
        private static final FieldDescriptor CLIENTINFO_DESCRIPTOR = FieldDescriptor.m1338of("clientInfo");
        private static final FieldDescriptor LOGSOURCE_DESCRIPTOR = FieldDescriptor.m1338of("logSource");
        private static final FieldDescriptor LOGSOURCENAME_DESCRIPTOR = FieldDescriptor.m1338of("logSourceName");
        private static final FieldDescriptor LOGEVENT_DESCRIPTOR = FieldDescriptor.m1338of("logEvent");
        private static final FieldDescriptor QOSTIER_DESCRIPTOR = FieldDescriptor.m1338of("qosTier");

        private LogRequestEncoder() {
        }

        public void encode(LogRequest logRequest, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(REQUESTTIMEMS_DESCRIPTOR, logRequest.getRequestTimeMs());
            objectEncoderContext.add(REQUESTUPTIMEMS_DESCRIPTOR, logRequest.getRequestUptimeMs());
            objectEncoderContext.add(CLIENTINFO_DESCRIPTOR, logRequest.getClientInfo());
            objectEncoderContext.add(LOGSOURCE_DESCRIPTOR, logRequest.getLogSource());
            objectEncoderContext.add(LOGSOURCENAME_DESCRIPTOR, logRequest.getLogSourceName());
            objectEncoderContext.add(LOGEVENT_DESCRIPTOR, logRequest.getLogEvents());
            objectEncoderContext.add(QOSTIER_DESCRIPTOR, logRequest.getQosTier());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$NetworkConnectionInfoEncoder.class */
    private static final class NetworkConnectionInfoEncoder implements ObjectEncoder<NetworkConnectionInfo> {
        static final NetworkConnectionInfoEncoder INSTANCE = new NetworkConnectionInfoEncoder();
        private static final FieldDescriptor NETWORKTYPE_DESCRIPTOR = FieldDescriptor.m1338of("networkType");
        private static final FieldDescriptor MOBILESUBTYPE_DESCRIPTOR = FieldDescriptor.m1338of("mobileSubtype");

        private NetworkConnectionInfoEncoder() {
        }

        public void encode(NetworkConnectionInfo networkConnectionInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(NETWORKTYPE_DESCRIPTOR, networkConnectionInfo.getNetworkType());
            objectEncoderContext.add(MOBILESUBTYPE_DESCRIPTOR, networkConnectionInfo.getMobileSubtype());
        }
    }

    private AutoBatchedLogRequestEncoder() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        encoderConfig.registerEncoder(BatchedLogRequest.class, BatchedLogRequestEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_BatchedLogRequest.class, BatchedLogRequestEncoder.INSTANCE);
        encoderConfig.registerEncoder(LogRequest.class, LogRequestEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_LogRequest.class, LogRequestEncoder.INSTANCE);
        encoderConfig.registerEncoder(ClientInfo.class, ClientInfoEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_ClientInfo.class, ClientInfoEncoder.INSTANCE);
        encoderConfig.registerEncoder(AndroidClientInfo.class, AndroidClientInfoEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_AndroidClientInfo.class, AndroidClientInfoEncoder.INSTANCE);
        encoderConfig.registerEncoder(LogEvent.class, LogEventEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_LogEvent.class, LogEventEncoder.INSTANCE);
        encoderConfig.registerEncoder(NetworkConnectionInfo.class, NetworkConnectionInfoEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_NetworkConnectionInfo.class, NetworkConnectionInfoEncoder.INSTANCE);
    }
}
