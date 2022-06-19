package com.explorestack.iab.vast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.view.View;
import java.util.WeakHashMap;
/* renamed from: com.explorestack.iab.vast.b */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/b.class */
public class C9653b {

    /* renamed from: b */
    private static boolean f32759b = false;

    /* renamed from: c */
    private static boolean f32760c = false;

    /* renamed from: e */
    private static final IntentFilter f32762e;

    /* renamed from: a */
    static final WeakHashMap<View, AbstractC9655a> f32758a = new WeakHashMap<>();

    /* renamed from: d */
    private static final BroadcastReceiver f32761d = new BroadcastReceiver() { // from class: com.explorestack.iab.vast.b.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (C9653b.class) {
                try {
                    boolean unused = C9653b.f32760c = "android.intent.action.SCREEN_ON".equals(intent.getAction());
                } catch (Throwable th) {
                    throw th;
                }
            }
            synchronized (C9653b.f32758a) {
                for (AbstractC9655a abstractC9655a : C9653b.f32758a.values()) {
                    boolean unused2 = C9653b.f32760c;
                    abstractC9655a.mo23891a();
                }
            }
        }
    };

    /* renamed from: com.explorestack.iab.vast.b$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/b$a.class */
    public interface AbstractC9655a {
        /* renamed from: a */
        void mo23891a();
    }

    static {
        IntentFilter intentFilter = new IntentFilter();
        f32762e = intentFilter;
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    /* renamed from: a */
    public static void m23895a(View view) {
        if (!f32759b) {
            return;
        }
        WeakHashMap<View, AbstractC9655a> weakHashMap = f32758a;
        synchronized (weakHashMap) {
            weakHashMap.remove(view);
        }
    }

    /* renamed from: a */
    public static void m23894a(View view, AbstractC9655a abstractC9655a) {
        m23892b(view.getContext());
        WeakHashMap<View, AbstractC9655a> weakHashMap = f32758a;
        synchronized (weakHashMap) {
            weakHashMap.put(view, abstractC9655a);
        }
    }

    /* renamed from: a */
    public static boolean m23896a(Context context) {
        m23892b(context);
        return f32760c;
    }

    /* renamed from: b */
    private static void m23892b(Context context) {
        synchronized (C9653b.class) {
            try {
                if (f32759b) {
                    return;
                }
                synchronized (C9653b.class) {
                    if (!f32759b) {
                        f32760c = ((PowerManager) context.getSystemService("power")).isScreenOn();
                        context.getApplicationContext().registerReceiver(f32761d, f32762e);
                        f32759b = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
