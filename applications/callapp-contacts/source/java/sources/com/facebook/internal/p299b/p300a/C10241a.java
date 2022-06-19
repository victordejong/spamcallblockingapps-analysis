package com.facebook.internal.p299b.p300a;

import android.util.Log;
import com.appsflyer.internal.referrer.Payload;
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.GraphRequest;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.C10239a;
import com.facebook.internal.p299b.C10245b;
import com.facebook.internal.p299b.C10259d;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import org.json.JSONArray;
import org.json.JSONException;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0007\u0018�� \n2\u00020\u0001:\u0001\nB\u0011\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "Ljava/lang/Thread$UncaughtExceptionHandler;", "previousHandler", "(Ljava/lang/Thread$UncaughtExceptionHandler;)V", "uncaughtException", "", "t", "Ljava/lang/Thread;", "e", "", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a.class */
public final class C10241a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public static final C10242a f33738a = new C10242a(null);

    /* renamed from: c */
    private static final String f33739c = C10241a.class.getCanonicalName();

    /* renamed from: d */
    private static C10241a f33740d;

    /* renamed from: b */
    private final Thread.UncaughtExceptionHandler f33741b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;", "", "()V", "MAX_CRASH_REPORT_NUM", "", "TAG", "", "instance", "Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "enable", "", "sendExceptionReports", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a$a.class */
    public static final class C10242a {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, m4297k = 3, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.b.a.a$a$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a$a$a.class */
        public static final class C10243a implements GraphRequest.AbstractC9933b {

            /* renamed from: a */
            final /* synthetic */ List f33742a;

            C10243a(List list) {
                this.f33742a = list;
            }

            @Override // com.facebook.GraphRequest.AbstractC9933b
            /* renamed from: a */
            public final void mo22725a(C10351j response) {
                try {
                    C18524p.m3843b(response, "response");
                    if (response.m22936a() != null || !response.m22932b().getBoolean("success")) {
                        return;
                    }
                    for (C10245b c10245b : this.f33742a) {
                        c10245b.m23113c();
                    }
                } catch (JSONException e) {
                }
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "o1", "Lcom/facebook/internal/instrument/InstrumentData;", "kotlin.jvm.PlatformType", "o2", "compare"}, m4297k = 3, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.b.a.a$a$b */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a$a$b.class */
        public static final class C10244b<T> implements Comparator<C10245b> {

            /* renamed from: a */
            public static final C10244b f33743a = new C10244b();

            C10244b() {
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(C10245b c10245b, C10245b c10245b2) {
                return c10245b.m23116a(c10245b2);
            }
        }

        private C10242a() {
        }

        public /* synthetic */ C10242a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m23119a() {
            synchronized (this) {
                if (C10181g.m23283p() && !C10213ae.m23186h()) {
                    File[] m23094b = C10259d.m23094b();
                    ArrayList arrayList = new ArrayList(m23094b.length);
                    for (File file : m23094b) {
                        arrayList.add(C10245b.C10247a.m23109a(file));
                    }
                    ArrayList arrayList2 = arrayList;
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : arrayList2) {
                        C10245b it2 = (C10245b) obj;
                        C18524p.m3843b(it2, "it");
                        if (it2.m23117a()) {
                            arrayList3.add(obj);
                        }
                    }
                    List a = C18282n.m4145a((Iterable) arrayList3, (Comparator) C10244b.f33743a);
                    JSONArray jSONArray = new JSONArray();
                    Iterator<Integer> it3 = C18363d.m4052b(0, Math.min(a.size(), 5)).iterator();
                    while (it3.hasNext()) {
                        jSONArray.put(a.get(((AbstractC18245ag) it3).mo4059a()));
                    }
                    C10259d.m23096a("crash_reports", jSONArray, new C10243a(a));
                }
                if (C10241a.f33740d != null) {
                    Log.w(C10241a.f33739c, "Already enabled!");
                    return;
                }
                C10241a.f33740d = new C10241a(Thread.getDefaultUncaughtExceptionHandler(), null);
                Thread.setDefaultUncaughtExceptionHandler(C10241a.f33740d);
            }
        }
    }

    private C10241a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f33741b = uncaughtExceptionHandler;
    }

    public /* synthetic */ C10241a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, DefaultConstructorMarker defaultConstructorMarker) {
        this(uncaughtExceptionHandler);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread t, Throwable e) {
        C18524p.m3840d(t, "t");
        C18524p.m3840d(e, "e");
        if (C10259d.m23090c(e)) {
            C10239a.m23125a(e);
            C10245b.C10247a.m23107a(e, C10245b.EnumC10248b.CrashReport).m23115b();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f33741b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t, e);
        }
    }
}
