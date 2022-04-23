package com.google.android.gms.measurement.internal;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dl.class */
final class dl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f29495a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29496b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f29497c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Object f29498d;
    final /* synthetic */ Object e;
    final /* synthetic */ Cdo f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dl(Cdo doVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f = doVar;
        this.f29495a = i;
        this.f29496b = str;
        this.f29497c = obj;
        this.f29498d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ee b2 = this.f.t.b();
        if (b2.f()) {
            if (this.f.f29504a == 0) {
                if (this.f.t.g.b()) {
                    this.f.f29504a = (char) 67;
                } else {
                    this.f.f29504a = (char) 99;
                }
            }
            if (this.f.f29505b < 0) {
                this.f.f29505b = 39065L;
            }
            char charAt = "01VDIWEA?".charAt(this.f29495a);
            char c2 = this.f.f29504a;
            long j = this.f.f29505b;
            String a2 = Cdo.a(true, this.f29496b, this.f29497c, this.f29498d, this.e);
            StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 24);
            sb.append("2");
            sb.append(charAt);
            sb.append(c2);
            sb.append(j);
            sb.append(":");
            sb.append(a2);
            String sb2 = sb.toString();
            String str = sb2;
            if (sb2.length() > 1024) {
                str = this.f29496b.substring(0, 1024);
            }
            eb ebVar = b2.f29553c;
            if (ebVar != null) {
                ebVar.a(str);
                return;
            }
            return;
        }
        Log.println(6, this.f.ag_(), "Persisted config not initialized. Not logging error/warn");
    }
}
