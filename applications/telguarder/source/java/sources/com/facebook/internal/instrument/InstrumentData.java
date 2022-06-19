package com.facebook.internal.instrument;

import android.os.Build;
import com.facebook.internal.Utility;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/instrument/InstrumentData.class */
public final class InstrumentData {
    private static final String PARAM_APP_VERSION = "app_version";
    private static final String PARAM_CALLSTACK = "callstack";
    private static final String PARAM_DEVICE_MODEL = "device_model";
    private static final String PARAM_DEVICE_OS = "device_os_version";
    private static final String PARAM_FEATURE_NAMES = "feature_names";
    private static final String PARAM_REASON = "reason";
    private static final String PARAM_TIMESTAMP = "timestamp";
    private static final String PARAM_TYPE = "type";
    private static final String UNKNOWN = "Unknown";
    private String appVersion;
    private String cause;
    private JSONArray featureNames;
    private String filename;
    private String stackTrace;
    private Long timestamp;
    private Type type;

    /* renamed from: com.facebook.internal.instrument.InstrumentData$1 */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/instrument/InstrumentData$1.class */
    public static /* synthetic */ class C10181 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$internal$instrument$InstrumentData$Type;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$com$facebook$internal$instrument$InstrumentData$Type = iArr;
            try {
                iArr[Type.Analysis.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[Type.CrashReport.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[Type.CrashShield.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[Type.ThreadCheck.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/instrument/InstrumentData$Builder.class */
    public static class Builder {
        public static InstrumentData build(Throwable th, Type type) {
            return new InstrumentData(th, type, null);
        }

        public static InstrumentData build(JSONArray jSONArray) {
            return new InstrumentData(jSONArray, (C10181) null);
        }

        public static InstrumentData load(File file) {
            return new InstrumentData(file, (C10181) null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/instrument/InstrumentData$Type.class */
    public enum Type {
        Unknown,
        Analysis,
        CrashReport,
        CrashShield,
        ThreadCheck;

        public String getLogPrefix() {
            int i = C10181.$SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : InstrumentUtility.THREAD_CHECK_PREFIX : InstrumentUtility.CRASH_SHIELD_PREFIX : InstrumentUtility.CRASH_REPORT_PREFIX : InstrumentUtility.ANALYSIS_REPORT_PREFIX;
        }

        @Override // java.lang.Enum
        public String toString() {
            int i = C10181.$SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : "ThreadCheck" : "CrashShield" : "CrashReport" : "Analysis";
        }
    }

    private InstrumentData(File file) {
        String name = file.getName();
        this.filename = name;
        this.type = getType(name);
        JSONObject readFile = InstrumentUtility.readFile(this.filename, true);
        if (readFile != null) {
            this.timestamp = Long.valueOf(readFile.optLong(PARAM_TIMESTAMP, 0L));
            this.appVersion = readFile.optString(PARAM_APP_VERSION, null);
            this.cause = readFile.optString(PARAM_REASON, null);
            this.stackTrace = readFile.optString(PARAM_CALLSTACK, null);
            this.featureNames = readFile.optJSONArray(PARAM_FEATURE_NAMES);
        }
    }

    /* synthetic */ InstrumentData(File file, C10181 c10181) {
        this(file);
    }

    private InstrumentData(Throwable th, Type type) {
        this.type = type;
        this.appVersion = Utility.getAppVersion();
        this.cause = InstrumentUtility.getCause(th);
        this.stackTrace = InstrumentUtility.getStackTrace(th);
        this.timestamp = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(type.getLogPrefix());
        stringBuffer.append(this.timestamp.toString());
        stringBuffer.append(".json");
        this.filename = stringBuffer.toString();
    }

    /* synthetic */ InstrumentData(Throwable th, Type type, C10181 c10181) {
        this(th, type);
    }

    private InstrumentData(JSONArray jSONArray) {
        this.type = Type.Analysis;
        this.timestamp = Long.valueOf(System.currentTimeMillis() / 1000);
        this.featureNames = jSONArray;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(InstrumentUtility.ANALYSIS_REPORT_PREFIX);
        stringBuffer.append(this.timestamp.toString());
        stringBuffer.append(".json");
        this.filename = stringBuffer.toString();
    }

    /* synthetic */ InstrumentData(JSONArray jSONArray, C10181 c10181) {
        this(jSONArray);
    }

    private JSONObject getAnalysisReportParameters() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.featureNames;
            if (jSONArray != null) {
                jSONObject.put(PARAM_FEATURE_NAMES, jSONArray);
            }
            Long l = this.timestamp;
            if (l != null) {
                jSONObject.put(PARAM_TIMESTAMP, l);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject getExceptionReportParameters() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            String str = this.appVersion;
            if (str != null) {
                jSONObject.put(PARAM_APP_VERSION, str);
            }
            Long l = this.timestamp;
            if (l != null) {
                jSONObject.put(PARAM_TIMESTAMP, l);
            }
            String str2 = this.cause;
            if (str2 != null) {
                jSONObject.put(PARAM_REASON, str2);
            }
            String str3 = this.stackTrace;
            if (str3 != null) {
                jSONObject.put(PARAM_CALLSTACK, str3);
            }
            Type type = this.type;
            if (type != null) {
                jSONObject.put("type", type);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject getParameters() {
        int i = C10181.$SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[this.type.ordinal()];
        if (i != 1) {
            if (i != 2 && i != 3 && i != 4) {
                return null;
            }
            return getExceptionReportParameters();
        }
        return getAnalysisReportParameters();
    }

    private static Type getType(String str) {
        return str.startsWith(InstrumentUtility.CRASH_REPORT_PREFIX) ? Type.CrashReport : str.startsWith(InstrumentUtility.CRASH_SHIELD_PREFIX) ? Type.CrashShield : str.startsWith(InstrumentUtility.THREAD_CHECK_PREFIX) ? Type.ThreadCheck : str.startsWith(InstrumentUtility.ANALYSIS_REPORT_PREFIX) ? Type.Analysis : Type.Unknown;
    }

    public void clear() {
        InstrumentUtility.deleteFile(this.filename);
    }

    public int compareTo(InstrumentData instrumentData) {
        Long l = this.timestamp;
        if (l == null) {
            return -1;
        }
        Long l2 = instrumentData.timestamp;
        if (l2 != null) {
            return l2.compareTo(l);
        }
        return 1;
    }

    public boolean isValid() {
        int i = C10181.$SwitchMap$com$facebook$internal$instrument$InstrumentData$Type[this.type.ordinal()];
        if (i == 1) {
            boolean z = false;
            if (this.featureNames != null) {
                z = false;
                if (this.timestamp != null) {
                    z = true;
                }
            }
            return z;
        } else if (i != 2 && i != 3 && i != 4) {
            return false;
        } else {
            boolean z2 = false;
            if (this.stackTrace != null) {
                z2 = false;
                if (this.timestamp != null) {
                    z2 = true;
                }
            }
            return z2;
        }
    }

    public void save() {
        if (!isValid()) {
            return;
        }
        InstrumentUtility.writeFile(this.filename, toString());
    }

    public String toString() {
        JSONObject parameters = getParameters();
        if (parameters == null) {
            return null;
        }
        return parameters.toString();
    }
}
