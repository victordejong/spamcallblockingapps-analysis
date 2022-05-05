package p081h.p203i.p204a.p224e.p235d.p248r;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import java.util.Collections;
import p081h.p203i.p204a.p224e.p235d.p249s.C7073e;
/* renamed from: h.i.a.e.d.r.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/r/a.class */
public class C7064a {

    /* renamed from: a */
    public static final Object f17179a = new Object();

    /* renamed from: b */
    public static volatile C7064a f17180b;

    public C7064a() {
        Collections.emptyList();
        Collections.emptyList();
        Collections.emptyList();
        Collections.emptyList();
    }

    /* renamed from: a */
    public static C7064a m21184a() {
        if (f17180b == null) {
            synchronized (f17179a) {
                if (f17180b == null) {
                    f17180b = new C7064a();
                }
            }
        }
        return f17180b;
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: a */
    public void m21182a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    /* renamed from: a */
    public boolean m21183a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m21181a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    /* renamed from: a */
    public final boolean m21181a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        ComponentName component = intent.getComponent();
        if (component == null ? false : C7073e.m21154c(context, component.getPackageName())) {
            return false;
        }
        return context.bindService(intent, serviceConnection, i);
    }
}
