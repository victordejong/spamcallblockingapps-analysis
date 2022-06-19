package com.facebook.internal.p108a.p110b;

import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.internal.p108a.C2012c;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.facebook.internal.a.b.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a/b/b.class */
public final class C2008b {
    /* renamed from: a */
    public static void m15668a() {
        if (C2095j.m15352p()) {
            m15666b();
        }
    }

    /* renamed from: a */
    public static void m15667a(String str) {
        try {
            new C2007a(str).m15671b();
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public static void m15666b() {
        File[] m15665c = m15665c();
        final ArrayList arrayList = new ArrayList();
        for (File file : m15665c) {
            C2007a c2007a = new C2007a(file);
            if (c2007a.m15673a()) {
                arrayList.add(c2007a);
            }
        }
        Collections.sort(arrayList, new Comparator<C2007a>() { // from class: com.facebook.internal.a.b.b.1
            /* renamed from: a */
            public int compare(C2007a c2007a2, C2007a c2007a3) {
                return c2007a2.m15672a(c2007a3);
            }
        });
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < arrayList.size() && i < 1000; i++) {
            jSONArray.put(arrayList.get(i));
        }
        C2012c.m15660a("error_reports", jSONArray, new C2102k.AbstractC2108b() { // from class: com.facebook.internal.a.b.b.2
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                try {
                    if (c2194n.m14987a() != null || !c2194n.m14980b().getBoolean("success")) {
                        return;
                    }
                    for (int i2 = 0; arrayList.size() > i2; i2++) {
                        ((C2007a) arrayList.get(i2)).m15670c();
                    }
                } catch (JSONException e) {
                }
            }
        });
    }

    /* renamed from: c */
    public static File[] m15665c() {
        File m15657b = C2012c.m15657b();
        return m15657b == null ? new File[0] : m15657b.listFiles(new FilenameFilter() { // from class: com.facebook.internal.a.b.b.3
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.matches(String.format("^%s[0-9]+.json$", "error_log_"));
            }
        });
    }
}
