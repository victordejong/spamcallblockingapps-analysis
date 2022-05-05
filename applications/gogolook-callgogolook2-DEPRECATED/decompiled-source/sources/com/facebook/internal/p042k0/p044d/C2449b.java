package com.facebook.internal.p042k0.p044d;

import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.internal.p042k0.C2442b;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.json.JSONArray;
import org.json.JSONException;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.k0.d.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/d/b.class */
public final class C2449b {

    /* renamed from: com.facebook.internal.k0.d.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/d/b$a.class */
    public static final class C2450a implements Comparator<C2448a> {
        /* renamed from: a */
        public int compare(C2448a aVar, C2448a aVar2) {
            return aVar.m34698a(aVar2);
        }
    }

    /* renamed from: com.facebook.internal.k0.d.b$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/d/b$b.class */
    public static final class C2451b implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f3087a;

        public C2451b(ArrayList arrayList) {
            this.f3087a = arrayList;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            try {
                if (sVar.m23705a() == null && sVar.m23698b().getBoolean("success")) {
                    for (int i = 0; this.f3087a.size() > i; i++) {
                        ((C2448a) this.f3087a.get(i)).m34699a();
                    }
                }
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: com.facebook.internal.k0.d.b$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/d/b$c.class */
    public static final class C2452c implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.matches(String.format("^%s[0-9]+.json$", "error_log_"));
        }
    }

    /* renamed from: a */
    public static void m34694a() {
        if (C6135n.m23742i()) {
            m34691c();
        }
    }

    /* renamed from: a */
    public static void m34693a(String str) {
        try {
            new C2448a(str).m34695d();
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public static File[] m34692b() {
        File a = C2442b.m34717a();
        return a == null ? new File[0] : a.listFiles(new C2452c());
    }

    /* renamed from: c */
    public static void m34691c() {
        File[] b = m34692b();
        ArrayList arrayList = new ArrayList();
        for (File file : b) {
            C2448a aVar = new C2448a(file);
            if (aVar.m34696c()) {
                arrayList.add(aVar);
            }
        }
        Collections.sort(arrayList, new C2450a());
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < arrayList.size() && i < 1000; i++) {
            jSONArray.put(arrayList.get(i));
        }
        C2442b.m34714a("error_reports", jSONArray, new C2451b(arrayList));
    }
}
