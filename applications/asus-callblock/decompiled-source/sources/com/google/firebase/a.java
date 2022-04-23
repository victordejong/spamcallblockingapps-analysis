package com.google.firebase;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.google.android.gms.common.a.k;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.internal.l;
import com.google.android.gms.internal.m;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/firebase/a.class */
public class a {
    private final Context g;
    private final String h;
    private final b i;
    private final AtomicBoolean j = new AtomicBoolean(true);
    private final AtomicBoolean k = new AtomicBoolean();
    private final List<Object> l = new CopyOnWriteArrayList();
    private final List<Object> m = new CopyOnWriteArrayList();
    private final List<Object> n = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f4432b = Arrays.asList("com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId");
    private static final List<String> c = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> d = Arrays.asList("com.google.android.gms.measurement.AppMeasurement");
    private static final Set<String> e = Collections.emptySet();
    private static final Object f = new Object();

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, a> f4431a = new android.support.v4.b.a();

    private a(Context context, String str, b bVar) {
        this.g = (Context) b.a(context);
        this.h = b.a(str);
        this.i = (b) b.a(bVar);
    }

    public static a a(Context context) {
        h hVar = new h(context);
        String a2 = hVar.a("google_app_id");
        b bVar = TextUtils.isEmpty(a2) ? null : new b(a2, hVar.a("google_api_key"), hVar.a("firebase_database_url"), hVar.a("ga_trackingId"), hVar.a("gcm_defaultSenderId"), hVar.a("google_storage_bucket"));
        return bVar == null ? null : a(context, bVar, "[DEFAULT]");
    }

    private static a a(Context context, b bVar, String str) {
        a aVar;
        m.a();
        if (k.a(14) && (context.getApplicationContext() instanceof Application)) {
            l.a((Application) context.getApplicationContext());
        }
        String trim = str.trim();
        Context applicationContext = context.getApplicationContext();
        synchronized (f) {
            b.a(!f4431a.containsKey(trim), new StringBuilder(String.valueOf(trim).length() + 33).append("FirebaseApp name ").append(trim).append(" already exists!").toString());
            b.a(applicationContext, "Application context cannot be null.");
            aVar = new a(applicationContext, trim, bVar);
            f4431a.put(trim, aVar);
        }
        m.b();
        a(a.class, aVar, f4432b);
        if ("[DEFAULT]".equals(aVar.b())) {
            a(a.class, aVar, c);
            aVar.c();
            a(Context.class, aVar.g, d);
        }
        return aVar;
    }

    public static void a() {
        synchronized (f) {
            Iterator it = new ArrayList(f4431a.values()).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.j.get()) {
                    aVar.d();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void a(Class<T> cls, T t, Iterable<String> iterable) {
        for (String str : iterable) {
            try {
                Class<?> cls2 = Class.forName(str);
                Method method = cls2.getMethod("getInstance", cls);
                if ((method.getModifiers() & 9) == 9) {
                    method.invoke(null, t);
                }
                String valueOf = String.valueOf(cls2);
                Log.d("FirebaseApp", new StringBuilder(String.valueOf(valueOf).length() + 13).append("Initialized ").append(valueOf).append(".").toString());
            } catch (ClassNotFoundException e2) {
                if (e.contains(str)) {
                    throw new IllegalStateException(String.valueOf(str).concat(" is missing, but is required. Check if it has been removed by Proguard."));
                }
                Log.d("FirebaseApp", String.valueOf(str).concat(" is not linked. Skipping initialization."));
            } catch (IllegalAccessException e3) {
                String valueOf2 = String.valueOf(str);
                Log.wtf("FirebaseApp", valueOf2.length() != 0 ? "Failed to initialize ".concat(valueOf2) : new String("Failed to initialize "), e3);
            } catch (NoSuchMethodException e4) {
                throw new IllegalStateException(String.valueOf(str).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
            } catch (InvocationTargetException e5) {
                Log.wtf("FirebaseApp", "Firebase API initialization failure.", e5);
            }
        }
    }

    private String b() {
        c();
        return this.h;
    }

    private void c() {
        b.a(!this.k.get(), "FirebaseApp was deleted");
    }

    private void d() {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator<Object> it = this.m.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public boolean equals(Object obj) {
        return !(obj instanceof a) ? false : this.h.equals(((a) obj).b());
    }

    public int hashCode() {
        return this.h.hashCode();
    }

    public String toString() {
        return ae.a(this).a(ContactDetailCallogActivity.EXTRA_NAME, this.h).a("options", this.i).toString();
    }
}
