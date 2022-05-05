package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/be.class */
public final class be<R extends e> extends i<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    h<? super R, ? extends e> f4148a;

    /* renamed from: b  reason: collision with root package name */
    be<? extends e> f4149b;
    volatile g<? super R> c;
    c<R> d;
    final Object e;
    Status f;
    final WeakReference<b> g;
    final a h;
    boolean i;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/be$a.class */
    private final class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ be f4152a;

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    c<R> cVar = (c) message.obj;
                    synchronized (this.f4152a.e) {
                        if (cVar == null) {
                            this.f4152a.f4149b.a(new Status(13, "Transform returned null"));
                        } else if (cVar instanceof bd) {
                            this.f4152a.f4149b.a(((bd) cVar).f4147a);
                        } else {
                            be<? extends e> beVar = this.f4152a.f4149b;
                            synchronized (beVar.e) {
                                beVar.d = cVar;
                                if (!(beVar.f4148a == null && beVar.c == null)) {
                                    b bVar = beVar.g.get();
                                    if (!(beVar.i || beVar.f4148a == null || bVar == null)) {
                                        b.b();
                                        beVar.i = true;
                                    }
                                    if (beVar.f != null) {
                                        beVar.b(beVar.f);
                                    } else if (beVar.d != null) {
                                        beVar.d.a(beVar);
                                    }
                                }
                            }
                        }
                    }
                    return;
                case 1:
                    RuntimeException runtimeException = (RuntimeException) message.obj;
                    String valueOf = String.valueOf(runtimeException.getMessage());
                    Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                    throw runtimeException;
                default:
                    Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                    return;
            }
        }
    }

    private boolean a() {
        return (this.c == null || this.g.get() == null) ? false : true;
    }

    static void b(e eVar) {
        if (eVar instanceof d) {
            try {
                ((d) eVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(eVar);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    final void a(Status status) {
        synchronized (this.e) {
            this.f = status;
            b(this.f);
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(final R r) {
        synchronized (this.e) {
            if (!r.b().a()) {
                a(r.b());
                b(r);
            } else if (this.f4148a != null) {
                bc.a().submit(new Runnable() { // from class: com.google.android.gms.internal.be.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            try {
                                ax.f4131a.set(true);
                                be.this.h.sendMessage(be.this.h.obtainMessage(0, be.this.f4148a.a()));
                                ax.f4131a.set(false);
                                be.b(r);
                                if (be.this.g.get() != null) {
                                    b.c();
                                }
                            } catch (RuntimeException e) {
                                be.this.h.sendMessage(be.this.h.obtainMessage(1, e));
                                ax.f4131a.set(false);
                                be.b(r);
                                if (be.this.g.get() != null) {
                                    b.c();
                                }
                            }
                        } catch (Throwable th) {
                            ax.f4131a.set(false);
                            be.b(r);
                            if (be.this.g.get() != null) {
                                b.c();
                            }
                            throw th;
                        }
                    }
                });
            } else if (a()) {
                g<? super R> gVar = this.c;
            }
        }
    }

    final void b(Status status) {
        synchronized (this.e) {
            if (this.f4148a != null) {
                com.google.android.gms.common.internal.b.a(status, "onFailure must not return null");
                this.f4149b.a(status);
            } else if (a()) {
                g<? super R> gVar = this.c;
            }
        }
    }
}
