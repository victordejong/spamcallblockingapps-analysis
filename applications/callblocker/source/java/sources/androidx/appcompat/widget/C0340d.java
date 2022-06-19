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
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
public class C0340d extends DataSetObservable {

    /* renamed from: a */
    static final String f1418a = C0340d.class.getSimpleName();

    /* renamed from: e */
    private static final Object f1419e = new Object();

    /* renamed from: f */
    private static final Map<String, C0340d> f1420f = new HashMap();

    /* renamed from: b */
    final Context f1421b;

    /* renamed from: c */
    final String f1422c;

    /* renamed from: d */
    boolean f1423d;

    /* renamed from: g */
    private final Object f1424g;

    /* renamed from: h */
    private final List<C0341a> f1425h;

    /* renamed from: i */
    private final List<C0343c> f1426i;

    /* renamed from: j */
    private Intent f1427j;

    /* renamed from: k */
    private AbstractC0342b f1428k;

    /* renamed from: l */
    private int f1429l;

    /* renamed from: m */
    private boolean f1430m;

    /* renamed from: n */
    private boolean f1431n;

    /* renamed from: o */
    private boolean f1432o;

    /* renamed from: p */
    private AbstractC0344d f1433p;

    /* renamed from: androidx.appcompat.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d$a.class */
    public static final class C0341a implements Comparable<C0341a> {

        /* renamed from: a */
        public final ResolveInfo f1434a;

        /* renamed from: b */
        public float f1435b;

        public C0341a(ResolveInfo resolveInfo) {
            this.f1434a = resolveInfo;
        }

        /* renamed from: a */
        public int compareTo(C0341a c0341a) {
            return Float.floatToIntBits(c0341a.f1435b) - Float.floatToIntBits(this.f1435b);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (obj == null) {
                    z = false;
                } else if (getClass() != obj.getClass()) {
                    z = false;
                } else if (Float.floatToIntBits(this.f1435b) != Float.floatToIntBits(((C0341a) obj).f1435b)) {
                    z = false;
                }
            }
            return z;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f1435b) + 31;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("resolveInfo:").append(this.f1434a.toString());
            sb.append("; weight:").append(new BigDecimal(this.f1435b));
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: androidx.appcompat.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d$b.class */
    public interface AbstractC0342b {
        /* renamed from: a */
        void m21335a(Intent intent, List<C0341a> list, List<C0343c> list2);
    }

    /* renamed from: androidx.appcompat.widget.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d$c.class */
    public static final class C0343c {

        /* renamed from: a */
        public final ComponentName f1436a;

        /* renamed from: b */
        public final long f1437b;

        /* renamed from: c */
        public final float f1438c;

        public C0343c(ComponentName componentName, long j, float f) {
            this.f1436a = componentName;
            this.f1437b = j;
            this.f1438c = f;
        }

        public C0343c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = 1
                r7 = r0
                r0 = r5
                r1 = r6
                if (r0 != r1) goto L9
            L7:
                r0 = r7
                return r0
            L9:
                r0 = r6
                if (r0 != 0) goto L12
                r0 = 0
                r7 = r0
                goto L7
            L12:
                r0 = r5
                java.lang.Class r0 = r0.getClass()
                r1 = r6
                java.lang.Class r1 = r1.getClass()
                if (r0 == r1) goto L22
                r0 = 0
                r7 = r0
                goto L7
            L22:
                r0 = r6
                androidx.appcompat.widget.d$c r0 = (androidx.appcompat.widget.C0340d.C0343c) r0
                r6 = r0
                r0 = r5
                android.content.ComponentName r0 = r0.f1436a
                if (r0 != 0) goto L3a
                r0 = r6
                android.content.ComponentName r0 = r0.f1436a
                if (r0 == 0) goto L4d
                r0 = 0
                r7 = r0
                goto L7
            L3a:
                r0 = r5
                android.content.ComponentName r0 = r0.f1436a
                r1 = r6
                android.content.ComponentName r1 = r1.f1436a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L4d
                r0 = 0
                r7 = r0
                goto L7
            L4d:
                r0 = r5
                long r0 = r0.f1437b
                r1 = r6
                long r1 = r1.f1437b
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L5e
                r0 = 0
                r7 = r0
                goto L7
            L5e:
                r0 = r5
                float r0 = r0.f1438c
                int r0 = java.lang.Float.floatToIntBits(r0)
                r1 = r6
                float r1 = r1.f1438c
                int r1 = java.lang.Float.floatToIntBits(r1)
                if (r0 == r1) goto L7
                r0 = 0
                r7 = r0
                goto L7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0340d.C0343c.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            return (((((this.f1436a == null ? 0 : this.f1436a.hashCode()) + 31) * 31) + ((int) (this.f1437b ^ (this.f1437b >>> 32)))) * 31) + Float.floatToIntBits(this.f1438c);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("; activity:").append(this.f1436a);
            sb.append("; time:").append(this.f1437b);
            sb.append("; weight:").append(new BigDecimal(this.f1438c));
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: androidx.appcompat.widget.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d$d.class */
    public interface AbstractC0344d {
        /* renamed from: a */
        boolean m21334a(C0340d c0340d, Intent intent);
    }

