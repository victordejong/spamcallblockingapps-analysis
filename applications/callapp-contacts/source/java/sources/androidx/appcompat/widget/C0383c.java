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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
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
/* renamed from: androidx.appcompat.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c.class */
public class C0383c extends DataSetObservable {

    /* renamed from: a */
    static final String f1540a = "c";

    /* renamed from: g */
    private static final Object f1541g = new Object();

    /* renamed from: h */
    private static final Map<String, C0383c> f1542h = new HashMap();

    /* renamed from: d */
    final Context f1545d;

    /* renamed from: e */
    final String f1546e;

    /* renamed from: j */
    private Intent f1549j;

    /* renamed from: p */
    private AbstractC0388e f1555p;

    /* renamed from: b */
    final Object f1543b = new Object();

    /* renamed from: c */
    final List<C0384a> f1544c = new ArrayList();

    /* renamed from: i */
    private final List<C0387d> f1548i = new ArrayList();

    /* renamed from: k */
    private AbstractC0385b f1550k = new C0386c();

    /* renamed from: l */
    private int f1551l = 50;

    /* renamed from: f */
    boolean f1547f = true;

    /* renamed from: m */
    private boolean f1552m = false;

    /* renamed from: n */
    private boolean f1553n = true;

    /* renamed from: o */
    private boolean f1554o = false;

    /* renamed from: androidx.appcompat.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$a.class */
    public static final class C0384a implements Comparable<C0384a> {

        /* renamed from: a */
        public final ResolveInfo f1556a;

        /* renamed from: b */
        public float f1557b;

        public C0384a(ResolveInfo resolveInfo) {
            this.f1556a = resolveInfo;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C0384a c0384a) {
            return Float.floatToIntBits(c0384a.f1557b) - Float.floatToIntBits(this.f1557b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.f1557b) == Float.floatToIntBits(((C0384a) obj).f1557b);
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.f1557b) + 31;
        }

