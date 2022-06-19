package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5845s;
import com.google.android.gms.ads.formats.AbstractC5606a;
import com.google.android.gms.ads.formats.AbstractC5607b;
import com.google.android.gms.ads.formats.AbstractC5613e;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d10.class */
public final class d10 extends AbstractC5613e {

    /* renamed from: a */
    private final c10 f21433a;

    /* renamed from: c */
    private final C6570hz f21435c;

    /* renamed from: e */
    private final AbstractC5606a f21437e;

    /* renamed from: b */
    private final List<AbstractC5607b> f21434b = new ArrayList();

    /* renamed from: d */
    private final C5845s f21436d = new C5845s();

    /* renamed from: f */
    private final List<?> f21438f = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:56|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:60|20|63)(1:62)|61|6|7)))|(3:58|23|(2:25|(7:29|(1:31)(1:32)|33|(3:64|35|67)(1:66)|65|26|27)))|(2:54|38)|(7:40|44|52|45|(1:47)|50|51)|43|44|52|45|(0)|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0160, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0161, code lost:
        com.google.android.gms.internal.ads.ei0.m15466d("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014c A[Catch: RemoteException -> 0x0160, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0160, blocks: (B:45:0x0140, B:47:0x014c), top: B:52:0x0140 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d10(com.google.android.gms.internal.ads.c10 r5) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.d10.<init>(com.google.android.gms.internal.ads.c10):void");
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: a */
    public final String mo15972a() {
        try {
            return this.f21433a.mo16155g();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: b */
    public final String mo15971b() {
        try {
            return this.f21433a.zzg();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: c */
    public final String mo15970c() {
        try {
            return this.f21433a.zzi();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: d */
    public final String mo15969d() {
        try {
            return this.f21433a.mo16159a();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: e */
    public final AbstractC5607b mo15968e() {
        return this.f21435c;
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: f */
    public final List<AbstractC5607b> mo15967f() {
        return this.f21434b;
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: g */
    public final String mo15966g() {
        try {
            return this.f21433a.mo16151j();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: h */
    public final Double mo15965h() {
        Double d = null;
        try {
            double mo16154h = this.f21433a.mo16154h();
            if (mo16154h != -1.0d) {
                d = Double.valueOf(mo16154h);
            }
            return d;
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: i */
    public final String mo15964i() {
        try {
            return this.f21433a.mo16152i();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: j */
    public final C5845s mo15963j() {
        try {
            if (this.f21433a.mo16147m() != null) {
                this.f21436d.m17767b(this.f21433a.mo16147m());
            }
        } catch (RemoteException e) {
            ei0.m15466d("Exception occurred while getting video controller", e);
        }
        return this.f21436d;
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5613e
    /* renamed from: k */
    public final Object mo15962k() {
        try {
            AbstractC6253a mo16141w = this.f21433a.mo16141w();
            if (mo16141w == null) {
                return null;
            }
            return BinderC6255b.m16745J0(mo16141w);
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }
}
