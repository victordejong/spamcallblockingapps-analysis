package com.callerid.block.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.callerid.block.p040h.p041a.p050f.C1032g;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$k.class */
public class a$k extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ a f4372a;

    private a$k(a aVar) {
        this.f4372a = aVar;
    }

    public /* synthetic */ a$k(a aVar, a$a a_a) {
        this(aVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.callerid.block.STARRED_DATA".equals(intent.getAction())) {
            C1032g.m10325f(new a(this));
        }
    }
}
