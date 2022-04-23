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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c.class */
public class c extends DataSetObservable {

    /* renamed from: a  reason: collision with root package name */
    static final String f1070a = "c";
    private static final Object g = new Object();
    private static final Map<String, c> h = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final Context f1073d;
    final String e;
    private Intent j;
    private e p;

    /* renamed from: b  reason: collision with root package name */
    final Object f1071b = new Object();

    /* renamed from: c  reason: collision with root package name */
    final List<a> f1072c = new ArrayList();
    private final List<d> i = new ArrayList();
    private b k = new C0025c();
    private int l = 50;
    boolean f = true;
    private boolean m = false;
    private boolean n = true;
    private boolean o = false;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$a.class */
    public static final class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final ResolveInfo f1074a;

        /* renamed from: b  reason: collision with root package name */
        public float f1075b;

        public a(ResolveInfo resolveInfo) {
            this.f1074a = resolveInfo;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(a aVar) {
            return Float.floatToIntBits(aVar.f1075b) - Float.floatToIntBits(this.f1075b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.f1075b) == Float.floatToIntBits(((a) obj).f1075b);
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.f1075b) + 31;
        }

        public final String toString() {
            return "[resolveInfo:" + this.f1074a.toString() + "; weight:" + new BigDecimal(this.f1075b) + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$b.class */
    public interface b {
        void a(List<a> list, List<d> list2);
    }

    /* renamed from: androidx.appcompat.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$c.class */
    static final class C0025c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<ComponentName, a> f1076a = new HashMap();

        C0025c() {
        }

        @Override // androidx.appcompat.widget.c.b
        public final void a(List<a> list, List<d> list2) {
            Map<ComponentName, a> map = this.f1076a;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                a aVar = list.get(i);
                aVar.f1075b = BitmapDescriptorFactory.HUE_RED;
                map.put(new ComponentName(aVar.f1074a.activityInfo.packageName, aVar.f1074a.activityInfo.name), aVar);
            }
            float f = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                d dVar = list2.get(size2);
                a aVar2 = map.get(dVar.f1077a);
                f = f;
                if (aVar2 != null) {
                    aVar2.f1075b += dVar.f1079c * f;
                    f *= 0.95f;
                }
            }
            Collections.sort(list);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final ComponentName f1077a;

        /* renamed from: b  reason: collision with root package name */
        public final long f1078b;

        /* renamed from: c  reason: collision with root package name */
        public final float f1079c;

        public d(ComponentName componentName, long j, float f) {
            this.f1077a = componentName;
            this.f1078b = j;
            this.f1079c = f;
        }

        public d(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            ComponentName componentName = this.f1077a;
            if (componentName == null) {
                if (dVar.f1077a != null) {
                    return false;
                }
            } else if (!componentName.equals(dVar.f1077a)) {
                return false;
            }
            return this.f1078b == dVar.f1078b && Float.floatToIntBits(this.f1079c) == Float.floatToIntBits(dVar.f1079c);
        }

