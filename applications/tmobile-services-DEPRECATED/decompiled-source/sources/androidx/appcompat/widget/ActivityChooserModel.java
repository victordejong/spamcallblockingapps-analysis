package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import com.facebook.stetho.common.Utf8Charset;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel.class */
public class ActivityChooserModel extends DataSetObservable {

    /* renamed from: n */
    static final String f862n = ActivityChooserModel.class.getSimpleName();

    /* renamed from: o */
    private static final Object f863o = new Object();

    /* renamed from: p */
    private static final Map<String, ActivityChooserModel> f864p = new HashMap();

    /* renamed from: d */
    final Context f868d;

    /* renamed from: e */
    final String f869e;

    /* renamed from: f */
    private Intent f870f;

    /* renamed from: m */
    private OnChooseActivityListener f877m;

    /* renamed from: a */
    private final Object f865a = new Object();

    /* renamed from: b */
    private final List<ActivityResolveInfo> f866b = new ArrayList();

    /* renamed from: c */
    private final List<HistoricalRecord> f867c = new ArrayList();

    /* renamed from: g */
    private ActivitySorter f871g = new DefaultSorter();

    /* renamed from: h */
    private int f872h = 50;

    /* renamed from: i */
    boolean f873i = true;

    /* renamed from: j */
    private boolean f874j = false;

    /* renamed from: k */
    private boolean f875k = true;

    /* renamed from: l */
    private boolean f876l = false;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient.class */
    public interface ActivityChooserModelClient {
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo.class */
    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {

        /* renamed from: f */
        public final ResolveInfo f878f;

        /* renamed from: g */
        public float f879g;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.f878f = resolveInfo;
        }

