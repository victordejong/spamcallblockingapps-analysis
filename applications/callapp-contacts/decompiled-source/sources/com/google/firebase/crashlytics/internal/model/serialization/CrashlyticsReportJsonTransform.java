package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.Base64;
import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.encoders.a;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform.class */
public class CrashlyticsReportJsonTransform {
    private static final a CRASHLYTICS_REPORT_JSON_ENCODER = new JsonDataEncoderBuilder().configureWith(AutoCrashlyticsReportEncoder.CONFIG).ignoreNullValues(true).build();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$ObjectParser.class */
    public interface ObjectParser<T> {
        T parse(JsonReader jsonReader) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.Session.Event access$lambda$0(JsonReader jsonReader) {
        return parseEvent(jsonReader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.FilesPayload.File access$lambda$1(JsonReader jsonReader) {
        return parseFile(jsonReader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.CustomAttribute access$lambda$2(JsonReader jsonReader) {
        return parseCustomAttribute(jsonReader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.Session.Event.Application.Execution.Thread access$lambda$3(JsonReader jsonReader) {
        return parseEventThread(jsonReader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.Session.Event.Application.Execution.BinaryImage access$lambda$4(JsonReader jsonReader) {
        return parseEventBinaryImage(jsonReader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame access$lambda$5(JsonReader jsonReader) {
        return parseEventFrame(jsonReader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame access$lambda$6(JsonReader jsonReader) {
        return parseEventFrame(jsonReader);
    }

    private static CrashlyticsReport.Session.Application parseApp(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Application.Builder builder = CrashlyticsReport.Session.Application.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setIdentifier(jsonReader.nextString());
                    break;
                case 1:
                    builder.setDevelopmentPlatform(jsonReader.nextString());
                    break;
                case 2:
                    builder.setDevelopmentPlatformVersion(jsonReader.nextString());
                    break;
                case 3:
                    builder.setVersion(jsonReader.nextString());
                    break;
                case 4:
                    builder.setInstallationUuid(jsonReader.nextString());
                    break;
                case 5:
                    builder.setDisplayVersion(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static <T> ImmutableList<T> parseArray(JsonReader jsonReader, ObjectParser<T> objectParser) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(objectParser.parse(jsonReader));
        }
        jsonReader.endArray();
        return ImmutableList.from(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.CustomAttribute parseCustomAttribute(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.CustomAttribute.Builder builder = CrashlyticsReport.CustomAttribute.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("key")) {
                builder.setKey(jsonReader.nextString());
            } else if (!nextName.equals("value")) {
                jsonReader.skipValue();
            } else {
                builder.setValue(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Device parseDevice(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Device.Builder builder = CrashlyticsReport.Session.Device.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals("manufacturer")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals("model")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY)) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        c2 = '\b';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setSimulator(jsonReader.nextBoolean());
                    break;
                case 1:
                    builder.setManufacturer(jsonReader.nextString());
                    break;
                case 2:
                    builder.setRam(jsonReader.nextLong());
                    break;
                case 3:
                    builder.setArch(jsonReader.nextInt());
                    break;
                case 4:
                    builder.setDiskSpace(jsonReader.nextLong());
                    break;
                case 5:
                    builder.setCores(jsonReader.nextInt());
                    break;
                case 6:
                    builder.setModel(jsonReader.nextString());
                    break;
                case 7:
                    builder.setState(jsonReader.nextInt());
                    break;
                case '\b':
                    builder.setModelClass(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.Session.Event parseEvent(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Builder builder = CrashlyticsReport.Session.Event.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals(Reporting.Key.TIMESTAMP)) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setDevice(parseEventDevice(jsonReader));
                    break;
                case 1:
                    builder.setApp(parseEventApp(jsonReader));
                    break;
                case 2:
                    builder.setLog(parseEventLog(jsonReader));
                    break;
                case 3:
                    builder.setType(jsonReader.nextString());
                    break;
                case 4:
                    builder.setTimestamp(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Event.Application parseEventApp(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        CrashlyticsReport.Session.Event.Application.Builder builder = CrashlyticsReport.Session.Event.Application.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals("background")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setBackground(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case 1:
                    builder.setExecution(parseEventExecution(jsonReader));
                    break;
                case 2:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$3.instance;
                    builder.setCustomAttributes(parseArray(jsonReader, objectParser));
                    break;
                case 3:
                    builder.setUiOrientation(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.Session.Event.Application.Execution.BinaryImage parseEventBinaryImage(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals("name")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setName(jsonReader.nextString());
                    break;
                case 1:
                    builder.setSize(jsonReader.nextLong());
                    break;
                case 2:
                    builder.setUuidFromUtf8Bytes(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 3:
                    builder.setBaseAddress(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Event.Device parseEventDevice(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Device.Builder builder = CrashlyticsReport.Session.Event.Device.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setBatteryLevel(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case 1:
                    builder.setBatteryVelocity(jsonReader.nextInt());
                    break;
                case 2:
                    builder.setOrientation(jsonReader.nextInt());
                    break;
                case 3:
                    builder.setDiskUsed(jsonReader.nextLong());
                    break;
                case 4:
                    builder.setRamUsed(jsonReader.nextLong());
                    break;
                case 5:
                    builder.setProximityOn(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Event.Application.Execution parseEventExecution(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        ObjectParser objectParser2;
        CrashlyticsReport.Session.Event.Application.Execution.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1337936983:
                    if (nextName.equals("threads")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals("exception")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$4.instance;
                    builder.setThreads(parseArray(jsonReader, objectParser));
                    break;
                case 1:
                    builder.setSignal(parseEventSignal(jsonReader));
                    break;
                case 2:
                    objectParser2 = CrashlyticsReportJsonTransform$$Lambda$5.instance;
                    builder.setBinaries(parseArray(jsonReader, objectParser2));
                    break;
                case 3:
                    builder.setException(parseEventExecutionException(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Event.Application.Execution.Exception parseEventExecutionException(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.Exception.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals("reason")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$6.instance;
                    builder.setFrames(parseArray(jsonReader, objectParser));
                    break;
                case 1:
                    builder.setReason(jsonReader.nextString());
                    break;
                case 2:
                    builder.setType(jsonReader.nextString());
                    break;
                case 3:
                    builder.setCausedBy(parseEventExecutionException(jsonReader));
                    break;
                case 4:
                    builder.setOverflowCount(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame parseEventFrame(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals(VastIconXmlManager.OFFSET)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals("file")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setOffset(jsonReader.nextLong());
                    break;
                case 1:
                    builder.setSymbol(jsonReader.nextString());
                    break;
                case 2:
                    builder.setPc(jsonReader.nextLong());
                    break;
                case 3:
                    builder.setFile(jsonReader.nextString());
                    break;
                case 4:
                    builder.setImportance(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Event.Log parseEventLog(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Log.Builder builder = CrashlyticsReport.Session.Event.Log.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals(Constants.VAST_TRACKER_CONTENT)) {
                jsonReader.skipValue();
            } else {
                builder.setContent(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.Event.Application.Execution.Signal parseEventSignal(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.Signal.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1147692044:
                    if (nextName.equals("address")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3059181:
                    if (nextName.equals("code")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals("name")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setAddress(jsonReader.nextLong());
                    break;
                case 1:
                    builder.setCode(jsonReader.nextString());
                    break;
                case 2:
                    builder.setName(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.Session.Event.Application.Execution.Thread parseEventThread(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.Thread.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals("name")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$7.instance;
                    builder.setFrames(parseArray(jsonReader, objectParser));
                    break;
                case 1:
                    builder.setName(jsonReader.nextString());
                    break;
                case 2:
                    builder.setImportance(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.FilesPayload.File parseFile(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.FilesPayload.File.Builder builder = CrashlyticsReport.FilesPayload.File.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("filename")) {
                builder.setFilename(jsonReader.nextString());
            } else if (!nextName.equals("contents")) {
                jsonReader.skipValue();
            } else {
                builder.setContents(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.FilesPayload parseNdkPayload(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        CrashlyticsReport.FilesPayload.Builder builder = CrashlyticsReport.FilesPayload.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("files")) {
                objectParser = CrashlyticsReportJsonTransform$$Lambda$2.instance;
                builder.setFiles(parseArray(jsonReader, objectParser));
            } else if (!nextName.equals("orgId")) {
                jsonReader.skipValue();
            } else {
                builder.setOrgId(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.OperatingSystem parseOs(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.OperatingSystem.Builder builder = CrashlyticsReport.Session.OperatingSystem.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setBuildVersion(jsonReader.nextString());
                    break;
                case 1:
                    builder.setJailbroken(jsonReader.nextBoolean());
                    break;
                case 2:
                    builder.setVersion(jsonReader.nextString());
                    break;
                case 3:
                    builder.setPlatform(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport parseReport(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Builder builder = CrashlyticsReport.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        c2 = 7;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setNdkPayload(parseNdkPayload(jsonReader));
                    break;
                case 1:
                    builder.setSdkVersion(jsonReader.nextString());
                    break;
                case 2:
                    builder.setBuildVersion(jsonReader.nextString());
                    break;
                case 3:
                    builder.setGmpAppId(jsonReader.nextString());
                    break;
                case 4:
                    builder.setInstallationUuid(jsonReader.nextString());
                    break;
                case 5:
                    builder.setPlatform(jsonReader.nextInt());
                    break;
                case 6:
                    builder.setDisplayVersion(jsonReader.nextString());
                    break;
                case 7:
                    builder.setSession(parseSession(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session parseSession(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        CrashlyticsReport.Session.Builder builder = CrashlyticsReport.Session.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals(Constants.VIDEO_TRACKING_EVENTS_KEY)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        c2 = '\n';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    builder.setStartedAt(jsonReader.nextLong());
                    break;
                case 1:
                    builder.setIdentifierFromUtf8Bytes(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 2:
                    builder.setEndedAt(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 3:
                    builder.setDevice(parseDevice(jsonReader));
                    break;
                case 4:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$1.instance;
                    builder.setEvents(parseArray(jsonReader, objectParser));
                    break;
                case 5:
                    builder.setOs(parseOs(jsonReader));
                    break;
                case 6:
                    builder.setApp(parseApp(jsonReader));
                    break;
                case 7:
                    builder.setUser(parseUser(jsonReader));
                    break;
                case '\b':
                    builder.setGenerator(jsonReader.nextString());
                    break;
                case '\t':
                    builder.setCrashed(jsonReader.nextBoolean());
                    break;
                case '\n':
                    builder.setGeneratorType(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    private static CrashlyticsReport.Session.User parseUser(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.User.Builder builder = CrashlyticsReport.Session.User.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("identifier")) {
                jsonReader.skipValue();
            } else {
                builder.setIdentifier(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return builder.build();
    }

    public CrashlyticsReport.Session.Event eventFromJson(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            CrashlyticsReport.Session.Event parseEvent = parseEvent(jsonReader);
            jsonReader.close();
            return parseEvent;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    public String eventToJson(CrashlyticsReport.Session.Event event) {
        return CRASHLYTICS_REPORT_JSON_ENCODER.encode(event);
    }

    public CrashlyticsReport reportFromJson(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            CrashlyticsReport parseReport = parseReport(jsonReader);
            jsonReader.close();
            return parseReport;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    public String reportToJson(CrashlyticsReport crashlyticsReport) {
        return CRASHLYTICS_REPORT_JSON_ENCODER.encode(crashlyticsReport);
    }
}
