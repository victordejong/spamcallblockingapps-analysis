package androidx.work.impl.a.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/c.class */
public abstract class c<T> extends d<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f5999d = k.a("BrdcstRcvrCnstrntTrckr");
    private final BroadcastReceiver e = new BroadcastReceiver() { // from class: androidx.work.impl.a.b.c.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                c.this.a(intent);
            }
        }
    };

    public c(Context context, a aVar) {
        super(context, aVar);
    }

    public abstract IntentFilter a();

    public abstract void a(Intent intent);

    @Override // androidx.work.impl.a.b.d
    public final void c() {
        k.a();
        String.format("%s: registering receiver", getClass().getSimpleName());
        this.f6003b.registerReceiver(this.e, a());
    }

    @Override // androidx.work.impl.a.b.d
    public final void d() {
        k.a();
        String.format("%s: unregistering receiver", getClass().getSimpleName());
        this.f6003b.unregisterReceiver(this.e);
    }
}
