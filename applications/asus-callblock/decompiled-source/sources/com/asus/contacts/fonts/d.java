package com.asus.contacts.fonts;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static Typeface f2644a;
    private static Map<String, Typeface> o;
    Context g;
    String j;
    boolean m;
    private final SharedPreferences p;
    private static final Map<String, Typeface> n = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static final Typeface f2645b = Typeface.create("sans-serif-condensed", 0);
    public static final Typeface c = Typeface.create("sans-serif-condensed", 1);
    public static final Typeface d = Typeface.create("sans-serif-thin", 0);
    public static final Typeface e = Typeface.create("sans-serif-light", 0);
    public static final Typeface f = Typeface.create("sans-serif", 1);
    public final ArrayList<Font> h = new ArrayList<>();
    final ArrayList<a> i = new ArrayList<>();
    boolean k = false;
    boolean l = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.asus.contacts.fonts.d$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/d$1.class */
    public final class AnonymousClass1 extends AsyncTask<Void, String, Void> {

        /* renamed from: a  reason: collision with root package name */
        p f2646a;
        private final Vector<String> d = new Vector<>();
        private final Vector<String> e = new Vector<>();
        private final Vector<String> f = new Vector<>();
        private final Vector<String> g = new Vector<>();
        private final ArrayList<Font> h = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        PackageManager f2647b = null;

        AnonymousClass1() {
        }

        private Void a() {
            boolean z;
            File[] listFiles;
            this.f2646a = new p(d.this.g);
            List<ApplicationInfo> installedApplications = this.f2647b.getInstalledApplications(0);
            float size = installedApplications.size();
            publishProgress("0", BuildConfig.FLAVOR, "0");
            p pVar = this.f2646a;
            File file = new File("/system/fonts");
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                m mVar = new m(pVar.f2674a);
                for (File file2 : listFiles) {
                    String name = file2.getName();
                    if (name.startsWith("Roboto")) {
                        String absolutePath = file2.getAbsolutePath();
                        String a2 = mVar.a(null, null, absolutePath);
                        a2 = name.substring(0, name.length() - 4);
                        if (a2 == null) {
                        }
                        n nVar = new n();
                        nVar.f2670a = a2;
                        nVar.c = absolutePath;
                        nVar.f2671b = "system_font";
                        o oVar = new o();
                        oVar.f2672a = absolutePath;
                        nVar.d.add(oVar);
                        pVar.f2675b.add(nVar);
                    }
                }
            }
            try {
                int i = 0;
                int i2 = 0;
                for (ApplicationInfo applicationInfo : installedApplications) {
                    final String str = applicationInfo.packageName;
                    AsyncTask<Void, Void, Boolean> asyncTask = new AsyncTask<Void, Void, Boolean>() { // from class: com.asus.contacts.fonts.d.1.1
                        private Boolean a() {
                            Exception e;
                            Throwable th;
                            boolean a3;
                            boolean z2 = false;
                            try {
                                ApplicationInfo applicationInfo2 = AnonymousClass1.this.f2647b.getApplicationInfo(str, 128);
                                String str2 = applicationInfo2.publicSourceDir;
                                if (str.startsWith("com.monotype.android.font.")) {
                                    applicationInfo2.publicSourceDir = applicationInfo2.sourceDir;
                                    Resources resourcesForApplication = AnonymousClass1.this.f2647b.getResourcesForApplication(applicationInfo2);
                                    synchronized (AnonymousClass1.this.f2646a) {
                                        a3 = AnonymousClass1.this.f2646a.a(resourcesForApplication.getAssets(), str) | false;
                                        z2 = a3;
                                    }
                                    z2 = a3;
                                } else {
                                    z2 = false;
                                }
                                z2 = z2;
                                if (!z2) {
                                    try {
                                        applicationInfo2.publicSourceDir = str2;
                                        Resources resourcesForApplication2 = AnonymousClass1.this.f2647b.getResourcesForApplication(applicationInfo2);
                                        synchronized (AnonymousClass1.this.f2646a) {
                                            try {
                                                z2 = AnonymousClass1.this.f2646a.b(resourcesForApplication2.getAssets(), str);
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                            try {
                                            } catch (Throwable th3) {
                                                th = th3;
                                                z2 = z2;
                                                while (true) {
                                                    try {
                                                        break;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                    }
                                                }
                                                try {
                                                    throw th;
                                                } catch (Exception e2) {
                                                    e = e2;
                                                    e.printStackTrace();
                                                    return Boolean.valueOf(z2);
                                                }
                                            }
                                        }
                                    } catch (Exception e3) {
                                        e = e3;
                                    }
                                }
                            } catch (Exception e4) {
                                e = e4;
                            }
                            return Boolean.valueOf(z2);
                        }

                        @Override // android.os.AsyncTask
                        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
                            return a();
                        }
                    };
                    try {
                        z = asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]).get(10000L, TimeUnit.MILLISECONDS).booleanValue();
                    } catch (TimeoutException e) {
                        asyncTask.cancel(true);
                        Log.d("[FontManager]", "task " + str + " has been aborted");
                        z = false;
                    } catch (Exception e2) {
                        Log.d("[FontManager]", "task: " + str + " failed", e2);
                        z = false;
                    }
                    if (z) {
                        i++;
                    }
                    i2++;
                    publishProgress(String.valueOf((int) ((i2 / size) * 100.0f)), str, String.valueOf(i));
                    if (d.this.l) {
                        return null;
                    }
                }
                synchronized (this.f2646a) {
                    this.f2646a.a(this.f, this.e, this.d);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            if (d.this.l) {
                return null;
            }
            d.a(this.d, this.e, this.f);
            d.a(d.this, this.d, this.e, this.f);
            Iterator<String> it = this.d.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next.equals("system_font")) {
                    this.g.add(d.this.g.getString(2131755735));
                } else {
                    Iterator<ApplicationInfo> it2 = installedApplications.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            ApplicationInfo next2 = it2.next();
                            if (next2.packageName.equals(next)) {
                                this.g.add(next2.loadLabel(this.f2647b).toString());
                                break;
                            }
                        }
                    }
                }
            }
            this.h.addAll(d.a(d.this, this.d, this.e, this.f, this.g));
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r5) {
            if (!d.this.l) {
                if (!d.this.p.getBoolean("has_init_key", false)) {
                    d.this.p.edit().putBoolean("has_init_key", true).commit();
                }
                d.this.m = false;
                d.this.a();
                d.this.h.addAll(this.h);
            }
            synchronized (d.this.i) {
                if (!d.this.i.isEmpty()) {
                    Iterator it = d.this.i.iterator();
                    while (it.hasNext()) {
                        ((a) it.next()).b();
                    }
                }
            }
            d.this.k = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            this.f2647b = d.this.g.getPackageManager();
            d.this.k = true;
            d.this.l = false;
            synchronized (d.this.i) {
                if (!d.this.i.isEmpty()) {
                    Iterator it = d.this.i.iterator();
                    while (it.hasNext()) {
                        ((a) it.next()).a();
                    }
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onProgressUpdate(String[] strArr) {
            String[] strArr2 = strArr;
            synchronized (d.this.i) {
                if (!d.this.i.isEmpty()) {
                    Iterator it = d.this.i.iterator();
                    while (it.hasNext()) {
                        ((a) it.next()).a(strArr2);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/d$a.class */
    public interface a {
        void a();

        void a(String... strArr);

        void b();
    }

    static {
        f2644a = null;
        Typeface typeface = Typeface.DEFAULT;
        f2644a = typeface;
        if (typeface == null) {
            try {
                if (new File("/system/fonts/UIFont.ttf").exists()) {
                    f2644a = Typeface.createFromFile("/system/fonts/UIFont.ttf");
                } else {
                    f2644a = Typeface.createFromFile("/system/fonts/DroidSans.ttf");
                }
                n.put(a(BuildConfig.FLAVOR, BuildConfig.FLAVOR), f2644a);
            } catch (RuntimeException e2) {
                Log.d("[FontManager]", "faile to load default font", e2);
            }
        }
        n.put(a(BuildConfig.FLAVOR, BuildConfig.FLAVOR), f2644a);
    }

    public d(Context context) {
        this.g = null;
        this.j = null;
        this.m = false;
        this.g = context;
        this.p = this.g.getSharedPreferences("font_cache", 4);
        if (f2644a != null) {
            this.j = context.getString(2131756224);
        }
        a();
        if (this.p.getBoolean("has_init_key", false)) {
            this.h.addAll(b());
            return;
        }
        d();
        this.m = true;
    }

    public static Typeface a(Context context, String str) {
        Typeface typeface;
        String[] split = str.split("###");
        if (split == null || split.length < 2) {
            typeface = "###".endsWith(str) ? f2644a : null;
        } else {
            String str2 = split[0];
            String str3 = split[1];
            String a2 = a(str2, str3);
            if (n.containsKey(a2)) {
                typeface = n.get(a2);
            } else {
                typeface = str2.equals("system_font") ? k.a(str3) : str3.endsWith(".xml") ? a(context, str3, str2) : c(context, str3, str2);
                n.put(a2, typeface);
            }
        }
        return typeface;
    }

    private static Typeface a(Context context, String str, String str2) {
        Typeface typeface;
        PackageManager packageManager = context.getPackageManager();
        String replace = str.replace(".xml", ".ttf");
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str2, 128);
            applicationInfo.publicSourceDir = applicationInfo.sourceDir;
            AssetManager assets = packageManager.getResourcesForApplication(applicationInfo).getAssets();
            String str3 = "fonts/" + replace;
            try {
                assets.open(str3).close();
                typeface = k.a(assets, str3);
            } catch (IOException e2) {
                typeface = b(context, replace, str2);
            }
        } catch (Exception e3) {
            Log.d("[FontManager]", "[getFontFromFlipFont] fail to get font from: " + str + " / " + str2);
            typeface = null;
        }
        return typeface;
    }

    private static String a(String str, String str2) {
        return str + "###" + str2;
    }

    static /* synthetic */ ArrayList a(d dVar, Vector vector, Vector vector2, Vector vector3, Vector vector4) {
        boolean z;
        ArrayList arrayList = new ArrayList(dVar.b());
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < vector.size(); i++) {
            String str = (String) vector.get(i);
            String str2 = (String) vector2.get(i);
            String str3 = (String) vector3.get(i);
            String str4 = (String) vector4.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    z = true;
                    break;
                }
                Font font = (Font) arrayList.get(i2);
                if (font.f2630a.equals(str) && font.f2631b.equals(str2) && font.c.equals(str3)) {
                    z = font.e;
                    break;
                }
                i2++;
            }
            arrayList2.add(new Font(str, str2, str3, str4, z, i));
        }
        dVar.a(arrayList2);
        return arrayList2;
    }

    public static void a(Typeface typeface) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Field declaredField = Typeface.class.getDeclaredField("sSystemFontMap");
                declaredField.setAccessible(true);
                if (o == null) {
                    o = (Map) declaredField.get(null);
                }
                HashMap hashMap = new HashMap();
                if (o != null) {
                    for (String str : o.keySet()) {
                        hashMap.put(str, typeface);
                    }
                }
                hashMap.put("sans-serif", typeface);
                declaredField.set(null, hashMap);
            } catch (Exception e2) {
                Log.d("[FontManager]", "[setFontOverrideForLollipop] exception: " + e2.toString());
            }
        } else {
            try {
                Field declaredField2 = Typeface.class.getDeclaredField("SANS_SERIF");
                declaredField2.setAccessible(true);
                declaredField2.set(null, typeface);
            } catch (Exception e3) {
                Log.d("[FontManager]", "[setFontOverride] exception: " + e3.toString());
            }
        }
    }

    static /* synthetic */ void a(d dVar, Vector vector, Vector vector2, Vector vector3) {
        HashSet hashSet = new HashSet();
        for (String str : dVar.g.getResources().getStringArray(2130837518)) {
            hashSet.add(str);
        }
        Vector vector4 = new Vector();
        Vector vector5 = new Vector();
        Vector vector6 = new Vector();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < vector3.size(); i++) {
            sb.delete(0, sb.length());
            String str2 = (String) vector3.get(i);
            String str3 = (String) vector.get(i);
            String str4 = (String) vector2.get(i);
            sb.append(str3).append("/").append(str2);
            if (hashSet.contains(sb.toString())) {
                Log.w("[FontManager]", String.format("[removeRestrictedFonts] Remove: %s (%s/%s)", str2, str3, str4));
            } else {
                vector6.add(str2);
                vector4.add(str3);
                vector5.add(str4);
            }
        }
        vector.clear();
        vector.addAll(vector4);
        vector2.clear();
        vector2.addAll(vector5);
        vector3.clear();
        vector3.addAll(vector6);
    }

    static /* synthetic */ void a(Vector vector, Vector vector2, Vector vector3) {
        HashSet hashSet = new HashSet();
        Vector vector4 = new Vector();
        Vector vector5 = new Vector();
        Vector vector6 = new Vector();
        for (int i = 0; i < vector3.size(); i++) {
            String str = (String) vector3.get(i);
            String str2 = (String) vector.get(i);
            String str3 = (String) vector2.get(i);
            if (!hashSet.contains(str)) {
                hashSet.add(str);
                vector6.add(str);
                vector4.add(str2);
                vector5.add(str3);
            } else {
                Log.w("[FontManager]", String.format("[removeDuplicateFonts] Remove: %s (%s/%s)", str, str2, str3));
            }
        }
        vector.clear();
        vector.addAll(vector4);
        vector2.clear();
        vector2.addAll(vector5);
        vector3.clear();
        vector3.addAll(vector6);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x015f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0157 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x014e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface b(android.content.Context r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.fonts.d.b(android.content.Context, java.lang.String, java.lang.String):android.graphics.Typeface");
    }

    private static Typeface c(Context context, String str, String str2) {
        Typeface typeface;
        PackageManager packageManager = context.getPackageManager();
        try {
            typeface = k.a(packageManager.getResourcesForApplication(packageManager.getApplicationInfo(str2, 128)).getAssets(), str);
        } catch (Exception e2) {
            Log.d("[FontManager]", "[getFontFromIconPack] fail to get font from: " + str + " / " + str2);
            typeface = null;
        }
        return typeface;
    }

    public final String a(int i) {
        return a(this.h.get(i).f2630a, this.h.get(i).f2631b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.h.clear();
        if (f2644a != null) {
            this.h.add(new Font(BuildConfig.FLAVOR, BuildConfig.FLAVOR, this.j, BuildConfig.FLAVOR, false, 0));
        }
    }

    public final void a(List<Font> list) {
        if (!(list == null || list.isEmpty())) {
            HashSet hashSet = new HashSet();
            for (Font font : list) {
                if (!TextUtils.isEmpty(font.f2630a)) {
                    hashSet.add(font.toString());
                }
            }
            this.p.edit().putStringSet("font_cache_key", hashSet).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArrayList<Font> b() {
        HashSet hashSet = new HashSet(this.p.getStringSet("font_cache_key", new HashSet()));
        ArrayList<Font> arrayList = new ArrayList<>();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(new Font((String) it.next()));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public final void c() {
        synchronized (this.i) {
            this.i.clear();
        }
    }

    public final void d() {
        new AnonymousClass1().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
