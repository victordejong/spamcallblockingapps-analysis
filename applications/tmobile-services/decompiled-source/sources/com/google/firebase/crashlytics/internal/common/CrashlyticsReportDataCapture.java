package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.firebase.crashlytics.BuildConfig;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.TrimmedThrowableData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture.class */
public class CrashlyticsReportDataCapture {
    private static final Map<String, Integer> ARCHITECTURES_BY_NAME;
    private static final String GENERATOR = String.format(Locale.US, "Crashlytics Android SDK/%s", BuildConfig.VERSION_NAME);
    private static final int GENERATOR_TYPE = 3;
    private static final int REPORT_ANDROID_PLATFORM = 4;
    private static final int SESSION_ANDROID_PLATFORM = 3;
    private static final String SIGNAL_DEFAULT = "0";
    private final AppData appData;
    private final Context context;
    private final IdManager idManager;
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;

    static {
        HashMap hashMap = new HashMap();
        ARCHITECTURES_BY_NAME = hashMap;
        hashMap.put("armeabi", 5);
        ARCHITECTURES_BY_NAME.put("armeabi-v7a", 6);
        ARCHITECTURES_BY_NAME.put("arm64-v8a", 9);
        ARCHITECTURES_BY_NAME.put("x86", 0);
        ARCHITECTURES_BY_NAME.put("x86_64", 1);
    }

    public CrashlyticsReportDataCapture(Context context, IdManager idManager, AppData appData, StackTraceTrimmingStrategy stackTraceTrimmingStrategy) {
        this.context = context;
        this.idManager = idManager;
        this.appData = appData;
        this.stackTraceTrimmingStrategy = stackTraceTrimmingStrategy;
    }

    private CrashlyticsReport.Builder buildReportData() {
        return CrashlyticsReport.builder().setSdkVersion(BuildConfig.VERSION_NAME).setGmpAppId(this.appData.googleAppId).setInstallationUuid(this.idManager.getCrashlyticsInstallId()).setBuildVersion(this.appData.versionCode).setDisplayVersion(this.appData.versionName).setPlatform(4);
    }

