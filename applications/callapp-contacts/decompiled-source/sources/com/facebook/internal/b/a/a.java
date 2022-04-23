package com.facebook.internal.b.a;

import android.util.Log;
import com.appsflyer.internal.referrer.Payload;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.b.b;
import com.facebook.internal.b.d;
import com.facebook.j;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.ag;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0007\u0018�� \n2\u00020\u0001:\u0001\nB\u0011\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "Ljava/lang/Thread$UncaughtExceptionHandler;", "previousHandler", "(Ljava/lang/Thread$UncaughtExceptionHandler;)V", "uncaughtException", "", "t", "Ljava/lang/Thread;", "e", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a.class */
public final class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public static final C0395a f19864a = new C0395a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f19865c = a.class.getCanonicalName();

    /* renamed from: d  reason: collision with root package name */
    private static a f19866d;

    /* renamed from: b  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f19867b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;", "", "()V", "MAX_CRASH_REPORT_NUM", "", "TAG", "", "instance", "Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "enable", "", "sendExceptionReports", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a$a.class */
    public static final class C0395a {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, k = 3, mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.b.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a$a$a.class */
        public static final class C0396a implements GraphRequest.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f19869a;

            C0396a(List list) {
                this.f19869a = list;
            }

            @Override // com.facebook.GraphRequest.b
            public final void a(j response) {
                try {
                    p.b(response, "response");
                    if (response.a() == null && response.b().getBoolean("success")) {
                        for (com.facebook.internal.b.b bVar : this.f19869a) {
                            bVar.c();
                        }
                    }
                } catch (JSONException e) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "o1", "Lcom/facebook/internal/instrument/InstrumentData;", "kotlin.jvm.PlatformType", "o2", "compare"}, k = 3, mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.b.a.a$a$b */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/a/a$a$b.class */
        public static final class b<T> implements Comparator<com.facebook.internal.b.b> {

            /* renamed from: a  reason: collision with root package name */
            public static final b f19870a = new b();

            b() {
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(com.facebook.internal.b.b bVar, com.facebook.internal.b.b bVar2) {
                return bVar.a(bVar2);
            }
        }

        private C0395a() {
        }

        public /* synthetic */ C0395a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            synchronized (this) {
                if (g.p() && !ae.h()) {
                    File[] b2 = d.b();
                    ArrayList arrayList = new ArrayList(b2.length);
                    for (File file : b2) {
                        arrayList.add(b.a.a(file));
                    }
                    ArrayList arrayList2 = arrayList;
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : arrayList2) {
                        com.facebook.internal.b.b it2 = (com.facebook.internal.b.b) obj;
                        p.b(it2, "it");
                        if (it2.a()) {
                            arrayList3.add(obj);
                        }
                    }
                    List a2 = n.a((Iterable) arrayList3, (Comparator) b.f19870a);
                    JSONArray jSONArray = new JSONArray();
                    Iterator<Integer> it3 = kotlin.f.d.b(0, Math.min(a2.size(), 5)).iterator();
                    while (it3.hasNext()) {
                        jSONArray.put(a2.get(((ag) it3).a()));
                    }
                    d.a("crash_reports", jSONArray, new C0396a(a2));
                }
                if (a.f19866d != null) {
                    Log.w(a.f19865c, "Already enabled!");
                    return;
                }
                a.f19866d = new a(Thread.getDefaultUncaughtExceptionHandler(), null);
                Thread.setDefaultUncaughtExceptionHandler(a.f19866d);
            }
        }
    }

    private a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f19867b = uncaughtExceptionHandler;
    }

    public /* synthetic */ a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, DefaultConstructorMarker defaultConstructorMarker) {
        this(uncaughtExceptionHandler);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread t, Throwable e) {
        p.d(t, "t");
        p.d(e, "e");
        if (d.c(e)) {
            com.facebook.internal.b.a.a(e);
            b.a.a(e, b.EnumC0398b.CrashReport).b();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f19867b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t, e);
        }
    }
}
