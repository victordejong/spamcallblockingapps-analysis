package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.ak;
import com.google.android.gms.measurement.a.a;
import com.google.firebase.analytics.connector.a;
import com.google.firebase.analytics.connector.internal.f;
import com.google.firebase.b.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/b.class */
public class b implements a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f32189c;

    /* renamed from: a  reason: collision with root package name */
    final a f32190a;

    /* renamed from: b  reason: collision with root package name */
    final Map<String, Object> f32191b = new ConcurrentHashMap();

    b(a aVar) {
        o.a(aVar);
        this.f32190a = aVar;
    }

    public static a a(com.google.firebase.b bVar, Context context, d dVar) {
        o.a(bVar);
        o.a(context);
        o.a(dVar);
        o.a(context.getApplicationContext());
        if (f32189c == null) {
            synchronized (b.class) {
                try {
                    if (f32189c == null) {
                        Bundle bundle = new Bundle(1);
                        if (bVar.f()) {
                            dVar.a(com.google.firebase.a.class, c.f32194a, d.f32195a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", bVar.e());
                        }
                        f32189c = new b(ak.a(context, null, null, null, bundle).f28932c);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f32189c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(com.google.firebase.b.a aVar) {
        boolean z = ((com.google.firebase.a) aVar.f32215b).f32170a;
        synchronized (b.class) {
            try {
                ((b) o.a(f32189c)).f32190a.f29391a.a(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    public final a.AbstractC0513a a(final String str, a.b bVar) {
        o.a(bVar);
        if (!com.google.firebase.analytics.connector.internal.b.a(str)) {
            return null;
        }
        if (!str.isEmpty() && this.f32191b.containsKey(str) && this.f32191b.get(str) != null) {
            return null;
        }
        com.google.android.gms.measurement.a.a aVar = this.f32190a;
        Object dVar = "fiam".equals(str) ? new com.google.firebase.analytics.connector.internal.d(aVar, bVar) : ("crash".equals(str) || "clx".equals(str)) ? new f(aVar, bVar) : null;
        if (dVar == null) {
            return null;
        }
        this.f32191b.put(str, dVar);
        return new a.AbstractC0513a() { // from class: com.google.firebase.analytics.connector.b.1
        };
    }

    @Override // com.google.firebase.analytics.connector.a
    public final List<a.c> a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f32190a.a(str, str2)) {
            arrayList.add(com.google.firebase.analytics.connector.internal.b.a(bundle));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.a
    public final Map<String, Object> a() {
        return this.f32190a.a((String) null, (String) null, false);
    }

    @Override // com.google.firebase.analytics.connector.a
    public final void a(a.c cVar) {
        if (com.google.firebase.analytics.connector.internal.b.a(cVar)) {
            this.f32190a.a(com.google.firebase.analytics.connector.internal.b.b(cVar));
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    public final void a(String str) {
        this.f32190a.b(str, null, null);
    }

    @Override // com.google.firebase.analytics.connector.a
    public final void a(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.a(str2, bundle2) && com.google.firebase.analytics.connector.internal.b.a(str, str2, bundle2)) {
            com.google.firebase.analytics.connector.internal.b.b(str, str2, bundle2);
            this.f32190a.a(str, str2, bundle2);
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    public final void a(String str, String str2, Object obj) {
        if (com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.a(str, str2)) {
            this.f32190a.a(str, str2, obj);
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    public final int b(String str) {
        return this.f32190a.a(str);
    }
}
