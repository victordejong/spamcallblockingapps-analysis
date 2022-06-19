package com.facebook.internal.p299b;

import com.appsflyer.internal.referrer.Payload;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.C10193i;
import com.facebook.C10351j;
import com.facebook.GraphRequest;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10291l;
import com.facebook.internal.p299b.C10245b;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\b\u0010\n\u001a\u00020\u0004H\u0007J\b\u0010\u000b\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lcom/facebook/internal/instrument/ExceptionAnalyzer;", "", "()V", "enabled", "", "enable", "", "execute", "e", "", "isDebug", "sendExceptionAnalysisReports", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a.class */
public final class C10239a {

    /* renamed from: a */
    public static final C10239a f33735a = new C10239a();

    /* renamed from: b */
    private static boolean f33736b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a$a.class */
    public static final class C10240a implements GraphRequest.AbstractC9933b {

        /* renamed from: a */
        final /* synthetic */ C10245b f33737a;

        C10240a(C10245b c10245b) {
            this.f33737a = c10245b;
        }

        @Override // com.facebook.GraphRequest.AbstractC9933b
        /* renamed from: a */
        public final void mo22725a(C10351j response) {
            try {
                C18524p.m3843b(response, "response");
                if (response.m22936a() != null || !response.m22932b().getBoolean("success")) {
                    return;
                }
                this.f33737a.m23113c();
            } catch (JSONException e) {
            }
        }
    }

    private C10239a() {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00c1 -> B:13:0x00a2). Please submit an issue!!! */
    /* renamed from: a */
    public static final void m23128a() {
        f33736b = true;
        if (!C10181g.m23283p() || C10213ae.m23186h()) {
            return;
        }
        File[] m23099a = C10259d.m23099a();
        ArrayList arrayList = new ArrayList();
        for (File file : m23099a) {
            C10245b instrumentData = C10245b.C10247a.m23109a(file);
            C18524p.m3843b(instrumentData, "instrumentData");
            if (instrumentData.m23117a()) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crash_shield", instrumentData.toString());
                    C18500ag c18500ag = C18500ag.f63594a;
                    String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{C10181g.m23286m()}, 1));
                    C18524p.m3843b(format, "java.lang.String.format(format, *args)");
                    GraphRequest request = GraphRequest.m23799a((AccessToken) null, format, jSONObject, new C10240a(instrumentData));
                    C18524p.m3843b(request, "request");
                    arrayList.add(request);
                } catch (JSONException e) {
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        new C10193i(arrayList).m23274a();
    }

    /* renamed from: a */
    public static final void m23125a(Throwable th) {
        if (!f33736b || th == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        StackTraceElement[] stackTrace = th.getStackTrace();
        C18524p.m3843b(stackTrace, "e.stackTrace");
        for (StackTraceElement it2 : stackTrace) {
            C18524p.m3843b(it2, "it");
            String className = it2.getClassName();
            C18524p.m3843b(className, "it.className");
            C10291l.EnumC10293b m23049a = C10291l.m23049a(className);
            if (m23049a != C10291l.EnumC10293b.Unknown) {
                C10291l.m23048b(m23049a);
                hashSet.add(m23049a.toString());
            }
        }
        if (!C10181g.m23283p()) {
            return;
        }
        HashSet hashSet2 = hashSet;
        if (!(!hashSet2.isEmpty())) {
            return;
        }
        C10245b.C10247a.m23105a(new JSONArray((Collection) hashSet2)).m23115b();
    }
}
