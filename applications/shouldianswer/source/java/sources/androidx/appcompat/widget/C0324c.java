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
/* renamed from: androidx.appcompat.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c.class */
public class C0324c extends DataSetObservable {

    /* renamed from: a */
    static final String f1330a = C0324c.class.getSimpleName();

    /* renamed from: e */
    private static final Object f1331e = new Object();

    /* renamed from: f */
    private static final Map<String, C0324c> f1332f = new HashMap();

    /* renamed from: b */
    final Context f1333b;

    /* renamed from: c */
    final String f1334c;

    /* renamed from: d */
    boolean f1335d;

    /* renamed from: g */
    private final Object f1336g;

    /* renamed from: h */
    private final List<C0325a> f1337h;

    /* renamed from: i */
    private final List<C0327c> f1338i;

    /* renamed from: j */
    private Intent f1339j;

    /* renamed from: k */
    private AbstractC0326b f1340k;

    /* renamed from: l */
    private int f1341l;

    /* renamed from: m */
    private boolean f1342m;

    /* renamed from: n */
    private boolean f1343n;

    /* renamed from: o */
    private boolean f1344o;

    /* renamed from: p */
    private AbstractC0328d f1345p;

    /* renamed from: androidx.appcompat.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$a.class */
    public static final class C0325a implements Comparable<C0325a> {

        /* renamed from: a */
        public final ResolveInfo f1346a;

        /* renamed from: b */
        public float f1347b;

        public C0325a(ResolveInfo resolveInfo) {
            this.f1346a = resolveInfo;
        }

        /* renamed from: a */
        public int compareTo(C0325a c0325a) {
            return Float.floatToIntBits(c0325a.f1347b) - Float.floatToIntBits(this.f1347b);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.f1347b) == Float.floatToIntBits(((C0325a) obj).f1347b);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f1347b) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.f1346a.toString() + "; weight:" + new BigDecimal(this.f1347b) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$b.class */
    public interface AbstractC0326b {
        /* renamed from: a */
        void m7096a(Intent intent, List<C0325a> list, List<C0327c> list2);
    }

    /* renamed from: androidx.appcompat.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$c.class */
    public static final class C0327c {

        /* renamed from: a */
        public final ComponentName f1348a;

        /* renamed from: b */
        public final long f1349b;

        /* renamed from: c */
        public final float f1350c;

        public C0327c(ComponentName componentName, long j, float f) {
            this.f1348a = componentName;
            this.f1349b = j;
            this.f1350c = f;
        }

        public C0327c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0327c c0327c = (C0327c) obj;
            ComponentName componentName = this.f1348a;
            if (componentName == null) {
                if (c0327c.f1348a != null) {
                    return false;
                }
            } else if (!componentName.equals(c0327c.f1348a)) {
                return false;
            }
            return this.f1349b == c0327c.f1349b && Float.floatToIntBits(this.f1350c) == Float.floatToIntBits(c0327c.f1350c);
        }

