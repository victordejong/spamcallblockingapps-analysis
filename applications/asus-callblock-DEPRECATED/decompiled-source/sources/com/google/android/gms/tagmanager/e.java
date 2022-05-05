package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import com.google.android.gms.tagmanager.c;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/e.class */
public class e {
    private static e g;

    /* renamed from: a  reason: collision with root package name */
    public final a f4402a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f4403b;
    public final c c;
    final cc d;
    final ConcurrentMap<dc, Boolean> e;
    public final dg f;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/e$a.class */
    public interface a {
        dd a(Context context, e eVar, String str, int i, dg dgVar);
    }

    private e(Context context, a aVar, c cVar, cc ccVar) {
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.f4403b = context.getApplicationContext();
        this.d = ccVar;
        this.f4402a = aVar;
        this.e = new ConcurrentHashMap();
        this.c = cVar;
        this.c.a(new c.b() { // from class: com.google.android.gms.tagmanager.e.1
            @Override // com.google.android.gms.tagmanager.c.b
            public final void a(Map<String, Object> map) {
                Object obj = map.get("event");
                if (obj != null) {
                    e.a(e.this, obj.toString());
                }
            }
        });
        this.c.a(new cb(this.f4403b));
        this.f = new dg();
        if (Build.VERSION.SDK_INT >= 14) {
            this.f4403b.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.google.android.gms.tagmanager.e.3
                @Override // android.content.ComponentCallbacks
                public final void onConfigurationChanged(Configuration configuration) {
                }

                @Override // android.content.ComponentCallbacks
                public final void onLowMemory() {
                }

                @Override // android.content.ComponentCallbacks2
                public final void onTrimMemory(int i) {
                    if (i == 20) {
                        e.this.d.a();
                    }
                }
            });
        }
    }

    public static e a(Context context) {
        e eVar;
        synchronized (e.class) {
            try {
                if (g == null) {
                    if (context == null) {
                        an.a("TagManager.getInstance requires non-null context.");
                        throw new NullPointerException();
                    }
                    g = new e(context, new a() { // from class: com.google.android.gms.tagmanager.e.2
                        @Override // com.google.android.gms.tagmanager.e.a
                        public final dd a(Context context2, e eVar2, String str, int i, dg dgVar) {
                            return new dd(context2, eVar2, str, i, dgVar);
                        }
                    }, new c(new dk(context)), cd.c());
                }
                eVar = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    static /* synthetic */ void a(e eVar, String str) {
        for (dc dcVar : eVar.e.keySet()) {
            dcVar.a(str);
        }
    }
}
