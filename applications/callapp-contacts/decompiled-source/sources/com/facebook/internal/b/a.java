package com.facebook.internal.b;

import com.appsflyer.internal.referrer.Payload;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.i;
import com.facebook.internal.ae;
import com.facebook.internal.b.b;
import com.facebook.internal.l;
import com.facebook.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\b\u0010\n\u001a\u00020\u0004H\u0007J\b\u0010\u000b\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/internal/instrument/ExceptionAnalyzer;", "", "()V", "enabled", "", "enable", "", "execute", "e", "", "isDebug", "sendExceptionAnalysisReports", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f19862a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f19863b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, k = 3, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a$a.class */
    static final class C0394a implements GraphRequest.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f19868a;

        C0394a(b bVar) {
            this.f19868a = bVar;
        }

        @Override // com.facebook.GraphRequest.b
        public final void a(j response) {
            try {
                p.b(response, "response");
                if (response.a() == null && response.b().getBoolean("success")) {
                    this.f19868a.c();
                }
            } catch (JSONException e) {
            }
        }
    }

    private a() {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00c1 -> B:13:0x00a2). Please submit an issue!!! */
    public static final void a() {
        f19863b = true;
        if (g.p() && !ae.h()) {
            File[] a2 = d.a();
            ArrayList arrayList = new ArrayList();
            for (File file : a2) {
                b instrumentData = b.a.a(file);
                p.b(instrumentData, "instrumentData");
                if (instrumentData.a()) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("crash_shield", instrumentData.toString());
                        ag agVar = ag.f36785a;
                        String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{g.m()}, 1));
                        p.b(format, "java.lang.String.format(format, *args)");
                        GraphRequest request = GraphRequest.a((AccessToken) null, format, jSONObject, new C0394a(instrumentData));
                        p.b(request, "request");
                        arrayList.add(request);
                    } catch (JSONException e) {
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                new i(arrayList).a();
            }
        }
    }

    public static final void a(Throwable th) {
        if (f19863b && th != null) {
            HashSet hashSet = new HashSet();
            StackTraceElement[] stackTrace = th.getStackTrace();
            p.b(stackTrace, "e.stackTrace");
            for (StackTraceElement it2 : stackTrace) {
                p.b(it2, "it");
                String className = it2.getClassName();
                p.b(className, "it.className");
                l.b a2 = l.a(className);
                if (a2 != l.b.Unknown) {
                    l.b(a2);
                    hashSet.add(a2.toString());
                }
            }
            if (g.p()) {
                HashSet hashSet2 = hashSet;
                if (!hashSet2.isEmpty()) {
                    b.a.a(new JSONArray((Collection) hashSet2)).b();
                }
            }
        }
    }
}
