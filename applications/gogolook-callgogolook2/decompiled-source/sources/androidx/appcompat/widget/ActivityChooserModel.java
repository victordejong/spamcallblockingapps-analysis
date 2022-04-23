package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlSerializer;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel.class */
public class ActivityChooserModel extends DataSetObservable {
    public static final String ATTRIBUTE_ACTIVITY = "activity";
    public static final String ATTRIBUTE_TIME = "time";
    public static final String ATTRIBUTE_WEIGHT = "weight";
    public static final boolean DEBUG = false;
    public static final int DEFAULT_ACTIVITY_INFLATION = 5;
    public static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0f;
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    public static final String HISTORY_FILE_EXTENSION = ".xml";
    public static final int INVALID_INDEX = -1;
    public static final String TAG_HISTORICAL_RECORD = "historical-record";
    public static final String TAG_HISTORICAL_RECORDS = "historical-records";
    public OnChooseActivityListener mActivityChoserModelPolicy;
    public final Context mContext;
    public final String mHistoryFileName;
    public Intent mIntent;
    public static final String LOG_TAG = ActivityChooserModel.class.getSimpleName();
    public static final Object sRegistryLock = new Object();
    public static final Map<String, ActivityChooserModel> sDataModelRegistry = new HashMap();
    public final Object mInstanceLock = new Object();
    public final List<ActivityResolveInfo> mActivities = new ArrayList();
    public final List<HistoricalRecord> mHistoricalRecords = new ArrayList();
    public ActivitySorter mActivitySorter = new DefaultSorter();
    public int mHistoryMaxSize = 50;
    public boolean mCanReadHistoricalData = true;
    public boolean mReadShareHistoryCalled = false;
    public boolean mHistoricalRecordsChanged = true;
    public boolean mReloadActivities = false;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient.class */
    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo.class */
    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ActivityResolveInfo.class == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.resolveInfo.toString() + "; weight:" + new BigDecimal(this.weight) + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$ActivitySorter.class */
    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$DefaultSorter.class */
    public static final class DefaultSorter implements ActivitySorter {
        public static final float WEIGHT_DECAY_COEFFICIENT = 0.95f;
        public final Map<ComponentName, ActivityResolveInfo> mPackageNameToActivityMap = new HashMap();