        public int hashCode() {
            ComponentName componentName = this.f1348a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f1349b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.f1350c);
        }

        public String toString() {
            return "[; activity:" + this.f1348a + "; time:" + this.f1349b + "; weight:" + new BigDecimal(this.f1350c) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$d.class */
    public interface AbstractC0328d {
        /* renamed from: a */
        boolean m7095a(C0324c c0324c, Intent intent);
    }

    /* renamed from: androidx.appcompat.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$e.class */
    public final class AsyncTaskC0329e extends AsyncTask<Object, Void, Void> {
        AsyncTaskC0329e() {
            C0324c.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = C0324c.this.f1333b.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            newSerializer.setOutput(openFileOutput, null);
                            newSerializer.startDocument("UTF-8", true);
                            newSerializer.startTag(null, "historical-records");
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                C0327c c0327c = (C0327c) list.remove(0);
                                newSerializer.startTag(null, "historical-record");
                                newSerializer.attribute(null, "activity", c0327c.f1348a.flattenToString());
                                newSerializer.attribute(null, "time", String.valueOf(c0327c.f1349b));
                                newSerializer.attribute(null, "weight", String.valueOf(c0327c.f1350c));
                                newSerializer.endTag(null, "historical-record");
                            }
                            newSerializer.endTag(null, "historical-records");
                            newSerializer.endDocument();
                            C0324c.this.f1335d = true;
                            if (openFileOutput == null) {
                                return null;
                            }
                        } catch (Throwable th) {
                            C0324c.this.f1335d = true;
                            if (openFileOutput != null) {
                                try {
                                    openFileOutput.close();
                                } catch (IOException e) {
                                }
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e2) {
                        Log.e(C0324c.f1330a, "Error writing historical record file: " + C0324c.this.f1334c, e2);
                        C0324c.this.f1335d = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    }
                } catch (IOException e3) {
                    Log.e(C0324c.f1330a, "Error writing historical record file: " + C0324c.this.f1334c, e3);
                    C0324c.this.f1335d = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e4) {
                    Log.e(C0324c.f1330a, "Error writing historical record file: " + C0324c.this.f1334c, e4);
                    C0324c.this.f1335d = true;
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
                Log.e(C0324c.f1330a, "Error writing historical record file: " + str, e6);
                return null;
            }
        }
    }

    /* renamed from: a */
    private boolean m7108a(C0327c c0327c) {
        boolean add = this.f1338i.add(c0327c);
        if (add) {
            this.f1343n = true;
            m7099h();
            m7105c();
            m7102e();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: c */
    private void m7105c() {
        if (this.f1342m) {
            if (!this.f1343n) {
                return;
            }
            this.f1343n = false;
            if (TextUtils.isEmpty(this.f1334c)) {
                return;
            }
            new AsyncTaskC0329e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f1338i), this.f1334c);
            return;
        }
        throw new IllegalStateException("No preceding call to #readHistoricalData");
    }

    /* renamed from: d */
    private void m7103d() {
        boolean m7101f = m7101f();
        boolean m7100g = m7100g();
        m7099h();
        if (m7101f || m7100g) {
            m7102e();
            notifyChanged();
        }
    }

    /* renamed from: e */
    private boolean m7102e() {
        if (this.f1340k == null || this.f1339j == null || this.f1337h.isEmpty() || this.f1338i.isEmpty()) {
            return false;
        }
        this.f1340k.m7096a(this.f1339j, this.f1337h, Collections.unmodifiableList(this.f1338i));
        return true;
    }

    /* renamed from: f */
    private boolean m7101f() {
        if (!this.f1344o || this.f1339j == null) {
            return false;
        }
        this.f1344o = false;
        this.f1337h.clear();
        List<ResolveInfo> queryIntentActivities = this.f1333b.getPackageManager().queryIntentActivities(this.f1339j, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f1337h.add(new C0325a(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: g */
    private boolean m7100g() {
        if (!this.f1335d || !this.f1343n || TextUtils.isEmpty(this.f1334c)) {
            return false;
        }
        this.f1335d = false;
        this.f1342m = true;
        m7098i();
        return true;
    }

    /* renamed from: h */
    private void m7099h() {
        int size = this.f1338i.size() - this.f1341l;
        if (size <= 0) {
            return;
        }
        this.f1343n = true;
        for (int i = 0; i < size; i++) {
            this.f1338i.remove(0);
        }
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
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7098i() {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0324c.m7098i():void");
    }

    /* renamed from: a */
    public int m7111a() {
        int size;
        synchronized (this.f1336g) {
            m7103d();
            size = this.f1337h.size();
        }
        return size;
    }

    /* renamed from: a */
    public int m7109a(ResolveInfo resolveInfo) {
        synchronized (this.f1336g) {
            m7103d();
            List<C0325a> list = this.f1337h;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f1346a == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: a */
    public ResolveInfo m7110a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f1336g) {
            m7103d();
            resolveInfo = this.f1337h.get(i).f1346a;
        }
        return resolveInfo;
    }

    /* renamed from: b */
    public Intent m7106b(int i) {
        synchronized (this.f1336g) {
            if (this.f1339j == null) {
                return null;
            }
            m7103d();
            C0325a c0325a = this.f1337h.get(i);
            ComponentName componentName = new ComponentName(c0325a.f1346a.activityInfo.packageName, c0325a.f1346a.activityInfo.name);
            Intent intent = new Intent(this.f1339j);
            intent.setComponent(componentName);
            if (this.f1345p != null) {
                if (this.f1345p.m7095a(this, new Intent(intent))) {
                    return null;
                }
            }
            m7108a(new C0327c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: b */
    public ResolveInfo m7107b() {
        synchronized (this.f1336g) {
            m7103d();
            if (!this.f1337h.isEmpty()) {
                return this.f1337h.get(0).f1346a;
            }
            return null;
        }
    }

    /* renamed from: c */
    public void m7104c(int i) {
        synchronized (this.f1336g) {
            m7103d();
            C0325a c0325a = this.f1337h.get(i);
            C0325a c0325a2 = this.f1337h.get(0);
            m7108a(new C0327c(new ComponentName(c0325a.f1346a.activityInfo.packageName, c0325a.f1346a.activityInfo.name), System.currentTimeMillis(), c0325a2 != null ? (c0325a2.f1347b - c0325a.f1347b) + 5.0f : 1.0f));
        }
    }
}