        /* renamed from: a */
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.f879g) - Float.floatToIntBits(this.f879g);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ActivityResolveInfo.class == obj.getClass() && Float.floatToIntBits(this.f879g) == Float.floatToIntBits(((ActivityResolveInfo) obj).f879g);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f879g) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.f878f.toString() + "; weight:" + new BigDecimal(this.f879g) + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$ActivitySorter.class */
    public interface ActivitySorter {
        /* renamed from: a */
        void mo21679a(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$DefaultSorter.class */
    private static final class DefaultSorter implements ActivitySorter {

        /* renamed from: a */
        private final Map<ComponentName, ActivityResolveInfo> f880a = new HashMap();

        DefaultSorter() {
        }

        @Override // androidx.appcompat.widget.ActivityChooserModel.ActivitySorter
        /* renamed from: a */
        public void mo21679a(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            Map<ComponentName, ActivityResolveInfo> map = this.f880a;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ActivityResolveInfo activityResolveInfo = list.get(i);
                activityResolveInfo.f879g = 0.0f;
                ActivityInfo activityInfo = activityResolveInfo.f878f.activityInfo;
                map.put(new ComponentName(activityInfo.packageName, activityInfo.name), activityResolveInfo);
            }
            float f = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.f881a);
                f = f;
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.f879g += historicalRecord.f883c * f;
                    f *= 0.95f;
                }
            }
            Collections.sort(list);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$HistoricalRecord.class */
    public static final class HistoricalRecord {

        /* renamed from: a */
        public final ComponentName f881a;

        /* renamed from: b */
        public final long f882b;

        /* renamed from: c */
        public final float f883c;

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.f881a = componentName;
            this.f882b = j;
            this.f883c = f;
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
            ComponentName componentName = this.f881a;
            if (componentName == null) {
                if (historicalRecord.f881a != null) {
                    return false;
                }
            } else if (!componentName.equals(historicalRecord.f881a)) {
                return false;
            }
            return this.f882b == historicalRecord.f882b && Float.floatToIntBits(this.f883c) == Float.floatToIntBits(historicalRecord.f883c);
        }

        public int hashCode() {
            ComponentName componentName = this.f881a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f882b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.f883c);
        }

        public String toString() {
            return "[; activity:" + this.f881a + "; time:" + this.f882b + "; weight:" + new BigDecimal(this.f883c) + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener.class */
    public interface OnChooseActivityListener {
        /* renamed from: a */
        boolean mo21305a(ActivityChooserModel activityChooserModel, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask.class */
    public final class PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
        PersistHistoryAsyncTask() {
        }

        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = ActivityChooserModel.this.f868d.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            newSerializer.setOutput(openFileOutput, null);
                            newSerializer.startDocument(Utf8Charset.NAME, Boolean.TRUE);
                            newSerializer.startTag(null, "historical-records");
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                HistoricalRecord historicalRecord = (HistoricalRecord) list.remove(0);
                                newSerializer.startTag(null, "historical-record");
                                newSerializer.attribute(null, "activity", historicalRecord.f881a.flattenToString());
                                newSerializer.attribute(null, "time", String.valueOf(historicalRecord.f882b));
                                newSerializer.attribute(null, "weight", String.valueOf(historicalRecord.f883c));
                                newSerializer.endTag(null, "historical-record");
                            }
                            newSerializer.endTag(null, "historical-records");
                            newSerializer.endDocument();
                            ActivityChooserModel.this.f873i = true;
                            if (openFileOutput == null) {
                                return null;
                            }
                        } catch (Throwable th) {
                            ActivityChooserModel.this.f873i = true;
                            if (openFileOutput != null) {
                                try {
                                    openFileOutput.close();
                                } catch (IOException e) {
                                }
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e2) {
                        String str2 = ActivityChooserModel.f862n;
                        Log.e(str2, "Error writing historical record file: " + ActivityChooserModel.this.f869e, e2);
                        ActivityChooserModel.this.f873i = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    }
                } catch (IOException e3) {
                    String str3 = ActivityChooserModel.f862n;
                    Log.e(str3, "Error writing historical record file: " + ActivityChooserModel.this.f869e, e3);
                    ActivityChooserModel.this.f873i = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e4) {
                    String str4 = ActivityChooserModel.f862n;
                    Log.e(str4, "Error writing historical record file: " + ActivityChooserModel.this.f869e, e4);
                    ActivityChooserModel.this.f873i = true;
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
                String str5 = ActivityChooserModel.f862n;
                Log.e(str5, "Error writing historical record file: " + str, e6);
                return null;
            }
        }
    }

    private ActivityChooserModel(Context context, String str) {
        this.f868d = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(".xml")) {
            this.f869e = str;
            return;
        }
        this.f869e = str + ".xml";
    }

    /* renamed from: a */
    private boolean m21696a(HistoricalRecord historicalRecord) {
        boolean add = this.f867c.add(historicalRecord);
        if (add) {
            this.f875k = true;
            m21685l();
            m21686k();
            m21681p();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: c */
    private void m21694c() {
        boolean j = m21687j();
        boolean m = m21684m();
        m21685l();
        if (j || m) {
            m21681p();
            notifyChanged();
        }
    }

    /* renamed from: d */
    public static ActivityChooserModel m21693d(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (f863o) {
            ActivityChooserModel activityChooserModel2 = f864p.get(str);
            activityChooserModel = activityChooserModel2;
            if (activityChooserModel2 == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                f864p.put(str, activityChooserModel);
            }
        }
        return activityChooserModel;
    }

    /* renamed from: j */
    private boolean m21687j() {
        if (!this.f876l || this.f870f == null) {
            return false;
        }
        this.f876l = false;
        this.f866b.clear();
        List<ResolveInfo> queryIntentActivities = this.f868d.getPackageManager().queryIntentActivities(this.f870f, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f866b.add(new ActivityResolveInfo(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: k */
    private void m21686k() {
        if (!this.f874j) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.f875k) {
            this.f875k = false;
            if (!TextUtils.isEmpty(this.f869e)) {
                new PersistHistoryAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f867c), this.f869e);
            }
        }
    }

    /* renamed from: l */
    private void m21685l() {
        int size = this.f867c.size() - this.f872h;
        if (size > 0) {
            this.f875k = true;
            for (int i = 0; i < size; i++) {
                this.f867c.remove(0);
            }
        }
    }

    /* renamed from: m */
    private boolean m21684m() {
        if (!this.f873i || !this.f875k || TextUtils.isEmpty(this.f869e)) {
            return false;
        }
        this.f873i = false;
        this.f874j = true;
        m21683n();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21683n() {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserModel.m21683n():void");
    }

    /* renamed from: p */
    private boolean m21681p() {
        if (this.f871g == null || this.f870f == null || this.f866b.isEmpty() || this.f867c.isEmpty()) {
            return false;
        }
        this.f871g.mo21679a(this.f870f, this.f866b, Collections.unmodifiableList(this.f867c));
        return true;
    }

    /* renamed from: b */
    public Intent m21695b(int i) {
        synchronized (this.f865a) {
            if (this.f870f == null) {
                return null;
            }
            m21694c();
            ActivityResolveInfo activityResolveInfo = this.f866b.get(i);
            ComponentName componentName = new ComponentName(activityResolveInfo.f878f.activityInfo.packageName, activityResolveInfo.f878f.activityInfo.name);
            Intent intent = new Intent(this.f870f);
            intent.setComponent(componentName);
            if (this.f877m != null) {
                if (this.f877m.mo21305a(this, new Intent(intent))) {
                    return null;
                }
            }
            m21696a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: e */
    public ResolveInfo m21692e(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f865a) {
            m21694c();
            resolveInfo = this.f866b.get(i).f878f;
        }
        return resolveInfo;
    }

    /* renamed from: f */
    public int m21691f() {
        int size;
        synchronized (this.f865a) {
            m21694c();
            size = this.f866b.size();
        }
        return size;
    }

    /* renamed from: g */
    public int m21690g(ResolveInfo resolveInfo) {
        synchronized (this.f865a) {
            m21694c();
            List<ActivityResolveInfo> list = this.f866b;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f878f == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: h */
    public ResolveInfo m21689h() {
        synchronized (this.f865a) {
            m21694c();
            if (this.f866b.isEmpty()) {
                return null;
            }
            return this.f866b.get(0).f878f;
        }
    }

    /* renamed from: i */
    public int m21688i() {
        int size;
        synchronized (this.f865a) {
            m21694c();
            size = this.f867c.size();
        }
        return size;
    }

    /* renamed from: o */
    public void m21682o(int i) {
        synchronized (this.f865a) {
            m21694c();
            ActivityResolveInfo activityResolveInfo = this.f866b.get(i);
            ActivityResolveInfo activityResolveInfo2 = this.f866b.get(0);
            m21696a(new HistoricalRecord(new ComponentName(activityResolveInfo.f878f.activityInfo.packageName, activityResolveInfo.f878f.activityInfo.name), System.currentTimeMillis(), activityResolveInfo2 != null ? (activityResolveInfo2.f879g - activityResolveInfo.f879g) + 5.0f : 1.0f));
        }
    }
}
