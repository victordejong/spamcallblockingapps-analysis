package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f;
import p193e.p1577m.p1578a.p1642f.p1652d.C24901d;
import p193e.p1577m.p1578a.p1642f.p1652d.ServiceConnectionC24900c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzh.class */
public final /* synthetic */ class zzh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ServiceConnectionC24900c f5636a;

    public /* synthetic */ zzh(ServiceConnectionC24900c serviceConnectionC24900c) {
        this.f5636a = serviceConnectionC24900c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final ServiceConnectionC24900c serviceConnectionC24900c = this.f5636a;
        while (true) {
            synchronized (serviceConnectionC24900c) {
                if (serviceConnectionC24900c.f69792a != 2) {
                    return;
                }
                if (serviceConnectionC24900c.f69795d.isEmpty()) {
                    serviceConnectionC24900c.m4298c();
                    return;
                }
                final AbstractC24903f<?> poll = serviceConnectionC24900c.f69795d.poll();
                serviceConnectionC24900c.f69796e.put(poll.f69800a, poll);
                serviceConnectionC24900c.f69797f.f5644b.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzk
                    @Override // java.lang.Runnable
                    public final void run() {
                        ServiceConnectionC24900c serviceConnectionC24900c2 = ServiceConnectionC24900c.this;
                        int i = poll.f69800a;
                        synchronized (serviceConnectionC24900c2) {
                            AbstractC24903f<?> abstractC24903f = serviceConnectionC24900c2.f69796e.get(i);
                            if (abstractC24903f != null) {
                                serviceConnectionC24900c2.f69796e.remove(i);
                                abstractC24903f.m4296c(new zzq("Timed out waiting for response", null));
                                serviceConnectionC24900c2.m4298c();
                            }
                        }
                    }
                }, 30L, TimeUnit.SECONDS);
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    String.valueOf(poll).length();
                }
                Context context = serviceConnectionC24900c.f69797f.f5643a;
                Messenger messenger = serviceConnectionC24900c.f69793b;
                Message obtain = Message.obtain();
                obtain.what = poll.f69802c;
                obtain.arg1 = poll.f69800a;
                obtain.replyTo = messenger;
                Bundle bundle = new Bundle();
                bundle.putBoolean("oneWay", poll.mo4293b());
                bundle.putString("pkg", context.getPackageName());
                bundle.putBundle(RemoteMessageConst.DATA, poll.f69803d);
                obtain.setData(bundle);
                try {
                    C24901d c24901d = serviceConnectionC24900c.f69794c;
                    Messenger messenger2 = c24901d.f69798a;
                    if (messenger2 == null) {
                        zzd zzdVar = c24901d.f69799b;
                        if (zzdVar == null) {
                            throw new IllegalStateException("Both messengers are null");
                            break;
                        }
                        Messenger messenger3 = zzdVar.f5628a;
                        Objects.requireNonNull(messenger3);
                        messenger3.send(obtain);
                    } else {
                        messenger2.send(obtain);
                    }
                } catch (RemoteException e) {
                    serviceConnectionC24900c.m4300a(2, e.getMessage());
                }
            }
        }
    }
}
