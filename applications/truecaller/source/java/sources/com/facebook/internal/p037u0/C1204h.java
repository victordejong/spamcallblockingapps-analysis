package com.facebook.internal.p037u0;

import android.content.SharedPreferences;
import com.facebook.internal.C1115a0;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONArray;
import p193e.p1538j.C23228f0;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\r\u0010\n\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u000bJ\r\u0010\f\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/instrument/ExceptionAnalyzer;", "", "()V", "enabled", "", "enable", "", "execute", "e", "", "isDebug", "isDebug$facebook_core_release", "sendExceptionAnalysisReports", "sendExceptionAnalysisReports$facebook_core_release", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/h.class */
public final class C1204h {

    /* renamed from: a */
    public static boolean f3265a;

    /* renamed from: a */
    public static final void m41638a(Throwable th) {
        Map<C1115a0.EnumC1117b, String[]> map;
        C1115a0.EnumC1117b enumC1117b;
        C1115a0.EnumC1117b enumC1117b2 = C1115a0.EnumC1117b.Unknown;
        if (!f3265a || th == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        StackTraceElement[] stackTrace = th.getStackTrace();
        l.d(stackTrace, "e.stackTrace");
        for (StackTraceElement stackTraceElement : stackTrace) {
            C1115a0 c1115a0 = C1115a0.f3048a;
            String className = stackTraceElement.getClassName();
            l.d(className, "it.className");
            l.e(className, "className");
            synchronized (c1115a0) {
                map = C1115a0.f3049b;
                if (map.isEmpty()) {
                    map.put(C1115a0.EnumC1117b.AAM, new String[]{"com.facebook.appevents.aam."});
                    map.put(C1115a0.EnumC1117b.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
                    map.put(C1115a0.EnumC1117b.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
                    map.put(C1115a0.EnumC1117b.AnrReport, new String[]{"com.facebook.internal.instrument.anrreport."});
                    map.put(C1115a0.EnumC1117b.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
                    map.put(C1115a0.EnumC1117b.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
                    map.put(C1115a0.EnumC1117b.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
                    map.put(C1115a0.EnumC1117b.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
                    map.put(C1115a0.EnumC1117b.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
                    map.put(C1115a0.EnumC1117b.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
                    map.put(C1115a0.EnumC1117b.IapLogging, new String[]{"com.facebook.appevents.iap."});
                    map.put(C1115a0.EnumC1117b.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
                }
            }
            Iterator<Map.Entry<C1115a0.EnumC1117b, String[]>> it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    enumC1117b = enumC1117b2;
                    break;
                }
                Map.Entry<C1115a0.EnumC1117b, String[]> next = it.next();
                enumC1117b = next.getKey();
                String[] value = next.getValue();
                int length = value.length;
                int i = 0;
                while (i < length) {
                    i++;
                    if (r.y(className, value[i], false, 2)) {
                        break;
                    }
                }
            }
            if (enumC1117b != enumC1117b2) {
                C1115a0 c1115a02 = C1115a0.f3048a;
                l.e(enumC1117b, "feature");
                C23228f0 c23228f0 = C23228f0.f64291a;
                SharedPreferences.Editor edit = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).edit();
                String m41750a = enumC1117b.m41750a();
                C23228f0 c23228f02 = C23228f0.f64291a;
                edit.putString(m41750a, "13.0.0").apply();
                hashSet.add(enumC1117b.toString());
            }
        }
        C23228f0 c23228f03 = C23228f0.f64291a;
        if (!C23228f0.m7352c() || !(!hashSet.isEmpty())) {
            return;
        }
        JSONArray jSONArray = new JSONArray((Collection) hashSet);
        l.e(jSONArray, "features");
        new C1205i(jSONArray, (f) null).m41635c();
    }
}