    /* renamed from: androidx.appcompat.widget.d$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d$e.class */
    public final class AsyncTaskC0345e extends AsyncTask<Object, Void, Void> {
        AsyncTaskC0345e() {
            C0340d.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = C0340d.this.f1421b.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            try {
                                newSerializer.setOutput(openFileOutput, null);
                                newSerializer.startDocument("UTF-8", true);
                                newSerializer.startTag(null, "historical-records");
                                int size = list.size();
                                for (int i = 0; i < size; i++) {
                                    C0343c c0343c = (C0343c) list.remove(0);
                                    newSerializer.startTag(null, "historical-record");
                                    newSerializer.attribute(null, "activity", c0343c.f1436a.flattenToString());
                                    newSerializer.attribute(null, "time", String.valueOf(c0343c.f1437b));
                                    newSerializer.attribute(null, "weight", String.valueOf(c0343c.f1438c));
                                    newSerializer.endTag(null, "historical-record");
                                }
                                newSerializer.endTag(null, "historical-records");
                                newSerializer.endDocument();
                                C0340d.this.f1423d = true;
                                if (openFileOutput == null) {
                                    return null;
                                }
                                try {
                                    openFileOutput.close();
                                    return null;
                                } catch (IOException e) {
                                    return null;
                                }
                            } catch (Throwable th) {
                                C0340d.this.f1423d = true;
                                if (openFileOutput != null) {
                                    try {
                                        openFileOutput.close();
                                    } catch (IOException e2) {
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException e3) {
                            Log.e(C0340d.f1418a, "Error writing historical record file: " + C0340d.this.f1422c, e3);
                            C0340d.this.f1423d = true;
                            if (openFileOutput == null) {
                                return null;
                            }
                            try {
                                openFileOutput.close();
                                return null;
                            } catch (IOException e4) {
                                return null;
                            }
                        }
                    } catch (IllegalArgumentException e5) {
                        Log.e(C0340d.f1418a, "Error writing historical record file: " + C0340d.this.f1422c, e5);
                        C0340d.this.f1423d = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                        try {
                            openFileOutput.close();
                            return null;
                        } catch (IOException e6) {
                            return null;
                        }
                    }
                } catch (IllegalStateException e7) {
                    Log.e(C0340d.f1418a, "Error writing historical record file: " + C0340d.this.f1422c, e7);
                    C0340d.this.f1423d = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                    try {
                        openFileOutput.close();
                        return null;
                    } catch (IOException e8) {
                        return null;
                    }
                }
            } catch (FileNotFoundException e9) {
                Log.e(C0340d.f1418a, "Error writing historical record file: " + str, e9);
                return null;
            }
        }
    }

