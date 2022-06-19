package com.facebook.internal.p299b.p302c;

import com.appsflyer.internal.referrer.Payload;
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.GraphRequest;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.C10259d;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18418l;
import org.json.JSONArray;
import org.json.JSONException;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010\u000e\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;", "", "()V", "MAX_ERROR_REPORT_NUM", "", "enable", "", "listErrorReportFiles", "", "Ljava/io/File;", "()[Ljava/io/File;", "save", "msg", "", "sendErrorReports", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.c.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b.class */
public final class C10255b {

    /* renamed from: a */
    public static final C10255b f33762a = new C10255b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "name", "", "accept"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b$a.class */
    public static final class C10256a implements FilenameFilter {

        /* renamed from: a */
        public static final C10256a f33763a = new C10256a();

        C10256a() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String name) {
            C18524p.m3843b(name, "name");
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"error_log_"}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            return new C18418l(format).m3986a(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "o1", "Lcom/facebook/internal/instrument/errorreport/ErrorReportData;", "kotlin.jvm.PlatformType", "o2", "compare"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c.b$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b$b.class */
    public static final class C10257b<T> implements Comparator<C10253a> {

        /* renamed from: a */
        public static final C10257b f33764a = new C10257b();

        C10257b() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(C10253a c10253a, C10253a c10253a2) {
            C10253a data = c10253a2;
            C18524p.m3843b(data, "o2");
            C18524p.m3840d(data, "data");
            Long l = c10253a.f33760b;
            if (l != null) {
                long longValue = l.longValue();
                Long l2 = data.f33760b;
                if (l2 == null) {
                    return 1;
                }
                return (l2.longValue() > longValue ? 1 : (l2.longValue() == longValue ? 0 : -1));
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c.b$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/b$c.class */
    public static final class C10258c implements GraphRequest.AbstractC9933b {

        /* renamed from: a */
        final /* synthetic */ ArrayList f33765a;

        C10258c(ArrayList arrayList) {
            this.f33765a = arrayList;
        }

        @Override // com.facebook.GraphRequest.AbstractC9933b
        /* renamed from: a */
        public final void mo22725a(C10351j response) {
            try {
                C18524p.m3843b(response, "response");
                if (response.m22936a() != null || !response.m22932b().getBoolean("success")) {
                    return;
                }
                for (C10253a c10253a : this.f33765a) {
                    C10259d.m23093b(c10253a.f33759a);
                }
            } catch (JSONException e) {
            }
        }
    }

    private C10255b() {
    }

    /* renamed from: a */
    public static final void m23101a() {
        File[] fileArr;
        if (!C10181g.m23283p() || C10213ae.m23186h()) {
            return;
        }
        File m23091c = C10259d.m23091c();
        if (m23091c == null) {
            fileArr = new File[0];
        } else {
            fileArr = m23091c.listFiles(C10256a.f33763a);
            C18524p.m3843b(fileArr, "reportDir.listFiles { di…OR_REPORT_PREFIX)))\n    }");
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArr) {
            C10253a c10253a = new C10253a(file);
            if (c10253a.m23103a()) {
                arrayList.add(c10253a);
            }
        }
        C18282n.m4161a((List) arrayList, (Comparator) C10257b.f33764a);
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < arrayList.size() && i < 1000; i++) {
            jSONArray.put(arrayList.get(i));
        }
        C10259d.m23096a("error_reports", jSONArray, new C10258c(arrayList));
    }

    /* renamed from: a */
    public static final void m23100a(String str) {
        try {
            C10253a c10253a = new C10253a(str);
            if (!c10253a.m23103a()) {
                return;
            }
            C10259d.m23097a(c10253a.f33759a, c10253a.toString());
        } catch (Exception e) {
        }
    }
}
