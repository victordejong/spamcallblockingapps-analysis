package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.crashlytics.internal.settings.AbstractC9136d;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p296g.C8913b;
import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import com.google.firebase.crashlytics.p293d.p297h.C9043w;
import com.google.firebase.crashlytics.p293d.p300j.AbstractC9063h;
import com.google.firebase.crashlytics.p293d.p300j.C9062g;
import com.google.firebase.crashlytics.p293d.p301k.C9067c;
import com.google.firebase.crashlytics.p293d.p302l.AbstractC9071d;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.crashlytics.internal.common.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/b0.class */
public class C9078b0 {

    /* renamed from: a */
    private final C9114m f39277a;

    /* renamed from: b */
    private final C9062g f39278b;

    /* renamed from: c */
    private final C9067c f39279c;

    /* renamed from: d */
    private final C8913b f39280d;

    /* renamed from: e */
    private final C9082d0 f39281e;

    C9078b0(C9114m c9114m, C9062g c9062g, C9067c c9067c, C8913b c8913b, C9082d0 c9082d0) {
        this.f39277a = c9114m;
        this.f39278b = c9062g;
        this.f39279c = c9067c;
        this.f39280d = c8913b;
        this.f39281e = c9082d0;
    }

    /* renamed from: b */
    public static C9078b0 m1945b(Context context, C9125t c9125t, AbstractC9063h abstractC9063h, C9075a c9075a, C8913b c8913b, C9082d0 c9082d0, AbstractC9071d abstractC9071d, AbstractC9136d abstractC9136d) {
        return new C9078b0(new C9114m(context, c9125t, c9075a, abstractC9071d), new C9062g(new File(abstractC9063h.mo1992a()), abstractC9136d), C9067c.m1986a(context), c8913b, c9082d0);
    }

    /* renamed from: e */
    private static List<AbstractC9004v.AbstractC9006b> m1942e(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(AbstractC9004v.AbstractC9006b.m2287a().mo2283b(entry.getKey()).mo2282c(entry.getValue()).mo2284a());
        }
        Collections.sort(arrayList, C9076a0.m1947a());
        return arrayList;
    }

    /* renamed from: j */
    public boolean m1937j(AbstractC7966g<AbstractC9115n> abstractC7966g) {
        if (!abstractC7966g.mo5810q()) {
            C8898b.m2397f().m2391l("Crashlytics report could not be enqueued to DataTransport", abstractC7966g.mo5815l());
            return false;
        }
        AbstractC9115n mo5814m = abstractC7966g.mo5814m();
        C8898b m2397f = C8898b.m2397f();
        m2397f.m2401b("Crashlytics report successfully enqueued to DataTransport: " + mo5814m.mo1800c());
        this.f39278b.m2011h(mo5814m.mo1800c());
        return true;
    }

    /* renamed from: k */
    private void m1936k(Throwable th, Thread thread, String str, String str2, long j, boolean z) {
        boolean equals = str2.equals("crash");
        AbstractC9004v.AbstractC9012d.AbstractC9019d m1822b = this.f39277a.m1822b(th, thread, str2, j, 4, 8, z);
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2198g = m1822b.mo2198g();
        String m2370c = this.f39280d.m2370c();
        if (m2370c != null) {
            mo2198g.mo2121d(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.m2104a().mo2101b(m2370c).mo2102a());
        } else {
            C8898b.m2397f().m2394i("No log data to include with this event.");
        }
        List<AbstractC9004v.AbstractC9006b> m1942e = m1942e(this.f39281e.m1927a());
        if (!m1942e.isEmpty()) {
            mo2198g.mo2123b(m1822b.mo2203b().mo2192f().mo2189c(C9043w.m2086c(m1942e)).mo2191a());
        }
        this.f39278b.m2029C(mo2198g.mo2124a(), str, equals);
    }

    /* renamed from: c */
    public void m1944c(String str, List<AbstractC9129x> list) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC9129x abstractC9129x : list) {
            AbstractC9004v.AbstractC9008c.AbstractC9010b mo1766b = abstractC9129x.mo1766b();
            if (mo1766b != null) {
                arrayList.add(mo1766b);
            }
        }
        this.f39278b.m2009j(str, AbstractC9004v.AbstractC9008c.m2281a().mo2277b(C9043w.m2086c(arrayList)).mo2278a());
    }

    /* renamed from: d */
    public void m1943d(long j, String str) {
        this.f39278b.m2010i(str, j);
    }

    /* renamed from: f */
    public boolean m1941f() {
        return this.f39278b.m2001r();
    }

    /* renamed from: h */
    public List<String> m1939h() {
        return this.f39278b.m1994y();
    }

    /* renamed from: i */
    public void m1938i(String str, long j) {
        this.f39278b.m2028D(this.f39277a.m1821c(str, j));
    }

    /* renamed from: l */
    public void m1935l(Throwable th, Thread thread, String str, long j) {
        C8898b m2397f = C8898b.m2397f();
        m2397f.m2394i("Persisting fatal event for session " + str);
        m1936k(th, thread, str, "crash", j, true);
    }

    /* renamed from: m */
    public void m1934m() {
        this.f39278b.m2012g();
    }

    /* renamed from: n */
    public AbstractC7966g<Void> m1933n(Executor executor) {
        List<AbstractC9115n> m1993z = this.f39278b.m1993z();
        ArrayList arrayList = new ArrayList();
        for (AbstractC9115n abstractC9115n : m1993z) {
            arrayList.add(this.f39279c.m1982e(abstractC9115n).mo5818i(executor, C9131z.m1762b(this)));
        }
        return C7970j.m5797f(arrayList);
    }
}
