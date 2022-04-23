package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1407r;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.qs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qs.class */
public abstract class AbstractC1912qs {

    /* renamed from: b */
    protected final Context f8263b;

    /* renamed from: c */
    protected final String f8264c;

    /* renamed from: d */
    protected final WeakReference<rq> f8265d;

    public AbstractC1912qs(rq rqVar) {
        Context context = rqVar.getContext();
        this.f8263b = context;
        this.f8264c = C1407r.m8920d().m8788J(context, rqVar.r().b);
        this.f8265d = new WeakReference<>(rqVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static /* synthetic */ void m6048u(AbstractC1912qs qsVar, String str, Map map) {
        rq rqVar = qsVar.f8265d.get();
        if (rqVar != null) {
            rqVar.m6705X("onPrecacheEvent", map);
        }
    }

    /* renamed from: g */
    public void m6061g() {
    }

    /* renamed from: h */
    public abstract boolean m6060h(String str);

    /* renamed from: i */
    public boolean m6059i(String str, String[] strArr) {
        return m6060h(str);
    }

    /* renamed from: j */
    protected void m6058j(int i) {
    }

    /* renamed from: l */
    protected void m6057l(int i) {
    }

    /* renamed from: m */
    protected void m6056m(int i) {
    }

    /* renamed from: n */
    protected void m6055n(int i) {
    }

    /* renamed from: o */
    public abstract void m6054o();

    /* renamed from: p */
    public final void m6053p(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        C1786io.f6814b.post(new RunnableC1838ls(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    /* renamed from: q */
    public final void m6052q(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        C1786io.f6814b.post(new RunnableC1852ms(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    /* renamed from: r */
    protected final void m6051r(String str, String str2, int i) {
        C1786io.f6814b.post(new RunnableC1866ns(this, str, str2, i));
    }

    /* renamed from: s */
    public final void m6050s(String str, String str2, long j) {
        C1786io.f6814b.post(new RunnableC1882os(this, str, str2, j));
    }

    /* renamed from: t */
    public final void m6049t(String str, String str2, String str3, String str4) {
        C1786io.f6814b.post(new RunnableC1895ps(this, str, str2, str3, str4));
    }
}
