package com.explorestack.iab.vast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.view.View;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/b.class */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f19270b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f19271c = false;
    private static final IntentFilter e;

    /* renamed from: a  reason: collision with root package name */
    static final WeakHashMap<View, a> f19269a = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static final BroadcastReceiver f19272d = new BroadcastReceiver() { // from class: com.explorestack.iab.vast.b.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (b.class) {
                try {
                    boolean unused = b.f19271c = "android.intent.action.SCREEN_ON".equals(intent.getAction());
                } catch (Throwable th) {
                    throw th;
                }
            }
            synchronized (b.f19269a) {
                for (a aVar : b.f19269a.values()) {
                    boolean unused2 = b.f19271c;
                    aVar.a();
                }
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/b$a.class */
    public interface a {
        void a();
    }

    static {
        IntentFilter intentFilter = new IntentFilter();
        e = intentFilter;
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    public static void a(View view) {
        if (f19270b) {
            WeakHashMap<View, a> weakHashMap = f19269a;
            synchronized (weakHashMap) {
                weakHashMap.remove(view);
            }
        }
    }

    public static void a(View view, a aVar) {
        b(view.getContext());
        WeakHashMap<View, a> weakHashMap = f19269a;
        synchronized (weakHashMap) {
            weakHashMap.put(view, aVar);
        }
    }

    public static boolean a(Context context) {
        b(context);
        return f19271c;
    }

    private static void b(Context context) {
        synchronized (b.class) {
            try {
                if (!f19270b) {
                    synchronized (b.class) {
                        if (!f19270b) {
                            f19271c = ((PowerManager) context.getSystemService("power")).isScreenOn();
                            context.getApplicationContext().registerReceiver(f19272d, e);
                            f19270b = true;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