    private static int getDeviceArchitecture() {
        Integer num;
        String str = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str) && (num = ARCHITECTURES_BY_NAME.get(str.toLowerCase(Locale.US))) != null) {
            return num.intValue();
        }
        return 7;
    }

    private CrashlyticsReport.Session.Event.Application.Execution.BinaryImage populateBinaryImageData() {
        return CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.builder().setBaseAddress(0L).setSize(0L).setName(this.appData.packageName).setUuid(this.appData.buildId).build();
    }

    private ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> populateBinaryImagesList() {
        return ImmutableList.from(populateBinaryImageData());
    }

    private CrashlyticsReport.Session.Event.Application populateEventApplicationData(int i, TrimmedThrowableData trimmedThrowableData, Thread thread, int i2, int i3, boolean z) {
        Boolean bool;
        ActivityManager.RunningAppProcessInfo appProcessInfo = CommonUtils.getAppProcessInfo(this.appData.packageName, this.context);
        if (appProcessInfo != null) {
            bool = Boolean.valueOf(appProcessInfo.importance != 100);
        } else {
            bool = null;
        }
        return CrashlyticsReport.Session.Event.Application.builder().setBackground(bool).setUiOrientation(i).setExecution(populateExecutionData(trimmedThrowableData, thread, i2, i3, z)).build();
    }

    private CrashlyticsReport.Session.Event.Device populateEventDeviceData(int i) {
        BatteryState batteryState = BatteryState.get(this.context);
        Float batteryLevel = batteryState.getBatteryLevel();
        Double valueOf = batteryLevel != null ? Double.valueOf(batteryLevel.doubleValue()) : null;
        int batteryVelocity = batteryState.getBatteryVelocity();
        return CrashlyticsReport.Session.Event.Device.builder().setBatteryLevel(valueOf).setBatteryVelocity(batteryVelocity).setProximityOn(CommonUtils.getProximitySensorEnabled(this.context)).setOrientation(i).setRamUsed(CommonUtils.getTotalRamInBytes() - CommonUtils.calculateFreeRamInBytes(this.context)).setDiskUsed(CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath())).build();
    }

    private CrashlyticsReport.Session.Event.Application.Execution.Exception populateExceptionData(TrimmedThrowableData trimmedThrowableData, int i, int i2) {
        return populateExceptionData(trimmedThrowableData, i, i2, 0);
    }

    private CrashlyticsReport.Session.Event.Application.Execution.Exception populateExceptionData(TrimmedThrowableData trimmedThrowableData, int i, int i2, int i3) {
        String str = trimmedThrowableData.className;
        String str2 = trimmedThrowableData.localizedMessage;
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.stacktrace;
        int i4 = 0;
        int i5 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        TrimmedThrowableData trimmedThrowableData2 = trimmedThrowableData.cause;
        if (i3 >= i2) {
            TrimmedThrowableData trimmedThrowableData3 = trimmedThrowableData2;
            while (true) {
                i4 = i5;
                if (trimmedThrowableData3 == null) {
                    break;
                }
                trimmedThrowableData3 = trimmedThrowableData3.cause;
                i5++;
            }
        }
        CrashlyticsReport.Session.Event.Application.Execution.Exception.Builder overflowCount = CrashlyticsReport.Session.Event.Application.Execution.Exception.builder().setType(str).setReason(str2).setFrames(ImmutableList.from(populateFramesList(stackTraceElementArr, i))).setOverflowCount(i4);
        if (trimmedThrowableData2 != null && i4 == 0) {
            overflowCount.setCausedBy(populateExceptionData(trimmedThrowableData2, i, i2, i3 + 1));
        }
        return overflowCount.build();
    }

    private CrashlyticsReport.Session.Event.Application.Execution populateExecutionData(TrimmedThrowableData trimmedThrowableData, Thread thread, int i, int i2, boolean z) {
        return CrashlyticsReport.Session.Event.Application.Execution.builder().setThreads(populateThreadsList(trimmedThrowableData, thread, i, z)).setException(populateExceptionData(trimmedThrowableData, i, i2)).setSignal(populateSignalData()).setBinaries(populateBinaryImagesList()).build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame populateFrameData(java.lang.StackTraceElement r6, com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder r7) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0.isNativeMethod()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.getLineNumber()
            long r0 = (long) r0
            r1 = 0
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
            goto L_0x001d
        L_0x001a:
            r0 = 0
            r11 = r0
        L_0x001d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.getClassName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.getMethodName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r13 = r0
            r0 = r6
            java.lang.String r0 = r0.getFileName()
            r14 = r0
            r0 = r9
            r15 = r0
            r0 = r6
            boolean r0 = r0.isNativeMethod()
            if (r0 != 0) goto L_0x006d
            r0 = r9
            r15 = r0
            r0 = r6
            int r0 = r0.getLineNumber()
            if (r0 <= 0) goto L_0x006d
            r0 = r6
            int r0 = r0.getLineNumber()
            long r0 = (long) r0
            r15 = r0
        L_0x006d:
            r0 = r7
            r1 = r11
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder r0 = r0.setPc(r1)
            r1 = r13
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder r0 = r0.setSymbol(r1)
            r1 = r14
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder r0 = r0.setFile(r1)
            r1 = r15
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder r0 = r0.setOffset(r1)
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame r0 = r0.build()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CrashlyticsReportDataCapture.populateFrameData(java.lang.StackTraceElement, com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder):com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame");
    }

    private ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> populateFramesList(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(populateFrameData(stackTraceElement, CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.builder().setImportance(i)));
        }
        return ImmutableList.from(arrayList);
    }

    private CrashlyticsReport.Session.Application populateSessionApplicationData() {
        return CrashlyticsReport.Session.Application.builder().setIdentifier(this.idManager.getAppIdentifier()).setVersion(this.appData.versionCode).setDisplayVersion(this.appData.versionName).setInstallationUuid(this.idManager.getCrashlyticsInstallId()).build();
    }

    private CrashlyticsReport.Session populateSessionData(String str, long j) {
        return CrashlyticsReport.Session.builder().setStartedAt(j).setIdentifier(str).setGenerator(GENERATOR).setApp(populateSessionApplicationData()).setOs(populateSessionOperatingSystemData()).setDevice(populateSessionDeviceData()).setGeneratorType(3).build();
    }

    private CrashlyticsReport.Session.Device populateSessionDeviceData() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int deviceArchitecture = getDeviceArchitecture();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long totalRamInBytes = CommonUtils.getTotalRamInBytes();
        long blockCount = statFs.getBlockCount();
        long blockSize = statFs.getBlockSize();
        boolean isEmulator = CommonUtils.isEmulator(this.context);
        int deviceState = CommonUtils.getDeviceState(this.context);
        return CrashlyticsReport.Session.Device.builder().setArch(deviceArchitecture).setModel(Build.MODEL).setCores(availableProcessors).setRam(totalRamInBytes).setDiskSpace(blockCount * blockSize).setSimulator(isEmulator).setState(deviceState).setManufacturer(Build.MANUFACTURER).setModelClass(Build.PRODUCT).build();
    }

    private CrashlyticsReport.Session.OperatingSystem populateSessionOperatingSystemData() {
        return CrashlyticsReport.Session.OperatingSystem.builder().setPlatform(3).setVersion(Build.VERSION.RELEASE).setBuildVersion(Build.VERSION.CODENAME).setJailbroken(CommonUtils.isRooted(this.context)).build();
    }

    private CrashlyticsReport.Session.Event.Application.Execution.Signal populateSignalData() {
        return CrashlyticsReport.Session.Event.Application.Execution.Signal.builder().setName(SIGNAL_DEFAULT).setCode(SIGNAL_DEFAULT).setAddress(0L).build();
    }

    private CrashlyticsReport.Session.Event.Application.Execution.Thread populateThreadData(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return populateThreadData(thread, stackTraceElementArr, 0);
    }

    private CrashlyticsReport.Session.Event.Application.Execution.Thread populateThreadData(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        return CrashlyticsReport.Session.Event.Application.Execution.Thread.builder().setName(thread.getName()).setImportance(i).setFrames(ImmutableList.from(populateFramesList(stackTraceElementArr, i))).build();
    }

    private ImmutableList<CrashlyticsReport.Session.Event.Application.Execution.Thread> populateThreadsList(TrimmedThrowableData trimmedThrowableData, Thread thread, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(populateThreadData(thread, trimmedThrowableData.stacktrace, i));
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(populateThreadData(key, this.stackTraceTrimmingStrategy.getTrimmedStackTrace(entry.getValue())));
                }
            }
        }
        return ImmutableList.from(arrayList);
    }

    public CrashlyticsReport.Session.Event captureEventData(Throwable th, Thread thread, String str, long j, int i, int i2, boolean z) {
        int i3 = this.context.getResources().getConfiguration().orientation;
        return CrashlyticsReport.Session.Event.builder().setType(str).setTimestamp(j).setApp(populateEventApplicationData(i3, new TrimmedThrowableData(th, this.stackTraceTrimmingStrategy), thread, i, i2, z)).setDevice(populateEventDeviceData(i3)).build();
    }

    public CrashlyticsReport captureReportData() {
        return buildReportData().build();
    }

    public CrashlyticsReport captureReportData(String str, long j) {
        return buildReportData().setSession(populateSessionData(str, j)).build();
    }
}