        public final int hashCode() {
            ComponentName componentName = this.f1077a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f1078b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.f1079c);
        }

        public final String toString() {
            return "[; activity:" + this.f1077a + "; time:" + this.f1078b + "; weight:" + new BigDecimal(this.f1079c) + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$e.class */
    public interface e {
        boolean a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$f.class */
    public final class f extends AsyncTask<Object, Void, Void> {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = c.this.f1073d.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        newSerializer.setOutput(openFileOutput, null);
                        newSerializer.startDocument("UTF-8", Boolean.TRUE);
                        newSerializer.startTag(null, "historical-records");
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            d dVar = (d) list.remove(0);
                            newSerializer.startTag(null, "historical-record");
                            newSerializer.attribute(null, "activity", dVar.f1077a.flattenToString());
                            newSerializer.attribute(null, "time", String.valueOf(dVar.f1078b));
                            newSerializer.attribute(null, "weight", String.valueOf(dVar.f1079c));
                            newSerializer.endTag(null, "historical-record");
                        }
                        newSerializer.endTag(null, "historical-records");
                        newSerializer.endDocument();
                        c.this.f = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    } catch (Throwable th) {
                        c.this.f = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    String str2 = c.f1070a;
                    Log.e(str2, "Error writing historical record file: " + c.this.e, e2);
                    c.this.f = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e3) {
                    String str3 = c.f1070a;
                    Log.e(str3, "Error writing historical record file: " + c.this.e, e3);
                    c.this.f = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalStateException e4) {
                    String str4 = c.f1070a;
                    Log.e(str4, "Error writing historical record file: " + c.this.e, e4);
                    c.this.f = true;
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
                Log.e(c.f1070a, "Error writing historical record file: ".concat(String.valueOf(str)), e6);
                return null;
            }
        }
    }

    private c(Context context, String str) {
        this.f1073d = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(".xml")) {
            this.e = str;
            return;
        }
        this.e = str + ".xml";
    }

    private void e() {
        if (!this.m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.n) {
            this.n = false;
            if (!TextUtils.isEmpty(this.e)) {
                new f().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.i), this.e);
            }
        }
    }

    private boolean f() {
        if (this.k == null || this.j == null || this.f1072c.isEmpty() || this.i.isEmpty()) {
            return false;
        }
        this.k.a(this.f1072c, Collections.unmodifiableList(this.i));
        return true;
    }

    private boolean g() {
        if (!this.o || this.j == null) {
            return false;
        }
        this.o = false;
        this.f1072c.clear();
        List<ResolveInfo> queryIntentActivities = this.f1073d.getPackageManager().queryIntentActivities(this.j, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f1072c.add(new a(queryIntentActivities.get(i)));
        }
        return true;
    }

    private boolean h() {
        if (!this.f || !this.n || TextUtils.isEmpty(this.e)) {
            return false;
        }
        this.f = false;
        this.m = true;
        j();
        return true;
    }

    private void i() {
        int size = this.i.size() - this.l;
        if (size > 0) {
            this.n = true;
            for (int i = 0; i < size; i++) {
                this.i.remove(0);
            }
        }
    }

    private void j() {
        FileInputStream openFileInput;
        try {
            try {
                openFileInput = this.f1073d.openFileInput(this.e);
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, "UTF-8");
                    for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                    }
                    if ("historical-records".equals(newPullParser.getName())) {
                        List<d> list = this.i;
                        list.clear();
                        while (true) {
                            int next = newPullParser.next();
                            if (next != 1) {
                                if (!(next == 3 || next == 4)) {
                                    if ("historical-record".equals(newPullParser.getName())) {
                                        list.add(new d(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                                    } else {
                                        throw new XmlPullParserException("Share records file not well-formed.");
                                    }
                                }
                            } else if (openFileInput != null) {
                                try {
                                    openFileInput.close();
                                    return;
                                } catch (IOException e2) {
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                    } else {
                        throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                    }
                } catch (IOException e3) {
                    String str = f1070a;
                    Log.e(str, "Error reading historical recrod file: " + this.e, e3);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (XmlPullParserException e5) {
                    String str2 = f1070a;
                    Log.e(str2, "Error reading historical recrod file: " + this.e, e5);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (FileNotFoundException e7) {
            }
        } catch (Throwable th) {
            if (openFileInput != null) {
                try {
                    openFileInput.close();
                } catch (IOException e8) {
                }
            }
            throw th;
        }
    }

    public final int a() {
        int size;
        synchronized (this.f1071b) {
            d();
            size = this.f1072c.size();
        }
        return size;
    }

    public final int a(ResolveInfo resolveInfo) {
        synchronized (this.f1071b) {
            d();
            List<a> list = this.f1072c;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f1074a == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    public final ResolveInfo a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f1071b) {
            d();
            resolveInfo = this.f1072c.get(i).f1074a;
        }
        return resolveInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(d dVar) {
        boolean add = this.i.add(dVar);
        if (add) {
            this.n = true;
            i();
            e();
            f();
            notifyChanged();
        }
        return add;
    }

    public final Intent b(int i) {
        synchronized (this.f1071b) {
            if (this.j == null) {
                return null;
            }
            d();
            a aVar = this.f1072c.get(i);
            ComponentName componentName = new ComponentName(aVar.f1074a.activityInfo.packageName, aVar.f1074a.activityInfo.name);
            Intent intent = new Intent(this.j);
            intent.setComponent(componentName);
            if (this.p != null) {
                new Intent(intent);
                if (this.p.a()) {
                    return null;
                }
            }
            a(new d(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public final ResolveInfo b() {
        synchronized (this.f1071b) {
            d();
            if (this.f1072c.isEmpty()) {
                return null;
            }
            return this.f1072c.get(0).f1074a;
        }
    }

    public final int c() {
        int size;
        synchronized (this.f1071b) {
            d();
            size = this.i.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        boolean g2 = g();
        boolean h2 = h();
        i();
        if (g2 || h2) {
            f();
            notifyChanged();
        }
    }
}