        @Override // androidx.appcompat.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            Map<ComponentName, ActivityResolveInfo> map = this.mPackageNameToActivityMap;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ActivityResolveInfo activityResolveInfo = list.get(i);
                activityResolveInfo.weight = 0.0f;
                map.put(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), activityResolveInfo);
            }
            float f = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.activity);
                f = f;
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight += historicalRecord.weight * f;
                    f *= 0.95f;
                }
            }
            Collections.sort(list);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$HistoricalRecord.class */
    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.activity = componentName;
            this.time = j;
            this.weight = f;
        }

        public HistoricalRecord(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || HistoricalRecord.class != obj.getClass()) {
                return false;
            }
            HistoricalRecord historicalRecord = (HistoricalRecord) obj;
            ComponentName componentName = this.activity;
            if (componentName == null) {
                if (historicalRecord.activity != null) {
                    return false;
                }
            } else if (!componentName.equals(historicalRecord.activity)) {
                return false;
            }
            return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
        }

        public int hashCode() {
            ComponentName componentName = this.activity;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.time;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public String toString() {
            return "[; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener.class */
    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask.class */
    public final class PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
        public PersistHistoryAsyncTask() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = ActivityChooserModel.this.mContext.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            newSerializer.setOutput(openFileOutput, null);
                            newSerializer.startDocument("UTF-8", true);
                            newSerializer.startTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORDS);
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                HistoricalRecord historicalRecord = (HistoricalRecord) list.remove(0);
                                newSerializer.startTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORD);
                                newSerializer.attribute(null, ActivityChooserModel.ATTRIBUTE_ACTIVITY, historicalRecord.activity.flattenToString());
                                newSerializer.attribute(null, "time", String.valueOf(historicalRecord.time));
                                newSerializer.attribute(null, ActivityChooserModel.ATTRIBUTE_WEIGHT, String.valueOf(historicalRecord.weight));
                                newSerializer.endTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORD);
                            }
                            newSerializer.endTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORDS);
                            newSerializer.endDocument();
                            ActivityChooserModel.this.mCanReadHistoricalData = true;
                            if (openFileOutput == null) {
                                return null;
                            }
                        } catch (Throwable th) {
                            ActivityChooserModel.this.mCanReadHistoricalData = true;
                            if (openFileOutput != null) {
                                try {
                                    openFileOutput.close();
                                } catch (IOException e) {
                                }
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e2) {
                        String str2 = ActivityChooserModel.LOG_TAG;
                        Log.e(str2, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, e2);
                        ActivityChooserModel.this.mCanReadHistoricalData = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    }
                } catch (IOException e3) {
                    String str3 = ActivityChooserModel.LOG_TAG;
                    Log.e(str3, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, e3);
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e4) {
                    String str4 = ActivityChooserModel.LOG_TAG;
                    Log.e(str4, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, e4);
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                }
                try {
                    openFileOutput.close();
                    return null;
                } catch (IOException e5) {
                    return null;
                }
            } catch (FileNotFoundException e6) {
                String str5 = ActivityChooserModel.LOG_TAG;
                Log.e(str5, "Error writing historical record file: " + str, e6);
                return null;
            }
        }
    }

    public ActivityChooserModel(Context context, String str) {
        this.mContext = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(HISTORY_FILE_EXTENSION)) {
            this.mHistoryFileName = str;
            return;
        }
        this.mHistoryFileName = str + HISTORY_FILE_EXTENSION;
    }

    private boolean addHistoricalRecord(HistoricalRecord historicalRecord) {
        boolean add = this.mHistoricalRecords.add(historicalRecord);
        if (add) {
            this.mHistoricalRecordsChanged = true;
            pruneExcessiveHistoricalRecordsIfNeeded();
            persistHistoricalDataIfNeeded();
            sortActivitiesIfNeeded();
            notifyChanged();
        }
        return add;
    }

    private void ensureConsistentState() {
        boolean loadActivitiesIfNeeded = loadActivitiesIfNeeded();
        boolean readHistoricalDataIfNeeded = readHistoricalDataIfNeeded();
        pruneExcessiveHistoricalRecordsIfNeeded();
        if (loadActivitiesIfNeeded || readHistoricalDataIfNeeded) {
            sortActivitiesIfNeeded();
            notifyChanged();
        }
    }

    public static ActivityChooserModel get(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (sRegistryLock) {
            ActivityChooserModel activityChooserModel2 = sDataModelRegistry.get(str);
            activityChooserModel = activityChooserModel2;
            if (activityChooserModel2 == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                sDataModelRegistry.put(str, activityChooserModel);
            }
        }
        return activityChooserModel;
    }

    private boolean loadActivitiesIfNeeded() {
        if (!this.mReloadActivities || this.mIntent == null) {
            return false;
        }
        this.mReloadActivities = false;
        this.mActivities.clear();
        List<ResolveInfo> queryIntentActivities = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.mActivities.add(new ActivityResolveInfo(queryIntentActivities.get(i)));
        }
        return true;
    }

    private void persistHistoricalDataIfNeeded() {
        if (!this.mReadShareHistoryCalled) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.mHistoricalRecordsChanged) {
            this.mHistoricalRecordsChanged = false;
            if (!TextUtils.isEmpty(this.mHistoryFileName)) {
                new PersistHistoryAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.mHistoricalRecords), this.mHistoryFileName);
            }
        }
    }

    private void pruneExcessiveHistoricalRecordsIfNeeded() {
        int size = this.mHistoricalRecords.size() - this.mHistoryMaxSize;
        if (size > 0) {
            this.mHistoricalRecordsChanged = true;
            for (int i = 0; i < size; i++) {
                this.mHistoricalRecords.remove(0);
            }
        }
    }

    private boolean readHistoricalDataIfNeeded() {
        if (!this.mCanReadHistoricalData || !this.mHistoricalRecordsChanged || TextUtils.isEmpty(this.mHistoryFileName)) {
            return false;
        }
        this.mCanReadHistoricalData = false;
        this.mReadShareHistoryCalled = true;
        readHistoricalDataImpl();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readHistoricalDataImpl() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserModel.readHistoricalDataImpl():void");
    }

    private boolean sortActivitiesIfNeeded() {
        if (this.mActivitySorter == null || this.mIntent == null || this.mActivities.isEmpty() || this.mHistoricalRecords.isEmpty()) {
            return false;
        }
        this.mActivitySorter.sort(this.mIntent, this.mActivities, Collections.unmodifiableList(this.mHistoricalRecords));
        return true;
    }

    public Intent chooseActivity(int i) {
        synchronized (this.mInstanceLock) {
            if (this.mIntent == null) {
                return null;
            }
            ensureConsistentState();
            ActivityResolveInfo activityResolveInfo = this.mActivities.get(i);
            ComponentName componentName = new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name);
            Intent intent = new Intent(this.mIntent);
            intent.setComponent(componentName);
            if (this.mActivityChoserModelPolicy != null) {
                if (this.mActivityChoserModelPolicy.onChooseActivity(this, new Intent(intent))) {
                    return null;
                }
            }
            addHistoricalRecord(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public ResolveInfo getActivity(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            resolveInfo = this.mActivities.get(i).resolveInfo;
        }
        return resolveInfo;
    }

    public int getActivityCount() {
        int size;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            size = this.mActivities.size();
        }
        return size;
    }

    public int getActivityIndex(ResolveInfo resolveInfo) {
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            List<ActivityResolveInfo> list = this.mActivities;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).resolveInfo == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    public ResolveInfo getDefaultActivity() {
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            if (this.mActivities.isEmpty()) {
                return null;
            }
            return this.mActivities.get(0).resolveInfo;
        }
    }

    public int getHistoryMaxSize() {
        int i;
        synchronized (this.mInstanceLock) {
            i = this.mHistoryMaxSize;
        }
        return i;
    }

    public int getHistorySize() {
        int size;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            size = this.mHistoricalRecords.size();
        }
        return size;
    }

    public Intent getIntent() {
        Intent intent;
        synchronized (this.mInstanceLock) {
            intent = this.mIntent;
        }
        return intent;
    }

    public void setActivitySorter(ActivitySorter activitySorter) {
        synchronized (this.mInstanceLock) {
            if (this.mActivitySorter != activitySorter) {
                this.mActivitySorter = activitySorter;
                if (sortActivitiesIfNeeded()) {
                    notifyChanged();
                }
            }
        }
    }

    public void setDefaultActivity(int i) {
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            ActivityResolveInfo activityResolveInfo = this.mActivities.get(i);
            ActivityResolveInfo activityResolveInfo2 = this.mActivities.get(0);
            addHistoricalRecord(new HistoricalRecord(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), System.currentTimeMillis(), activityResolveInfo2 != null ? (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f : 1.0f));
        }
    }

    public void setHistoryMaxSize(int i) {
        synchronized (this.mInstanceLock) {
            if (this.mHistoryMaxSize != i) {
                this.mHistoryMaxSize = i;
                pruneExcessiveHistoricalRecordsIfNeeded();
                if (sortActivitiesIfNeeded()) {
                    notifyChanged();
                }
            }
        }
    }

    public void setIntent(Intent intent) {
        synchronized (this.mInstanceLock) {
            if (this.mIntent != intent) {
                this.mIntent = intent;
                this.mReloadActivities = true;
                ensureConsistentState();
            }
        }
    }

    public void setOnChooseActivityListener(OnChooseActivityListener onChooseActivityListener) {
        synchronized (this.mInstanceLock) {
            this.mActivityChoserModelPolicy = onChooseActivityListener;
        }
    }
}
