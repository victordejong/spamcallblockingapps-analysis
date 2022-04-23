package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dc.class */
public final class dc implements com.google.android.gms.tagmanager.b {

    /* renamed from: a  reason: collision with root package name */
    private final Looper f4375a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.gms.tagmanager.a f4376b;
    private com.google.android.gms.tagmanager.a c;
    private Status d;
    private b e;
    private a f;
    private boolean g;
    private e h;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dc$a.class */
    public interface a {
        void a();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dc$b.class */
    private final class b extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Object obj = message.obj;
                    return;
                default:
                    an.a("Don't know how to handle this message.");
                    return;
            }
        }
    }

    public dc(Status status) {
        this.d = status;
        this.f4375a = null;
    }

    public dc(e eVar, Looper looper, com.google.android.gms.tagmanager.a aVar, a aVar2) {
        this.h = eVar;
        this.f4375a = looper == null ? Looper.getMainLooper() : looper;
        this.f4376b = aVar;
        this.f = aVar2;
        this.d = Status.f3945a;
        eVar.e.put(this, true);
    }

    @Override // com.google.android.gms.common.api.d
    public final void a() {
        synchronized (this) {
            if (this.g) {
                an.a("Releasing a released ContainerHolder.");
            } else {
                this.g = true;
                this.h.e.remove(this);
                this.f4376b.f4263a = null;
                this.f4376b = null;
                this.c = null;
                this.f = null;
                this.e = null;
            }
        }
    }

    public final void a(com.google.android.gms.tagmanager.a aVar) {
        synchronized (this) {
            if (!this.g) {
                this.c = aVar;
                if (this.e != null) {
                    b bVar = this.e;
                    bVar.sendMessage(bVar.obtainMessage(1, this.c.c));
                }
            }
        }
    }

    public final void a(String str) {
        synchronized (this) {
            if (!this.g) {
                this.f4376b.a().a(str);
            }
        }
    }

    @Override // com.google.android.gms.common.api.e
    public final Status b() {
        return this.d;
    }

    @Override // com.google.android.gms.tagmanager.b
    public final com.google.android.gms.tagmanager.a c() {
        com.google.android.gms.tagmanager.a aVar = null;
        synchronized (this) {
            if (this.g) {
                an.a("ContainerHolder is released.");
            } else {
                if (this.c != null) {
                    this.f4376b = this.c;
                    this.c = null;
                }
                aVar = this.f4376b;
            }
        }
        return aVar;
    }

    @Override // com.google.android.gms.tagmanager.b
    public final void d() {
        synchronized (this) {
            if (this.g) {
                an.a("Refreshing a released ContainerHolder.");
            } else {
                this.f.a();
            }
        }
    }
}