    /* renamed from: a */
    private boolean m21347a(C0343c c0343c) {
        boolean add = this.f1426i.add(c0343c);
        if (add) {
            this.f1431n = true;
            m21338h();
            m21344c();
            m21341e();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: c */
    private void m21344c() {
        if (!this.f1430m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (!this.f1431n) {
            return;
        }
        this.f1431n = false;
        if (TextUtils.isEmpty(this.f1422c)) {
            return;
        }
        new AsyncTaskC0345e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f1426i), this.f1422c);
    }

    /* renamed from: d */
    private void m21342d() {
        boolean m21340f = m21340f();
        boolean m21339g = m21339g();
        m21338h();
        if (m21340f || m21339g) {
            m21341e();
            notifyChanged();
        }
    }

    /* renamed from: e */
    private boolean m21341e() {
        boolean z;
        if (this.f1428k == null || this.f1427j == null || this.f1425h.isEmpty() || this.f1426i.isEmpty()) {
            z = false;
        } else {
            this.f1428k.m21335a(this.f1427j, this.f1425h, Collections.unmodifiableList(this.f1426i));
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    private boolean m21340f() {
        boolean z = false;
        if (this.f1432o) {
            z = false;
            if (this.f1427j != null) {
                this.f1432o = false;
                this.f1425h.clear();
                List<ResolveInfo> queryIntentActivities = this.f1421b.getPackageManager().queryIntentActivities(this.f1427j, 0);
                int size = queryIntentActivities.size();
                for (int i = 0; i < size; i++) {
                    this.f1425h.add(new C0341a(queryIntentActivities.get(i)));
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    private boolean m21339g() {
        boolean z = true;
        if (!this.f1423d || !this.f1431n || TextUtils.isEmpty(this.f1422c)) {
            z = false;
        } else {
            this.f1423d = false;
            this.f1430m = true;
            m21337i();
        }
        return z;
    }

    /* renamed from: h */
    private void m21338h() {
        int size = this.f1426i.size() - this.f1429l;
        if (size <= 0) {
            return;
        }
        this.f1431n = true;
        for (int i = 0; i < size; i++) {
            this.f1426i.remove(0);
        }
    }

    /* renamed from: i */
    private void m21337i() {
        FileInputStream openFileInput;
        try {
            try {
                openFileInput = this.f1421b.openFileInput(this.f1422c);
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, "UTF-8");
                    for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                    }
                    if (!"historical-records".equals(newPullParser.getName())) {
                        throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                    }
                    List<C0343c> list = this.f1426i;
                    list.clear();
                    while (true) {
                        int next = newPullParser.next();
                        if (next == 1) {
                            if (openFileInput == null) {
                                return;
                            }
                            try {
                                openFileInput.close();
                                return;
                            } catch (IOException e) {
                                return;
                            }
                        } else if (next != 3 && next != 4) {
                            if (!"historical-record".equals(newPullParser.getName())) {
                                throw new XmlPullParserException("Share records file not well-formed.");
                            }
                            list.add(new C0343c(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                        }
                    }
                } catch (IOException e2) {
                    Log.e(f1418a, "Error reading historical recrod file: " + this.f1422c, e2);
                    if (openFileInput == null) {
                        return;
                    }
                    try {
                        openFileInput.close();
                    } catch (IOException e3) {
                    }
                } catch (XmlPullParserException e4) {
                    Log.e(f1418a, "Error reading historical recrod file: " + this.f1422c, e4);
                    if (openFileInput == null) {
                        return;
                    }
                    try {
                        openFileInput.close();
                    } catch (IOException e5) {
                    }
                }
            } catch (Throwable th) {
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
        }
    }

    /* renamed from: a */
    public int m21350a() {
        int size;
        synchronized (this.f1424g) {
            m21342d();
            size = this.f1425h.size();
        }
        return size;
    }

    /* renamed from: a */
    public int m21348a(ResolveInfo resolveInfo) {
        int i;
        synchronized (this.f1424g) {
            m21342d();
            List<C0341a> list = this.f1425h;
            int size = list.size();
            i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (list.get(i).f1434a == resolveInfo) {
                    break;
                } else {
                    i++;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public ResolveInfo m21349a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f1424g) {
            m21342d();
            resolveInfo = this.f1425h.get(i).f1434a;
        }
        return resolveInfo;
    }

    /* renamed from: b */
    public Intent m21345b(int i) {
        Intent intent;
        synchronized (this.f1424g) {
            if (this.f1427j == null) {
                intent = null;
            } else {
                m21342d();
                C0341a c0341a = this.f1425h.get(i);
                ComponentName componentName = new ComponentName(c0341a.f1434a.activityInfo.packageName, c0341a.f1434a.activityInfo.name);
                intent = new Intent(this.f1427j);
                intent.setComponent(componentName);
                if (this.f1433p != null) {
                    if (this.f1433p.m21334a(this, new Intent(intent))) {
                        intent = null;
                    }
                }
                m21347a(new C0343c(componentName, System.currentTimeMillis(), 1.0f));
            }
        }
        return intent;
    }

    /* renamed from: b */
    public ResolveInfo m21346b() {
        ResolveInfo resolveInfo;
        synchronized (this.f1424g) {
            m21342d();
            resolveInfo = !this.f1425h.isEmpty() ? this.f1425h.get(0).f1434a : null;
        }
        return resolveInfo;
    }

    /* renamed from: c */
    public void m21343c(int i) {
        synchronized (this.f1424g) {
            m21342d();
            C0341a c0341a = this.f1425h.get(i);
            C0341a c0341a2 = this.f1425h.get(0);
            m21347a(new C0343c(new ComponentName(c0341a.f1434a.activityInfo.packageName, c0341a.f1434a.activityInfo.name), System.currentTimeMillis(), c0341a2 != null ? (c0341a2.f1435b - c0341a.f1435b) + 5.0f : 1.0f));
        }
    }
}
