package com.android.contacts.util;

import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/StopWatch.class */
public class StopWatch {
    private final String mLabel;
    private final ArrayList<String> mLapLabels;
    private final ArrayList<Long> mTimes;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/StopWatch$NullStopWatch.class */
    private static class NullStopWatch extends StopWatch {
        public static final NullStopWatch INSTANCE = new NullStopWatch();

        public NullStopWatch() {
            super(null);
        }

        @Override // com.android.contacts.util.StopWatch
        public void lap(String str) {
        }

        @Override // com.android.contacts.util.StopWatch
        public void stopAndLog(String str, int i) {
        }
    }

    private StopWatch(String str) {
        this.mTimes = new ArrayList<>();
        this.mLapLabels = new ArrayList<>();
        this.mLabel = str;
        lap(BuildConfig.FLAVOR);
    }

    public static StopWatch getNullStopWatch() {
        return NullStopWatch.INSTANCE;
    }

    public static StopWatch start(String str) {
        return new StopWatch(str);
    }

    public void lap(String str) {
        this.mTimes.add(Long.valueOf(System.currentTimeMillis()));
        this.mLapLabels.add(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void stopAndLog(java.lang.String r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            java.lang.String r1 = ""
            r0.lap(r1)
            r0 = r6
            java.util.ArrayList<java.lang.Long> r0 = r0.mTimes
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r9 = r0
            r0 = r6
            java.util.ArrayList<java.lang.Long> r0 = r0.mTimes
            r1 = r6
            java.util.ArrayList<java.lang.Long> r1 = r1.mTimes
            int r1 = r1.size()
            r2 = 1
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r9
            long r0 = r0 - r1
            r11 = r0
            r0 = r11
            r1 = r8
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0038
        L_0x0037:
            return
        L_0x0038:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.mLabel
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = ": "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = 1
            r8 = r0
        L_0x0065:
            r0 = r8
            r1 = r6
            java.util.ArrayList<java.lang.Long> r1 = r1.mTimes
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x00b4
            r0 = r6
            java.util.ArrayList<java.lang.Long> r0 = r0.mTimes
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r11 = r0
            r0 = r13
            r1 = r6
            java.util.ArrayList<java.lang.String> r1 = r1.mLapLabels
            r2 = r8
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r1 = (java.lang.String) r1
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r11
            r2 = r9
            long r1 = r1 - r2
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r9 = r0
            int r8 = r8 + 1
            goto L_0x0065
        L_0x00b4:
            r0 = r7
            r1 = r13
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.v(r0, r1)
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.StopWatch.stopAndLog(java.lang.String, int):void");
    }
}
