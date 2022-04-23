package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import com.google.android.c.a;
import com.google.android.c.c;
import com.google.android.c.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cc.class */
public final class cc implements c {

    /* renamed from: a  reason: collision with root package name */
    private final m f28781a;

    /* renamed from: b  reason: collision with root package name */
    private final ch f28782b;

    /* renamed from: c  reason: collision with root package name */
    private final aa f28783c;

    public cc(m mVar, ch chVar, aa aaVar) {
        this.f28781a = mVar;
        this.f28782b = chVar;
        this.f28783c = aaVar;
    }

    @Override // com.google.android.c.c
    public final int a() {
        return this.f28781a.f28843a.getInt("consent_status", 0);
    }

    @Override // com.google.android.c.c
    public final void a(final Activity activity, final d dVar, final c.b bVar, final c.a aVar) {
        final ch chVar = this.f28782b;
        chVar.f28796c.execute(new Runnable(chVar, activity, dVar, bVar, aVar) { // from class: com.google.android.gms.internal.consent_sdk.ck

            /* renamed from: a  reason: collision with root package name */
            private final ch f28803a;

            /* renamed from: b  reason: collision with root package name */
            private final Activity f28804b;

            /* renamed from: c  reason: collision with root package name */
            private final d f28805c;

            /* renamed from: d  reason: collision with root package name */
            private final c.b f28806d;
            private final c.a e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28803a = chVar;
                this.f28804b = activity;
                this.f28805c = dVar;
                this.f28806d = bVar;
                this.e = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ch chVar2 = this.f28803a;
                Activity activity2 = this.f28804b;
                d dVar2 = this.f28805c;
                c.b bVar2 = this.f28806d;
                final c.a aVar2 = this.e;
                try {
                    a aVar3 = dVar2.f20302c;
                    if (aVar3 == null || !aVar3.f20294a) {
                        String a2 = ba.a(chVar2.f28794a);
                        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 95);
                        sb.append("Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\"");
                        sb.append(a2);
                        sb.append("\") to set this as a debug device.");
                    }
                    cq a3 = new b(chVar2.g, chVar2.a(chVar2.f.a(activity2, dVar2))).a();
                    chVar2.f28797d.a(a3.f28818a);
                    chVar2.f28797d.b(a3.f28819b);
                    chVar2.e.f28683b.set(a3.f28820c);
                    chVar2.h.f28773a.execute(new Runnable(chVar2, bVar2) { // from class: com.google.android.gms.internal.consent_sdk.cj

                        /* renamed from: a  reason: collision with root package name */
                        private final ch f28801a;

                        /* renamed from: b  reason: collision with root package name */
                        private final c.b f28802b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28801a = chVar2;
                            this.f28802b = bVar2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            ch chVar3 = this.f28801a;
                            final c.b bVar3 = this.f28802b;
                            Handler handler = chVar3.f28795b;
                            bVar3.getClass();
                            handler.post(new Runnable(bVar3) { // from class: com.google.android.gms.internal.consent_sdk.cm

                                /* renamed from: a  reason: collision with root package name */
                                private final c.b f28809a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f28809a = bVar3;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f28809a.a();
                                }
                            });
                        }
                    });
                } catch (zzk e) {
                    chVar2.f28795b.post(new Runnable(aVar2, e) { // from class: com.google.android.gms.internal.consent_sdk.cl

                        /* renamed from: a  reason: collision with root package name */
                        private final c.a f28807a;

                        /* renamed from: b  reason: collision with root package name */
                        private final zzk f28808b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28807a = aVar2;
                            this.f28808b = e;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f28807a.a(this.f28808b.a());
                        }
                    });
                } catch (RuntimeException e2) {
                    String valueOf = String.valueOf(Log.getStackTraceString(e2));
                    final zzk zzkVar = new zzk(1, valueOf.length() != 0 ? "Caught exception when trying to request consent info update: ".concat(valueOf) : new String("Caught exception when trying to request consent info update: "));
                    chVar2.f28795b.post(new Runnable(aVar2, zzkVar) { // from class: com.google.android.gms.internal.consent_sdk.co

                        /* renamed from: a  reason: collision with root package name */
                        private final c.a f28814a;

                        /* renamed from: b  reason: collision with root package name */
                        private final zzk f28815b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28814a = aVar2;
                            this.f28815b = zzkVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f28814a.a(this.f28815b.a());
                        }
                    });
                }
            }
        });
    }
}
