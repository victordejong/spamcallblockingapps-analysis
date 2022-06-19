package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.Base64;
import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.encoders.AbstractC15732a;
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
    private static final AbstractC15732a CRASHLYTICS_REPORT_JSON_ENCODER = new JsonDataEncoderBuilder().configureWith(AutoCrashlyticsReportEncoder.CONFIG).ignoreNullValues(true).build();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$ObjectParser.class */
    public interface ObjectParser<T> {
        T parse(JsonReader jsonReader) throws IOException;
    }

    public static /* synthetic */ CrashlyticsReport.CustomAttribute access$lambda$2(JsonReader jsonReader) {
        return parseCustomAttribute(jsonReader);
    }

    public static /* synthetic */ CrashlyticsReport.Session.Event.Application.Execution.Thread access$lambda$3(JsonReader jsonReader) {
        return parseEventThread(jsonReader);
    }

    private static CrashlyticsReport.Session.Application parseApp(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Application.Builder builder = CrashlyticsReport.Session.Application.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        z = false;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        z = true;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        z = true;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setIdentifier(jsonReader.nextString());
                    break;
                case true:
                    builder.setDevelopmentPlatform(jsonReader.nextString());
                    break;
                case true:
                    builder.setDevelopmentPlatformVersion(jsonReader.nextString());
                    break;
                case true:
                    builder.setVersion(jsonReader.nextString());
                    break;
                case true:
                    builder.setInstallationUuid(jsonReader.nextString());
                    break;
                case true:
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

    private static CrashlyticsReport.CustomAttribute parseCustomAttribute(JsonReader jsonReader) throws IOException {
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        z = false;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals("manufacturer")) {
                        z = true;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        z = true;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        z = true;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        z = true;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        z = true;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals("model")) {
                        z = true;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY)) {
                        z = true;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setSimulator(jsonReader.nextBoolean());
                    break;
                case true:
                    builder.setManufacturer(jsonReader.nextString());
                    break;
                case true:
                    builder.setRam(jsonReader.nextLong());
                    break;
                case true:
                    builder.setArch(jsonReader.nextInt());
                    break;
                case true:
                    builder.setDiskSpace(jsonReader.nextLong());
                    break;
                case true:
                    builder.setCores(jsonReader.nextInt());
                    break;
                case true:
                    builder.setModel(jsonReader.nextString());
                    break;
                case true:
                    builder.setState(jsonReader.nextInt());
                    break;
                case true:
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

    public static CrashlyticsReport.Session.Event parseEvent(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Builder builder = CrashlyticsReport.Session.Event.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        z = false;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        z = true;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        z = true;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        z = true;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals(Reporting.Key.TIMESTAMP)) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setDevice(parseEventDevice(jsonReader));
                    break;
                case true:
                    builder.setApp(parseEventApp(jsonReader));
                    break;
                case true:
                    builder.setLog(parseEventLog(jsonReader));
                    break;
                case true:
                    builder.setType(jsonReader.nextString());
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals("background")) {
                        z = false;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        z = true;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        z = true;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setBackground(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case true:
                    builder.setExecution(parseEventExecution(jsonReader));
                    break;
                case true:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$3.instance;
                    builder.setCustomAttributes(parseArray(jsonReader, objectParser));
                    break;
                case true:
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

    public static CrashlyticsReport.Session.Event.Application.Execution.BinaryImage parseEventBinaryImage(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals("name")) {
                        z = false;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        z = true;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setName(jsonReader.nextString());
                    break;
                case true:
                    builder.setSize(jsonReader.nextLong());
                    break;
                case true:
                    builder.setUuidFromUtf8Bytes(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        z = false;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        z = true;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        z = true;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        z = true;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        z = true;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setBatteryLevel(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case true:
                    builder.setBatteryVelocity(jsonReader.nextInt());
                    break;
                case true:
                    builder.setOrientation(jsonReader.nextInt());
                    break;
                case true:
                    builder.setDiskUsed(jsonReader.nextLong());
                    break;
                case true:
                    builder.setRamUsed(jsonReader.nextLong());
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1337936983:
                    if (nextName.equals("threads")) {
                        z = false;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        z = true;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        z = true;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals("exception")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$4.instance;
                    builder.setThreads(parseArray(jsonReader, objectParser));
                    break;
                case true:
                    builder.setSignal(parseEventSignal(jsonReader));
                    break;
                case true:
                    objectParser2 = CrashlyticsReportJsonTransform$$Lambda$5.instance;
                    builder.setBinaries(parseArray(jsonReader, objectParser2));
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        z = false;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals("reason")) {
                        z = true;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        z = true;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        z = true;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$6.instance;
                    builder.setFrames(parseArray(jsonReader, objectParser));
                    break;
                case true:
                    builder.setReason(jsonReader.nextString());
                    break;
                case true:
                    builder.setType(jsonReader.nextString());
                    break;
                case true:
                    builder.setCausedBy(parseEventExecutionException(jsonReader));
                    break;
                case true:
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

    public static CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame parseEventFrame(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals(VastIconXmlManager.OFFSET)) {
                        z = false;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        z = true;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        z = true;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals("file")) {
                        z = true;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setOffset(jsonReader.nextLong());
                    break;
                case true:
                    builder.setSymbol(jsonReader.nextString());
                    break;
                case true:
                    builder.setPc(jsonReader.nextLong());
                    break;
                case true:
                    builder.setFile(jsonReader.nextString());
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1147692044:
                    if (nextName.equals("address")) {
                        z = false;
                        break;
                    }
                    break;
                case 3059181:
                    if (nextName.equals("code")) {
                        z = true;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals("name")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setAddress(jsonReader.nextLong());
                    break;
                case true:
                    builder.setCode(jsonReader.nextString());
                    break;
                case true:
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

    private static CrashlyticsReport.Session.Event.Application.Execution.Thread parseEventThread(JsonReader jsonReader) throws IOException {
        ObjectParser objectParser;
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder builder = CrashlyticsReport.Session.Event.Application.Execution.Thread.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        z = false;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals("name")) {
                        z = true;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$7.instance;
                    builder.setFrames(parseArray(jsonReader, objectParser));
                    break;
                case true:
                    builder.setName(jsonReader.nextString());
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        z = false;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        z = true;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        z = true;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setBuildVersion(jsonReader.nextString());
                    break;
                case true:
                    builder.setJailbroken(jsonReader.nextBoolean());
                    break;
                case true:
                    builder.setVersion(jsonReader.nextString());
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        z = false;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        z = true;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        z = true;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setNdkPayload(parseNdkPayload(jsonReader));
                    break;
                case true:
                    builder.setSdkVersion(jsonReader.nextString());
                    break;
                case true:
                    builder.setBuildVersion(jsonReader.nextString());
                    break;
                case true:
                    builder.setGmpAppId(jsonReader.nextString());
                    break;
                case true:
                    builder.setInstallationUuid(jsonReader.nextString());
                    break;
                case true:
                    builder.setPlatform(jsonReader.nextInt());
                    break;
                case true:
                    builder.setDisplayVersion(jsonReader.nextString());
                    break;
                case true:
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
            boolean z = true;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        z = false;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        z = true;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        z = true;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        z = true;
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals(Constants.VIDEO_TRACKING_EVENTS_KEY)) {
                        z = true;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        z = true;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        z = true;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        z = true;
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        z = true;
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        z = true;
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    builder.setStartedAt(jsonReader.nextLong());
                    break;
                case true:
                    builder.setIdentifierFromUtf8Bytes(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case true:
                    builder.setEndedAt(Long.valueOf(jsonReader.nextLong()));
                    break;
                case true:
                    builder.setDevice(parseDevice(jsonReader));
                    break;
                case true:
                    objectParser = CrashlyticsReportJsonTransform$$Lambda$1.instance;
                    builder.setEvents(parseArray(jsonReader, objectParser));
                    break;
                case true:
                    builder.setOs(parseOs(jsonReader));
                    break;
                case true:
                    builder.setApp(parseApp(jsonReader));
                    break;
                case true:
                    builder.setUser(parseUser(jsonReader));
                    break;
                case true:
                    builder.setGenerator(jsonReader.nextString());
                    break;
                case true:
                    builder.setCrashed(jsonReader.nextBoolean());
                    break;
                case true:
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
