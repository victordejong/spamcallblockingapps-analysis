package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/va0.class */
public final class va0 extends AbstractC5796a {

    /* renamed from: a */
    private final c10 f31115a;

    /* renamed from: c */
    private final ua0 f31117c;

    /* renamed from: d */
    private final AbstractC5796a.AbstractC5797a f31118d;

    /* renamed from: b */
    private final List<AbstractC5796a.AbstractC5798b> f31116b = new ArrayList();

    /* renamed from: e */
    private final List<?> f31119e = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:51|3|(2:5|(7:9|(1:11)(1:12)|13|(3:55|15|58)(1:57)|56|6|7)))|(3:53|18|(2:20|(7:24|(1:26)(1:27)|28|(3:59|30|62)(1:61)|60|21|22)))|(2:49|33)|(7:35|39|47|40|(1:42)|45|46)|38|39|47|40|(0)|45|46) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012d, code lost:
        com.google.android.gms.internal.ads.ei0.m15466d("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0118 A[Catch: RemoteException -> 0x012c, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x012c, blocks: (B:40:0x010c, B:42:0x0118), top: B:47:0x010c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public va0(com.google.android.gms.internal.ads.c10 r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.va0.<init>(com.google.android.gms.internal.ads.c10):void");
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: a */
    public final String mo10059a() {
        try {
            return this.f31115a.mo16155g();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: b */
    public final String mo10058b() {
        try {
            return this.f31115a.zzg();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: c */
    public final String mo10057c() {
        try {
            return this.f31115a.zzi();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: d */
    public final String mo10056d() {
        try {
            return this.f31115a.mo16159a();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: e */
    public final AbstractC5796a.AbstractC5798b mo10055e() {
        return this.f31117c;
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: f */
    public final List<AbstractC5796a.AbstractC5798b> mo10054f() {
        return this.f31116b;
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: g */
    public final String mo10053g() {
        try {
            return this.f31115a.mo16151j();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: h */
    public final Double mo10052h() {
        Double d = null;
        try {
            double mo16154h = this.f31115a.mo16154h();
            if (mo16154h != -1.0d) {
                d = Double.valueOf(mo16154h);
            }
            return d;
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: i */
    public final String mo10051i() {
        try {
            return this.f31115a.mo16152i();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.AbstractC5796a
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ Object mo10050j() {
        AbstractC6253a abstractC6253a;
        try {
            abstractC6253a = this.f31115a.zzu();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            abstractC6253a = null;
        }
        return abstractC6253a;
    }
}
