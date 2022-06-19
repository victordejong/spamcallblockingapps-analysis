package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13363ak;
import com.google.android.gms.measurement.p363a.C13849a;
import com.google.firebase.C15580a;
import com.google.firebase.C15601b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.analytics.connector.internal.C15596b;
import com.google.firebase.analytics.connector.internal.C15598d;
import com.google.firebase.analytics.connector.internal.C15600f;
import com.google.firebase.p389b.AbstractC15609d;
import com.google.firebase.p389b.C15606a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.firebase.analytics.connector.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/b.class */
public class C15591b implements AbstractC15587a {

    /* renamed from: c */
    private static volatile AbstractC15587a f55949c;

    /* renamed from: a */
    final C13849a f55950a;

    /* renamed from: b */
    final Map<String, Object> f55951b = new ConcurrentHashMap();

    C15591b(C13849a c13849a) {
        C12045o.m19162a(c13849a);
        this.f55950a = c13849a;
    }

    /* renamed from: a */
    public static AbstractC15587a m8601a(C15601b c15601b, Context context, AbstractC15609d abstractC15609d) {
        C12045o.m19162a(c15601b);
        C12045o.m19162a(context);
        C12045o.m19162a(abstractC15609d);
        C12045o.m19162a(context.getApplicationContext());
        if (f55949c == null) {
            synchronized (C15591b.class) {
                try {
                    if (f55949c == null) {
                        Bundle bundle = new Bundle(1);
                        if (c15601b.m8571f()) {
                            abstractC15609d.mo8505a(C15580a.class, ExecutorC15593c.f55954a, C15594d.f55955a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", c15601b.m8572e());
                        }
                        f55949c = new C15591b(C13363ak.m13314a(context, null, null, null, bundle).f50599c);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f55949c;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m8602a(C15606a c15606a) {
        boolean z = ((C15580a) c15606a.f55989b).f55915a;
        synchronized (C15591b.class) {
            try {
                ((C15591b) C12045o.m19162a(f55949c)).f55950a.f51184a.m13296a(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final AbstractC15587a.AbstractC15588a mo8599a(final String str, AbstractC15587a.AbstractC15589b abstractC15589b) {
        C12045o.m19162a(abstractC15589b);
        if (!C15596b.m8592a(str)) {
            return null;
        }
        if (!str.isEmpty() && this.f55951b.containsKey(str) && this.f55951b.get(str) != null) {
            return null;
        }
        C13849a c13849a = this.f55950a;
        C15598d c15598d = "fiam".equals(str) ? new C15598d(c13849a, abstractC15589b) : ("crash".equals(str) || "clx".equals(str)) ? new C15600f(c13849a, abstractC15589b) : null;
        if (c15598d == null) {
            return null;
        }
        this.f55951b.put(str, c15598d);
        return new AbstractC15587a.AbstractC15588a() { // from class: com.google.firebase.analytics.connector.b.1
        };
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final List<AbstractC15587a.C15590c> mo8598a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f55950a.m12132a(str, str2)) {
            arrayList.add(C15596b.m8594a(bundle));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final Map<String, Object> mo8604a() {
        return this.f55950a.m12129a((String) null, (String) null, false);
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final void mo8603a(AbstractC15587a.C15590c c15590c) {
        if (!C15596b.m8593a(c15590c)) {
            return;
        }
        this.f55950a.m12135a(C15596b.m8588b(c15590c));
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final void mo8600a(String str) {
        this.f55950a.m12128b(str, null, null);
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final void mo8597a(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (C15596b.m8592a(str) && C15596b.m8591a(str2, bundle2) && C15596b.m8589a(str, str2, bundle2)) {
            C15596b.m8586b(str, str2, bundle2);
            this.f55950a.m12131a(str, str2, bundle2);
        }
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: a */
    public final void mo8596a(String str, String str2, Object obj) {
        if (C15596b.m8592a(str) && C15596b.m8590a(str, str2)) {
            this.f55950a.m12130a(str, str2, obj);
        }
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a
    /* renamed from: b */
    public final int mo8595b(String str) {
        return this.f55950a.m12133a(str);
    }
}
