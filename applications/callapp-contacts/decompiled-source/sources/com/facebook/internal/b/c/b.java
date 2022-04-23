package com.facebook.internal.b.c;

import com.appsflyer.internal.referrer.Payload;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.b.d;
import com.facebook.j;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.h.l;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010\u000e\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;", "", "()V", "MAX_ERROR_REPORT_NUM", "", "enable", "", "listErrorReportFiles", "", "Ljava/io/File;", "()[Ljava/io/File;", "save", "msg", "", "sendErrorReports", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f19889a = new b();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "name", "", "accept"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b$a.class */
    static final class a implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        public static final a f19891a = new a();

        a() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String name) {
            p.b(name, "name");
            ag agVar = ag.f36785a;
            String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"error_log_"}, 1));
            p.b(format, "java.lang.String.format(format, *args)");
            return new l(format).a(name);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "o1", "Lcom/facebook/internal/instrument/errorreport/ErrorReportData;", "kotlin.jvm.PlatformType", "o2", "compare"}, k = 3, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b$b.class */
    static final class C0400b<T> implements Comparator<com.facebook.internal.b.c.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0400b f19892a = new C0400b();

        C0400b() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(com.facebook.internal.b.c.a aVar, com.facebook.internal.b.c.a aVar2) {
            com.facebook.internal.b.c.a data = aVar2;
            p.b(data, "o2");
            p.d(data, "data");
            Long l = aVar.f19886b;
            if (l == null) {
                return -1;
            }
            long longValue = l.longValue();
            Long l2 = data.f19886b;
            if (l2 != null) {
                return (l2.longValue() > longValue ? 1 : (l2.longValue() == longValue ? 0 : -1));
            }
            return 1;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b$c.class */
    static final class c implements GraphRequest.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f19893a;

        c(ArrayList arrayList) {
            this.f19893a = arrayList;
        }

        @Override // com.facebook.GraphRequest.b
        public final void a(j response) {
            try {
                p.b(response, "response");
                if (response.a() == null && response.b().getBoolean("success")) {
                    for (com.facebook.internal.b.c.a aVar : this.f19893a) {
                        d.b(aVar.f19885a);
                    }
                }
            } catch (JSONException e) {
            }
        }
    }

    private b() {
    }

    public static final void a() {
        File[] fileArr;
        if (g.p() && !ae.h()) {
            File c2 = d.c();
            if (c2 == null) {
                fileArr = new File[0];
            } else {
                fileArr = c2.listFiles(a.f19891a);
                p.b(fileArr, "reportDir.listFiles { di…OR_REPORT_PREFIX)))\n    }");
            }
            ArrayList arrayList = new ArrayList();
            for (File file : fileArr) {
                com.facebook.internal.b.c.a aVar = new com.facebook.internal.b.c.a(file);
                if (aVar.a()) {
                    arrayList.add(aVar);
                }
            }
            n.a((List) arrayList, (Comparator) C0400b.f19892a);
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < arrayList.size() && i < 1000; i++) {
                jSONArray.put(arrayList.get(i));
            }
            d.a("error_reports", jSONArray, new c(arrayList));
        }
    }

    public static final void a(String str) {
        try {
            com.facebook.internal.b.c.a aVar = new com.facebook.internal.b.c.a(str);
            if (aVar.a()) {
                d.a(aVar.f19885a, aVar.toString());
            }
        } catch (Exception e) {
        }
    }
}
