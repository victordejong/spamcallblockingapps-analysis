package p200p4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p201p6.C4018c;
/* renamed from: p4.c */
/* loaded from: classes-dex2jar.jar:p4/c.class */
public abstract class AbstractC4015c {

    /* renamed from: a */
    public final C4018c f12626a;

    /* renamed from: b */
    public final IntentFilter f12627b;

    /* renamed from: c */
    public final Context f12628c;

    /* renamed from: d */
    public final Set f12629d = new HashSet();

    /* renamed from: e */
    public C4014b f12630e = null;

    /* renamed from: f */
    public volatile boolean f12631f = false;

    public AbstractC4015c(C4018c c4018c, IntentFilter intentFilter, Context context) {
        this.f12626a = c4018c;
        this.f12627b = intentFilter;
        Context applicationContext = context.getApplicationContext();
        this.f12628c = applicationContext != null ? applicationContext : context;
    }

    /* renamed from: a */
    public abstract void mo1515a(Context context, Intent intent);

    /* renamed from: b */
    public final void m1514b() {
        C4014b c4014b;
        if ((this.f12631f || !this.f12629d.isEmpty()) && this.f12630e == null) {
            C4014b c4014b2 = new C4014b(this);
            this.f12630e = c4014b2;
            this.f12628c.registerReceiver(c4014b2, this.f12627b);
        }
        if (this.f12631f || !this.f12629d.isEmpty() || (c4014b = this.f12630e) == null) {
            return;
        }
        this.f12628c.unregisterReceiver(c4014b);
        this.f12630e = null;
    }

    /* renamed from: c */
    public final void m1513c(Object obj) {
        synchronized (this) {
            Iterator it2 = new HashSet(this.f12629d).iterator();
            while (it2.hasNext()) {
                ((AbstractC4013a) it2.next()).mo1516a(obj);
            }
        }
    }
}
