package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import com.google.android.p314c.AbstractC10615c;
import com.google.android.p314c.C10611a;
import com.google.android.p314c.C10618d;
/* renamed from: com.google.android.gms.internal.consent_sdk.cc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cc.class */
public final class C13228cc implements AbstractC10615c {

    /* renamed from: a */
    private final C13253m f50412a;

    /* renamed from: b */
    private final C13233ch f50413b;

    /* renamed from: c */
    private final C13170aa f50414c;

    public C13228cc(C13253m c13253m, C13233ch c13233ch, C13170aa c13170aa) {
        this.f50412a = c13253m;
        this.f50413b = c13233ch;
        this.f50414c = c13170aa;
    }

    @Override // com.google.android.p314c.AbstractC10615c
    /* renamed from: a */
    public final int mo13549a() {
        return this.f50412a.f50495a.getInt("consent_status", 0);
    }

    @Override // com.google.android.p314c.AbstractC10615c
    /* renamed from: a */
    public final void mo13548a(Activity activity, C10618d c10618d, AbstractC10615c.AbstractC10617b abstractC10617b, AbstractC10615c.AbstractC10616a abstractC10616a) {
        C13233ch c13233ch = this.f50413b;
        c13233ch.f50427c.execute(new Runnable(c13233ch, activity, c10618d, abstractC10617b, abstractC10616a) { // from class: com.google.android.gms.internal.consent_sdk.ck

            /* renamed from: a */
            private final C13233ch f50439a;

            /* renamed from: b */
            private final Activity f50440b;

            /* renamed from: c */
            private final C10618d f50441c;

            /* renamed from: d */
            private final AbstractC10615c.AbstractC10617b f50442d;

            /* renamed from: e */
            private final AbstractC10615c.AbstractC10616a f50443e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50439a = c13233ch;
                this.f50440b = activity;
                this.f50441c = c10618d;
                this.f50442d = abstractC10617b;
                this.f50443e = abstractC10616a;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C13233ch c13233ch2 = this.f50439a;
                Activity activity2 = this.f50440b;
                C10618d c10618d2 = this.f50441c;
                AbstractC10615c.AbstractC10617b abstractC10617b2 = this.f50442d;
                final AbstractC10615c.AbstractC10616a abstractC10616a2 = this.f50443e;
                try {
                    C10611a c10611a = c10618d2.f34380c;
                    if (c10611a == null || !c10611a.f34372a) {
                        String m13569a = C13197ba.m13569a(c13233ch2.f50425a);
                        StringBuilder sb = new StringBuilder(String.valueOf(m13569a).length() + 95);
                        sb.append("Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\"");
                        sb.append(m13569a);
                        sb.append("\") to set this as a debug device.");
                    }
                    C13242cq m13571a = new C13196b(c13233ch2.f50431g, c13233ch2.m13544a(c13233ch2.f50430f.m13545a(activity2, c10618d2))).m13571a();
                    c13233ch2.f50428d.m13530a(m13571a.f50460a);
                    c13233ch2.f50428d.m13529b(m13571a.f50461b);
                    c13233ch2.f50429e.f50281b.set(m13571a.f50462c);
                    c13233ch2.f50432h.f50404a.execute(new Runnable(c13233ch2, abstractC10617b2) { // from class: com.google.android.gms.internal.consent_sdk.cj

                        /* renamed from: a */
                        private final C13233ch f50437a;

                        /* renamed from: b */
                        private final AbstractC10615c.AbstractC10617b f50438b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f50437a = c13233ch2;
                            this.f50438b = abstractC10617b2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            C13233ch c13233ch3 = this.f50437a;
                            final AbstractC10615c.AbstractC10617b abstractC10617b3 = this.f50438b;
                            Handler handler = c13233ch3.f50426b;
                            abstractC10617b3.getClass();
                            handler.post(new Runnable(abstractC10617b3) { // from class: com.google.android.gms.internal.consent_sdk.cm

                                /* renamed from: a */
                                private final AbstractC10615c.AbstractC10617b f50446a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f50446a = abstractC10617b3;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f50446a.mo22611a();
                                }
                            });
                        }
                    });
                } catch (zzk e) {
                    c13233ch2.f50426b.post(new Runnable(abstractC10616a2, e) { // from class: com.google.android.gms.internal.consent_sdk.cl

                        /* renamed from: a */
                        private final AbstractC10615c.AbstractC10616a f50444a;

                        /* renamed from: b */
                        private final zzk f50445b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f50444a = abstractC10616a2;
                            this.f50445b = e;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f50444a.mo22612a(this.f50445b.m13511a());
                        }
                    });
                } catch (RuntimeException e2) {
                    String valueOf = String.valueOf(Log.getStackTraceString(e2));
                    final zzk zzkVar = new zzk(1, valueOf.length() != 0 ? "Caught exception when trying to request consent info update: ".concat(valueOf) : new String("Caught exception when trying to request consent info update: "));
                    c13233ch2.f50426b.post(new Runnable(abstractC10616a2, zzkVar) { // from class: com.google.android.gms.internal.consent_sdk.co

                        /* renamed from: a */
                        private final AbstractC10615c.AbstractC10616a f50456a;

                        /* renamed from: b */
                        private final zzk f50457b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f50456a = abstractC10616a2;
                            this.f50457b = zzkVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f50456a.mo22612a(this.f50457b.m13511a());
                        }
                    });
                }
            }
        });
    }
}
