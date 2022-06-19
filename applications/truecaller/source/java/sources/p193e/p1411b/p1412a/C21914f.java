package p193e.p1411b.p1412a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.JsonReader;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import p193e.p1411b.p1412a.p1413a0.C21887a;
import p193e.p1411b.p1412a.p1414b0.C21905e;
import p193e.p1411b.p1412a.p1420y.C21977g;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.f */
/* loaded from: classes-dex2jar.jar:e/b/a/f.class */
public class C21914f {

    /* renamed from: a */
    public static final Map<String, C21944r<C21913e>> f60839a = new HashMap();

    /* renamed from: e.b.a.f$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/f$a.class */
    public static final class C21915a implements AbstractC21939m<C21913e> {

        /* renamed from: a */
        public final /* synthetic */ String f60840a;

        public C21915a(String str) {
            this.f60840a = str;
        }

        @Override // p193e.p1411b.p1412a.AbstractC21939m
        public void onResult(C21913e c21913e) {
            C21913e c21913e2 = c21913e;
            String str = this.f60840a;
            if (str != null) {
                C21977g.f61026b.m8841a(str, c21913e2);
            }
            C21914f.f60839a.remove(this.f60840a);
        }
    }

    /* renamed from: e.b.a.f$b */
    /* loaded from: classes-dex2jar.jar:e/b/a/f$b.class */
    public static final class C21916b implements AbstractC21939m<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ String f60841a;

        public C21916b(String str) {
            this.f60841a = str;
        }

        @Override // p193e.p1411b.p1412a.AbstractC21939m
        public void onResult(Throwable th) {
            C21914f.f60839a.remove(this.f60841a);
        }
    }

    /* renamed from: e.b.a.f$c */
    /* loaded from: classes-dex2jar.jar:e/b/a/f$c.class */
    public static final class CallableC21917c implements Callable<C21942p<C21913e>> {

        /* renamed from: a */
        public final /* synthetic */ C21913e f60842a;

        public CallableC21917c(C21913e c21913e) {
            this.f60842a = c21913e;
        }

        @Override // java.util.concurrent.Callable
        public C21942p<C21913e> call() throws Exception {
            return new C21942p<>(this.f60842a);
        }
    }

    /* renamed from: a */
    public static C21944r<C21913e> m8903a(String str, Callable<C21942p<C21913e>> callable) {
        C21913e c21913e;
        if (str == null) {
            c21913e = null;
        } else {
            C21977g c21977g = C21977g.f61026b;
            Objects.requireNonNull(c21977g);
            c21913e = c21977g.f61027a.get(str);
        }
        if (c21913e != null) {
            return new C21944r<>(new CallableC21917c(c21913e));
        }
        if (str != null) {
            Map<String, C21944r<C21913e>> map = f60839a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        C21944r<C21913e> c21944r = new C21944r<>(callable);
        c21944r.m8876b(new C21915a(str));
        c21944r.m8877a(new C21916b(str));
        f60839a.put(str, c21944r);
        return c21944r;
    }

    /* renamed from: b */
    public static C21942p<C21913e> m8902b(InputStream inputStream, String str) {
        try {
            return m8901c(new JsonReader(new InputStreamReader(inputStream)), str, true);
        } finally {
            C21905e.m8919b(inputStream);
        }
    }

    /* renamed from: c */
    public static C21942p<C21913e> m8901c(JsonReader jsonReader, String str, boolean z) {
        try {
            try {
                C21913e m8943a = C21887a.m8943a(jsonReader);
                C21977g.f61026b.m8841a(str, m8943a);
                C21942p<C21913e> c21942p = new C21942p<>(m8943a);
                if (z) {
                    C21905e.m8919b(jsonReader);
                }
                return c21942p;
            } catch (Exception e) {
                C21942p<C21913e> c21942p2 = new C21942p<>(e);
                if (z) {
                    C21905e.m8919b(jsonReader);
                }
                return c21942p2;
            }
        } catch (Throwable th) {
            if (z) {
                C21905e.m8919b(jsonReader);
            }
            throw th;
        }
    }

    /* renamed from: d */
    public static C21942p<C21913e> m8900d(Context context, int i) {
        try {
            InputStream openRawResource = context.getResources().openRawResource(i);
            return m8902b(openRawResource, "rawRes_" + i);
        } catch (Resources.NotFoundException e) {
            return new C21942p<>(e);
        }
    }

    /* renamed from: e */
    public static C21942p<C21913e> m8899e(ZipInputStream zipInputStream, String str) {
        try {
            return m8898f(zipInputStream, str);
        } finally {
            C21905e.m8919b(zipInputStream);
        }
    }

    /* renamed from: f */
    public static C21942p<C21913e> m8898f(ZipInputStream zipInputStream, String str) {
        C21938l c21938l;
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            C21913e c21913e = null;
            while (nextEntry != null) {
                if (nextEntry.getName().contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    c21913e = m8901c(new JsonReader(new InputStreamReader(zipInputStream)), null, false).f60927a;
                } else if (nextEntry.getName().contains(".png")) {
                    String[] split = nextEntry.getName().split(StringConstant.SLASH);
                    hashMap.put(split[split.length - 1], BitmapFactory.decodeStream(zipInputStream));
                } else {
                    zipInputStream.closeEntry();
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (c21913e == null) {
                return new C21942p<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator<C21938l> it = c21913e.f60827d.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c21938l = null;
                        break;
                    }
                    c21938l = it.next();
                    if (c21938l.f60896b.equals(str2)) {
                        break;
                    }
                }
                if (c21938l != null) {
                    c21938l.f60897c = (Bitmap) entry.getValue();
                }
            }
            for (Map.Entry<String, C21938l> entry2 : c21913e.f60827d.entrySet()) {
                if (entry2.getValue().f60897c == null) {
                    StringBuilder m8728C = C22128a.m8728C("There is no image for ");
                    m8728C.append(entry2.getValue().f60896b);
                    return new C21942p<>(new IllegalStateException(m8728C.toString()));
                }
            }
            C21977g.f61026b.m8841a(str, c21913e);
            return new C21942p<>(c21913e);
        } catch (IOException e) {
            return new C21942p<>(e);
        }
    }
}
