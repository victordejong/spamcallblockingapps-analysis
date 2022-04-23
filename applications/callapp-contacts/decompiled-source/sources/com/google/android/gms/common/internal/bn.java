package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.stats.a;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bn.class */
public final class bn implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bo f22869a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bn(bo boVar, bl blVar) {
        this.f22869a = boVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        Handler handler;
        a aVar;
        Context context;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.f22869a.f22870a;
            synchronized (hashMap) {
                bk bkVar = (bk) message.obj;
                hashMap2 = this.f22869a.f22870a;
                bm bmVar = (bm) hashMap2.get(bkVar);
                if (bmVar != null && bmVar.a()) {
                    if (bmVar.f22867c) {
                        handler = bmVar.g.f22872c;
                        handler.removeMessages(1, bmVar.e);
                        aVar = bmVar.g.f22873d;
                        context = bmVar.g.f22871b;
                        aVar.a(context, bmVar);
                        bmVar.f22867c = false;
                        bmVar.f22866b = 2;
                    }
                    hashMap3 = this.f22869a.f22870a;
                    hashMap3.remove(bkVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            hashMap4 = this.f22869a.f22870a;
            synchronized (hashMap4) {
                bk bkVar2 = (bk) message.obj;
                hashMap5 = this.f22869a.f22870a;
                bm bmVar2 = (bm) hashMap5.get(bkVar2);
                if (bmVar2 != null && bmVar2.f22866b == 3) {
                    String valueOf = String.valueOf(bkVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = bmVar2.f;
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        componentName2 = bkVar2.f22862b;
                    }
                    ComponentName componentName3 = componentName2;
                    if (componentName2 == null) {
                        String str = bkVar2.f22861a;
                        o.a(str);
                        componentName3 = new ComponentName(str, "unknown");
                    }
                    bmVar2.onServiceDisconnected(componentName3);
                }
            }
            return true;
        }
    }
}
