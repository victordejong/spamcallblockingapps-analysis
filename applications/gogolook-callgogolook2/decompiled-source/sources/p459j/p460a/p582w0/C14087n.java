package p459j.p460a.p582w0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.n */
/* loaded from: classes3-dex2jar.jar:j/a/w0/n.class */
public final class C14087n {
    static {
        new C14087n();
    }

    /* renamed from: a */
    public static final void m2601a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        C15149k.m377b(context, "context");
        C15149k.m377b(broadcastReceiver, "receiver");
        C15149k.m377b(intentFilter, "intentFilter");
        context.registerReceiver(broadcastReceiver, intentFilter, "gogolook.callgogolook2.permission.SIGNATURE", null);
    }
}
