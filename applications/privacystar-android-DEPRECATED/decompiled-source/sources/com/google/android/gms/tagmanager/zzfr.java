package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfr.class */
public final class zzfr implements zzfq {
    private Handler handler;
    final /* synthetic */ zzfn zzbfz;

    private zzfr(zzfn zzfnVar) {
        Context context;
        this.zzbfz = zzfnVar;
        context = this.zzbfz.zzbfo;
        this.handler = new Handler(context.getMainLooper(), new zzfs(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfr(zzfn zzfnVar, zzfo zzfoVar) {
        this(zzfnVar);
    }

    private final Message obtainMessage() {
        Object obj;
        Handler handler = this.handler;
        obj = zzfn.zzbfn;
        return handler.obtainMessage(1, obj);
    }

    @Override // com.google.android.gms.tagmanager.zzfq
    public final void cancel() {
        Object obj;
        Handler handler = this.handler;
        obj = zzfn.zzbfn;
        handler.removeMessages(1, obj);
    }

    @Override // com.google.android.gms.tagmanager.zzfq
    public final void zzh(long j) {
        Object obj;
        Handler handler = this.handler;
        obj = zzfn.zzbfn;
        handler.removeMessages(1, obj);
        this.handler.sendMessageDelayed(obtainMessage(), j);
    }

    @Override // com.google.android.gms.tagmanager.zzfq
    public final void zzpx() {
        Object obj;
        Handler handler = this.handler;
        obj = zzfn.zzbfn;
        handler.removeMessages(1, obj);
        this.handler.sendMessage(obtainMessage());
    }
}
