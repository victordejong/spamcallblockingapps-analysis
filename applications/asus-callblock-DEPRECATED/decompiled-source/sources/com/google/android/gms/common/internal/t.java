package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public final class t extends s implements Handler.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final Context f4033b;
    private final Handler c;

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<a, b> f4032a = new HashMap<>();
    private final com.google.android.gms.common.stats.b d = com.google.android.gms.common.stats.b.a();
    private final long e = 5000;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f4034a;

        /* renamed from: b  reason: collision with root package name */
        private final String f4035b;
        private final ComponentName c = null;

        public a(String str, String str2) {
            this.f4034a = com.google.android.gms.common.internal.b.a(str);
            this.f4035b = com.google.android.gms.common.internal.b.a(str2);
        }

        public final Intent a() {
            return this.f4034a != null ? new Intent(this.f4034a).setPackage(this.f4035b) : new Intent().setComponent(this.c);
        }

        public final boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof a)) {
                    z = false;
                } else {
                    a aVar = (a) obj;
                    if (!ae.a(this.f4034a, aVar.f4034a) || !ae.a(this.c, aVar.c)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.f4034a, this.c});
        }

        public final String toString() {
            return this.f4034a == null ? this.c.flattenToString() : this.f4034a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final a f4036a = new a();

        /* renamed from: b  reason: collision with root package name */
        final Set<ServiceConnection> f4037b = new HashSet();
        int c = 2;
        boolean d;
        IBinder e;
        final a f;
        ComponentName g;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t$b$a.class */
        public final class a implements ServiceConnection {
            public a() {
            }

            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (t.this.f4032a) {
                    b.this.e = iBinder;
                    b.this.g = componentName;
                    for (ServiceConnection serviceConnection : b.this.f4037b) {
                        serviceConnection.onServiceConnected(componentName, iBinder);
                    }
                    b.this.c = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                synchronized (t.this.f4032a) {
                    b.this.e = null;
                    b.this.g = componentName;
                    for (ServiceConnection serviceConnection : b.this.f4037b) {
                        serviceConnection.onServiceDisconnected(componentName);
                    }
                    b.this.c = 2;
                }
            }
        }

        public b(a aVar) {
            this.f = aVar;
        }

        @TargetApi(AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION)
        public final void a() {
            this.c = 3;
            com.google.android.gms.common.stats.b unused = t.this.d;
            this.d = com.google.android.gms.common.stats.b.a(t.this.f4033b, this.f.a(), this.f4036a, 129);
            if (!this.d) {
                this.c = 2;
                try {
                    com.google.android.gms.common.stats.b unused2 = t.this.d;
                    com.google.android.gms.common.stats.b.a(t.this.f4033b, this.f4036a);
                } catch (IllegalArgumentException e) {
                }
            }
        }

        public final void a(ServiceConnection serviceConnection) {
            com.google.android.gms.common.stats.b unused = t.this.d;
            Context unused2 = t.this.f4033b;
            this.f.a();
            com.google.android.gms.common.stats.b.a(serviceConnection);
            this.f4037b.add(serviceConnection);
        }

        public final boolean b() {
            return this.f4037b.isEmpty();
        }

        public final boolean b(ServiceConnection serviceConnection) {
            return this.f4037b.contains(serviceConnection);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context) {
        this.f4033b = context.getApplicationContext();
        this.c = new Handler(context.getMainLooper(), this);
    }

    private boolean a(a aVar, ServiceConnection serviceConnection) {
        b bVar;
        boolean z;
        com.google.android.gms.common.internal.b.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f4032a) {
            b bVar2 = this.f4032a.get(aVar);
            if (bVar2 != null) {
                this.c.removeMessages(0, bVar2);
                if (!bVar2.b(serviceConnection)) {
                    bVar2.a(serviceConnection);
                    switch (bVar2.c) {
                        case 1:
                            serviceConnection.onServiceConnected(bVar2.g, bVar2.e);
                            bVar = bVar2;
                            break;
                        case 2:
                            bVar2.a();
                            bVar = bVar2;
                            break;
                        default:
                            bVar = bVar2;
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                b bVar3 = new b(aVar);
                bVar3.a(serviceConnection);
                bVar3.a();
                this.f4032a.put(aVar, bVar3);
                bVar = bVar3;
            }
            z = bVar.d;
        }
        return z;
    }

    @Override // com.google.android.gms.common.internal.s
    public final void a(String str, String str2, ServiceConnection serviceConnection) {
        a aVar = new a(str, str2);
        com.google.android.gms.common.internal.b.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f4032a) {
            b bVar = this.f4032a.get(aVar);
            if (bVar == null) {
                String valueOf = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            } else if (!bVar.b(serviceConnection)) {
                String valueOf2 = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            } else {
                com.google.android.gms.common.stats.b.a(serviceConnection);
                bVar.f4037b.remove(serviceConnection);
                if (bVar.b()) {
                    this.c.sendMessageDelayed(this.c.obtainMessage(0, bVar), this.e);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.s
    public final boolean a(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return a(new a(str, str2), serviceConnection);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z = false;
        switch (message.what) {
            case 0:
                b bVar = (b) message.obj;
                synchronized (this.f4032a) {
                    if (bVar.b()) {
                        if (bVar.d) {
                            com.google.android.gms.common.stats.b.a(t.this.f4033b, bVar.f4036a);
                            bVar.d = false;
                            bVar.c = 2;
                        }
                        this.f4032a.remove(bVar.f);
                    }
                }
                z = true;
                break;
        }
        return z;
    }
}
