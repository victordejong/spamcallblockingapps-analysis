package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.bg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bg.class */
public final class C6328bg implements AbstractC7219zh {

    /* renamed from: a */
    private final Uri f20431a;

    /* renamed from: b */
    private final AbstractC6886qh f20432b;

    /* renamed from: c */
    private final C6365cg f20433c;

    /* renamed from: d */
    private final C6442ei f20434d;

    /* renamed from: f */
    private volatile boolean f20436f;

    /* renamed from: h */
    private long f20438h;

    /* renamed from: j */
    final /* synthetic */ C6440eg f20440j;

    /* renamed from: e */
    private final C6956sd f20435e = new C6956sd();

    /* renamed from: g */
    private boolean f20437g = true;

    /* renamed from: i */
    private long f20439i = -1;

    public C6328bg(C6440eg c6440eg, Uri uri, AbstractC6886qh abstractC6886qh, C6365cg c6365cg, C6442ei c6442ei) {
        this.f20440j = c6440eg;
        Objects.requireNonNull(uri);
        this.f20431a = uri;
        Objects.requireNonNull(abstractC6886qh);
        this.f20432b = abstractC6886qh;
        Objects.requireNonNull(c6365cg);
        this.f20433c = c6365cg;
        this.f20434d = c6442ei;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7219zh
    /* renamed from: a */
    public final void mo8389a() {
        Throwable th;
        C6734md c6734md;
        int i;
        int i2;
        long j;
        Handler handler;
        Runnable runnable;
        while (!this.f20436f) {
            int i3 = 0;
            try {
                ?? r0 = this.f20435e.f29450a;
                char mo10689d = this.f20432b.mo10689d(new C6923rh(this.f20431a, null, r0, r0, -1L, null, 0));
                this.f20439i = mo10689d;
                if (mo10689d != -1) {
                    mo10689d += r0;
                    this.f20439i = mo10689d;
                }
                c6734md = new C6734md(this.f20432b, r0, mo10689d);
                try {
                    AbstractC6771nd m16056b = this.f20433c.m16056b(c6734md, this.f20432b.mo10690c());
                    if (this.f20437g) {
                        m16056b.mo9615d(r0, this.f20438h);
                        this.f20437g = false;
                    }
                    char c = r0;
                    int i4 = 0;
                    while (true) {
                        i = i4;
                        if (i4 != 0) {
                            break;
                        }
                        i3 = i4;
                        try {
                            if (this.f20436f) {
                                i = 0;
                                break;
                            }
                            int i5 = i4;
                            this.f20434d.m15470c();
                            int i6 = i4;
                            int mo9614e = m16056b.mo9614e(c6734md, this.f20435e);
                            i4 = mo9614e;
                            long m13289h = c6734md.m13289h();
                            j = this.f20440j.f22145j;
                            if (m13289h > j + c) {
                                c = c6734md.m13289h();
                                this.f20434d.m15471b();
                                handler = this.f20440j.f22151p;
                                runnable = this.f20440j.f22150o;
                                handler.post(runnable);
                                i4 = mo9614e;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (i3 != 1 && c6734md != null) {
                                this.f20435e.f29450a = c6734md.m13289h();
                            }
                            C6961si.m11019c(this.f20432b);
                            throw th;
                        }
                    }
                    if (i == 1) {
                        i2 = 0;
                    } else {
                        this.f20435e.f29450a = c6734md.m13289h();
                        i2 = i;
                    }
                    C6961si.m11019c(this.f20432b);
                    if (i2 != 0) {
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                c6734md = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7219zh
    /* renamed from: c */
    public final void mo8388c() {
        this.f20436f = true;
    }

    /* renamed from: d */
    public final void m16380d(long j, long j2) {
        this.f20435e.f29450a = j;
        this.f20438h = j2;
        this.f20437g = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7219zh
    /* renamed from: e */
    public final boolean mo8387e() {
        return this.f20436f;
    }
}
