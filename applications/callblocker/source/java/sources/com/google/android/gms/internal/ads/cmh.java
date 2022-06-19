package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.p120c.C2276a;
import com.google.android.gms.internal.ads.atw;
import com.google.android.gms.tasks.AbstractC4466d;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmh.class */
public final class cmh {

    /* renamed from: a */
    private final Context f13353a;

    /* renamed from: b */
    private final clq f13354b;

    /* renamed from: c */
    private final clu f13355c;

    /* renamed from: d */
    private final cmk f13356d;

    /* renamed from: e */
    private final AbstractC4469g<atw.C2798a> f13357e;

    /* renamed from: f */
    private final cmn f13358f;

    /* renamed from: g */
    private final AbstractC4469g<atw.C2798a> f13359g;

    public cmh(Context context, Executor executor, clq clqVar, clu cluVar) {
        this(context, executor, clqVar, cluVar, new cmn(), new cmk());
    }

    private cmh(Context context, Executor executor, clq clqVar, clu cluVar, cmn cmnVar, cmk cmkVar) {
        this.f13353a = context;
        this.f13354b = clqVar;
        this.f13355c = cluVar;
        this.f13358f = cmnVar;
        this.f13356d = cmkVar;
        this.f13357e = C4473j.m3879a(executor, new Callable(this) { // from class: com.google.android.gms.internal.ads.cmf

            /* renamed from: a */
            private final cmh f13332a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13332a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13332a.m11032f();
            }
        }).mo3902a(new AbstractC4466d(this) { // from class: com.google.android.gms.internal.ads.cmj

            /* renamed from: a */
            private final cmh f13361a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13361a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC4466d
            /* renamed from: a */
            public final void mo3862a(Exception exc) {
                this.f13361a.m11037b(exc);
            }
        });
        this.f13359g = C4473j.m3879a(executor, new Callable(this) { // from class: com.google.android.gms.internal.ads.cmi

            /* renamed from: a */
            private final cmh f13360a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13360a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13360a.m11033e();
            }
        }).mo3902a(new AbstractC4466d(this) { // from class: com.google.android.gms.internal.ads.cml

            /* renamed from: a */
            private final cmh f13362a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13362a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC4466d
            /* renamed from: a */
            public final void mo3862a(Exception exc) {
                this.f13362a.m11039a(exc);
            }
        });
    }

    /* renamed from: a */
    private final atw.C2798a m11040a(AbstractC4469g<atw.C2798a> abstractC4469g) {
        atw.C2798a mo3891d;
        synchronized (this) {
            if (!abstractC4469g.mo3905a()) {
                try {
                    C4473j.m3883a(abstractC4469g, 200L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    m11037b(e);
                }
            }
            mo3891d = !abstractC4469g.mo3894b() ? (atw.C2798a) ((dcw) atw.C2798a.m12647h().m12580c("E").mo9987g()) : abstractC4469g.mo3891d();
        }
        return mo3891d;
    }

    /* renamed from: c */
    public final void m11037b(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.f13354b.m11085a(2025, -1L, exc);
    }

    /* renamed from: g */
    private final atw.C2798a m11031g() {
        atw.C2798a m11040a;
        synchronized (this) {
            m11040a = m11040a(this.f13359g);
        }
        return m11040a;
    }

    /* renamed from: h */
    private final atw.C2798a m11030h() {
        atw.C2798a m11040a;
        synchronized (this) {
            m11040a = m11040a(this.f13357e);
        }
        return m11040a;
    }

    /* renamed from: a */
    public final String m11041a() {
        return m11031g().m12687b();
    }

    /* renamed from: b */
    public final String m11038b() {
        return m11030h().m12678c();
    }

    /* renamed from: c */
    public final int m11036c() {
        return m11030h().m12671d().mo8208a();
    }

    /* renamed from: d */
    public final boolean m11034d() {
        return m11030h().m12664e();
    }

    /* renamed from: e */
    public final /* synthetic */ atw.C2798a m11033e() {
        return cma.m11065a(this.f13353a, this.f13353a.getPackageName(), Integer.toString(this.f13353a.getPackageManager().getPackageInfo(this.f13353a.getPackageName(), 0).versionCode));
    }

    /* renamed from: f */
    public final /* synthetic */ atw.C2798a m11032f() {
        atw.C2798a m12642i;
        if (this.f13355c.mo11075b()) {
            Context context = this.f13353a;
            atw.C2798a.C2799a m12647h = atw.C2798a.m12647h();
            C2276a c2276a = new C2276a(context);
            c2276a.m14866a();
            C2276a.C2277a m14854b = c2276a.m14854b();
            String m14848a = m14854b.m14848a();
            String str = m14848a;
            if (m14848a != null) {
                str = m14848a;
                if (m14848a.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                    UUID fromString = UUID.fromString(m14848a);
                    byte[] bArr = new byte[16];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.putLong(fromString.getMostSignificantBits());
                    wrap.putLong(fromString.getLeastSignificantBits());
                    str = Base64.encodeToString(bArr, 11);
                }
            }
            if (str != null) {
                m12647h.m12566i(str);
                m12647h.m12587a(m14854b.m14847b());
                m12647h.m12592a(atw.C2798a.EnumC2801c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
            }
            m12642i = (atw.C2798a) ((dcw) m12647h.mo9987g());
        } else {
            m12642i = atw.C2798a.m12642i();
        }
        return m12642i;
    }
}
