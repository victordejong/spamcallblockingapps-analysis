package com.google.android.gms.tagmanager;

import android.content.Context;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.j;
import com.google.android.gms.tagmanager.bj;
import com.google.android.gms.tagmanager.dh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    bx f4263a;

    /* renamed from: b  reason: collision with root package name */
    volatile long f4264b;
    volatile String c;
    private final Context d;
    private final String e;
    private final com.google.android.gms.tagmanager.c f;
    private Map<String, AbstractC0130a> g;
    private Map<String, b> h;

    /* renamed from: com.google.android.gms.tagmanager.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/a$a.class */
    public interface AbstractC0130a {
        Object a();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/a$b.class */
    public interface b {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/a$c.class */
    public final class c implements dh.a {
        private c() {
        }

        /* synthetic */ c(a aVar, byte b2) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.dh.a
        public final Object a(String str) {
            AbstractC0130a b2 = a.this.b(str);
            return b2 == null ? null : b2.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/a$d.class */
    public final class d implements dh.a {
        private d() {
        }

        /* synthetic */ d(a aVar, byte b2) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.dh.a
        public final Object a(String str) {
            a.this.c(str);
            return cn.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, com.google.android.gms.tagmanager.c cVar, String str, long j, j.C0127j jVar) {
        this.g = new HashMap();
        this.h = new HashMap();
        this.c = BuildConfig.FLAVOR;
        this.d = context;
        this.f = cVar;
        this.e = str;
        this.f4264b = j;
        j.f fVar = jVar.f4209b;
        if (fVar == null) {
            throw new NullPointerException();
        }
        try {
            a(com.google.android.gms.internal.c.a(fVar));
        } catch (c.g e) {
            String valueOf = String.valueOf(fVar);
            String valueOf2 = String.valueOf(e.toString());
            an.a(new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length()).append("Not loading resource: ").append(valueOf).append(" because it is invalid: ").append(valueOf2).toString());
        }
        if (jVar.f4208a != null) {
            a(jVar.f4208a);
        }
    }

    public a(Context context, com.google.android.gms.tagmanager.c cVar, String str, c.C0126c cVar2) {
        this.g = new HashMap();
        this.h = new HashMap();
        this.c = BuildConfig.FLAVOR;
        this.d = context;
        this.f = cVar;
        this.e = str;
        this.f4264b = 0L;
        a(cVar2);
    }

    private void a(c.C0126c cVar) {
        this.c = cVar.c;
        String str = this.c;
        bj.a().f4303a.equals(bj.a.CONTAINER_DEBUG);
        a(new bx(this.d, cVar, this.f, new c(this, (byte) 0), new d(this, (byte) 0), new av()));
        if (d("_gtm.loadEventEnabled")) {
            com.google.android.gms.tagmanager.c cVar2 = this.f;
            HashMap hashMap = new HashMap(com.google.android.gms.tagmanager.c.a("gtm.id", this.e));
            hashMap.put("event", "gtm.load");
            cVar2.a(hashMap);
        }
    }

    private void a(bx bxVar) {
        synchronized (this) {
            this.f4263a = bxVar;
        }
    }

    private void a(j.i[] iVarArr) {
        ArrayList arrayList = new ArrayList();
        for (j.i iVar : iVarArr) {
            arrayList.add(iVar);
        }
        a().a(arrayList);
    }

    private boolean d(String str) {
        boolean booleanValue;
        bx a2 = a();
        if (a2 == null) {
            an.a("getBoolean called for closed container.");
            booleanValue = cn.c().booleanValue();
        } else {
            try {
                booleanValue = cn.d(a2.b(str).f4293a).booleanValue();
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                an.a(new StringBuilder(String.valueOf(valueOf).length() + 66).append("Calling getBoolean() threw an exception: ").append(valueOf).append(" Returning default value.").toString());
                booleanValue = cn.c().booleanValue();
            }
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final bx a() {
        bx bxVar;
        synchronized (this) {
            bxVar = this.f4263a;
        }
        return bxVar;
    }

    public final String a(String str) {
        String e;
        bx a2 = a();
        if (a2 == null) {
            an.a("getString called for closed container.");
            e = cn.e();
        } else {
            try {
                e = cn.a(a2.b(str).f4293a);
            } catch (Exception e2) {
                String valueOf = String.valueOf(e2.getMessage());
                an.a(new StringBuilder(String.valueOf(valueOf).length() + 65).append("Calling getString() threw an exception: ").append(valueOf).append(" Returning default value.").toString());
                e = cn.e();
            }
        }
        return e;
    }

    final AbstractC0130a b(String str) {
        AbstractC0130a aVar;
        synchronized (this.g) {
            aVar = this.g.get(str);
        }
        return aVar;
    }

    public final b c(String str) {
        b bVar;
        synchronized (this.h) {
            bVar = this.h.get(str);
        }
        return bVar;
    }
}