        public final String toString() {
            return "[resolveInfo:" + this.f1556a.toString() + "; weight:" + new BigDecimal(this.f1557b) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$b.class */
    public interface AbstractC0385b {
        /* renamed from: a */
        void mo45752a(List<C0384a> list, List<C0387d> list2);
    }

    /* renamed from: androidx.appcompat.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$c.class */
    static final class C0386c implements AbstractC0385b {

        /* renamed from: a */
        private final Map<ComponentName, C0384a> f1558a = new HashMap();

        C0386c() {
        }

        @Override // androidx.appcompat.widget.C0383c.AbstractC0385b
        /* renamed from: a */
        public final void mo45752a(List<C0384a> list, List<C0387d> list2) {
            Map<ComponentName, C0384a> map = this.f1558a;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                C0384a c0384a = list.get(i);
                c0384a.f1557b = BitmapDescriptorFactory.HUE_RED;
                map.put(new ComponentName(c0384a.f1556a.activityInfo.packageName, c0384a.f1556a.activityInfo.name), c0384a);
            }
            int size2 = list2.size() - 1;
            float f = 1.0f;
            while (true) {
                float f2 = f;
                if (size2 < 0) {
                    Collections.sort(list);
                    return;
                }
                C0387d c0387d = list2.get(size2);
                C0384a c0384a2 = map.get(c0387d.f1559a);
                float f3 = f2;
                if (c0384a2 != null) {
                    c0384a2.f1557b += c0387d.f1561c * f2;
                    f3 = f2 * 0.95f;
                }
                size2--;
                f = f3;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$d.class */
    public static final class C0387d {

        /* renamed from: a */
        public final ComponentName f1559a;

        /* renamed from: b */
        public final long f1560b;

        /* renamed from: c */
        public final float f1561c;

        public C0387d(ComponentName componentName, long j, float f) {
            this.f1559a = componentName;
            this.f1560b = j;
            this.f1561c = f;
        }

        public C0387d(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0387d c0387d = (C0387d) obj;
            ComponentName componentName = this.f1559a;
            if (componentName == null) {
                if (c0387d.f1559a != null) {
                    return false;
                }
            } else if (!componentName.equals(c0387d.f1559a)) {
                return false;
            }
            return this.f1560b == c0387d.f1560b && Float.floatToIntBits(this.f1561c) == Float.floatToIntBits(c0387d.f1561c);
        }

        public final int hashCode() {
            ComponentName componentName = this.f1559a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f1560b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.f1561c);
        }

        public final String toString() {
            return "[; activity:" + this.f1559a + "; time:" + this.f1560b + "; weight:" + new BigDecimal(this.f1561c) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$e.class */
    public interface AbstractC0388e {
        /* renamed from: a */
        boolean m45751a();
    }

    /* renamed from: androidx.appcompat.widget.c$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$f.class */
    public final class AsyncTaskC0389f extends AsyncTask<Object, Void, Void> {
        AsyncTaskC0389f() {
            C0383c.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = C0383c.this.f1545d.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        newSerializer.setOutput(openFileOutput, null);
                        newSerializer.startDocument("UTF-8", Boolean.TRUE);
                        newSerializer.startTag(null, "historical-records");
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            C0387d c0387d = (C0387d) list.remove(0);
                            newSerializer.startTag(null, "historical-record");
                            newSerializer.attribute(null, "activity", c0387d.f1559a.flattenToString());
                            newSerializer.attribute(null, "time", String.valueOf(c0387d.f1560b));
                            newSerializer.attribute(null, "weight", String.valueOf(c0387d.f1561c));
                            newSerializer.endTag(null, "historical-record");
                        }
                        newSerializer.endTag(null, "historical-records");
                        newSerializer.endDocument();
                        C0383c.this.f1547f = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    } catch (Throwable th) {
                        C0383c.this.f1547f = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    Log.e(C0383c.f1540a, "Error writing historical record file: " + C0383c.this.f1546e, e2);
                    C0383c.this.f1547f = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e3) {
                    Log.e(C0383c.f1540a, "Error writing historical record file: " + C0383c.this.f1546e, e3);
                    C0383c.this.f1547f = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalStateException e4) {
                    Log.e(C0383c.f1540a, "Error writing historical record file: " + C0383c.this.f1546e, e4);
                    C0383c.this.f1547f = true;
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
                Log.e(C0383c.f1540a, "Error writing historical record file: ".concat(String.valueOf(str)), e6);
                return null;
            }
        }
    }

    private C0383c(Context context, String str) {
        this.f1545d = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(".xml")) {
            this.f1546e = str;
            return;
        }
        this.f1546e = str + ".xml";
    }

    /* renamed from: e */
    private void m45758e() {
        if (this.f1552m) {
            if (!this.f1553n) {
                return;
            }
            this.f1553n = false;
            if (TextUtils.isEmpty(this.f1546e)) {
                return;
            }
            new AsyncTaskC0389f().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f1548i), this.f1546e);
            return;
        }
        throw new IllegalStateException("No preceding call to #readHistoricalData");
    }

    /* renamed from: f */
    private boolean m45757f() {
        if (this.f1550k == null || this.f1549j == null || this.f1544c.isEmpty() || this.f1548i.isEmpty()) {
            return false;
        }
        this.f1550k.mo45752a(this.f1544c, Collections.unmodifiableList(this.f1548i));
        return true;
    }

    /* renamed from: g */
    private boolean m45756g() {
        if (!this.f1554o || this.f1549j == null) {
            return false;
        }
        this.f1554o = false;
        this.f1544c.clear();
        List<ResolveInfo> queryIntentActivities = this.f1545d.getPackageManager().queryIntentActivities(this.f1549j, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f1544c.add(new C0384a(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: h */
    private boolean m45755h() {
        if (!this.f1547f || !this.f1553n || TextUtils.isEmpty(this.f1546e)) {
            return false;
        }
        this.f1547f = false;
        this.f1552m = true;
        m45753j();
        return true;
    }

    /* renamed from: i */
    private void m45754i() {
        int size = this.f1548i.size() - this.f1551l;
        if (size <= 0) {
            return;
        }
        this.f1553n = true;
        for (int i = 0; i < size; i++) {
            this.f1548i.remove(0);
        }
    }

    /* renamed from: j */
    private void m45753j() {
        FileInputStream openFileInput;
        try {
            try {
                openFileInput = this.f1545d.openFileInput(this.f1546e);
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, "UTF-8");
                    for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                    }
                    if (!"historical-records".equals(newPullParser.getName())) {
                        throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                    }
                    List<C0387d> list = this.f1548i;
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
                            list.add(new C0387d(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                        }
                    }
                } catch (IOException e2) {
                    Log.e(f1540a, "Error reading historical recrod file: " + this.f1546e, e2);
                    if (openFileInput == null) {
                        return;
                    }
                    try {
                        openFileInput.close();
                    } catch (IOException e3) {
                    }
                } catch (XmlPullParserException e4) {
                    Log.e(f1540a, "Error reading historical recrod file: " + this.f1546e, e4);
                    if (openFileInput == null) {
                        return;
                    }
                    try {
                        openFileInput.close();
                    } catch (IOException e5) {
                    }
                }
            } catch (FileNotFoundException e6) {
            }
        } catch (Throwable th) {
            if (openFileInput != null) {
                try {
                    openFileInput.close();
                } catch (IOException e7) {
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final int m45766a() {
        int size;
        synchronized (this.f1543b) {
            m45759d();
            size = this.f1544c.size();
        }
        return size;
    }

    /* renamed from: a */
    public final int m45764a(ResolveInfo resolveInfo) {
        synchronized (this.f1543b) {
            m45759d();
            List<C0384a> list = this.f1544c;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f1556a == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: a */
    public final ResolveInfo m45765a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f1543b) {
            m45759d();
            resolveInfo = this.f1544c.get(i).f1556a;
        }
        return resolveInfo;
    }

    /* renamed from: a */
    public final boolean m45763a(C0387d c0387d) {
        boolean add = this.f1548i.add(c0387d);
        if (add) {
            this.f1553n = true;
            m45754i();
            m45758e();
            m45757f();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: b */
    public final Intent m45761b(int i) {
        synchronized (this.f1543b) {
            if (this.f1549j == null) {
                return null;
            }
            m45759d();
            C0384a c0384a = this.f1544c.get(i);
            ComponentName componentName = new ComponentName(c0384a.f1556a.activityInfo.packageName, c0384a.f1556a.activityInfo.name);
            Intent intent = new Intent(this.f1549j);
            intent.setComponent(componentName);
            if (this.f1555p != null) {
                new Intent(intent);
                if (this.f1555p.m45751a()) {
                    return null;
                }
            }
            m45763a(new C0387d(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: b */
    public final ResolveInfo m45762b() {
        synchronized (this.f1543b) {
            m45759d();
            if (!this.f1544c.isEmpty()) {
                return this.f1544c.get(0).f1556a;
            }
            return null;
        }
    }

    /* renamed from: c */
    public final int m45760c() {
        int size;
        synchronized (this.f1543b) {
            m45759d();
            size = this.f1548i.size();
        }
        return size;
    }

    /* renamed from: d */
    public final void m45759d() {
        boolean m45756g = m45756g();
        boolean m45755h = m45755h();
        m45754i();
        if (m45756g || m45755h) {
            m45757f();
            notifyChanged();
        }
    }
}
