package com.pubmatic.sdk.webrendering.mraid;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.pubmatic.sdk.webrendering.mraid.c */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/c.class */
public class C2021c {

    /* renamed from: c */
    private static C2021c f1138c;

    /* renamed from: a */
    private final Set<AbstractC2022a> f1139a = new HashSet();

    /* renamed from: b */
    private C2023b f1140b;

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.c$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/c$a.class */
    public interface AbstractC2022a {
        /* renamed from: a */
        void mo460a(Double d);
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.c$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/c$b.class */
    public class C2023b extends ContentObserver {

        /* renamed from: a */
        private final AudioManager f1141a;

        /* renamed from: b */
        private int f1142b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2023b(Handler handler, AudioManager audioManager) {
            super(handler);
            C2021c.this = r5;
            this.f1141a = audioManager;
            this.f1142b = audioManager.getStreamVolume(3);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            AudioManager audioManager = this.f1141a;
            if (audioManager != null) {
                int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                int streamVolume = this.f1141a.getStreamVolume(3);
                if (streamVolume == this.f1142b) {
                    return;
                }
                this.f1142b = streamVolume;
                C2021c.this.m559a(streamVolume, streamMaxVolume);
            }
        }
    }

    private C2021c() {
    }

    /* renamed from: a */
    public static C2021c m560a() {
        if (f1138c == null) {
            synchronized (C2021c.class) {
                try {
                    if (f1138c == null) {
                        f1138c = new C2021c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1138c;
    }

    /* renamed from: a */
    public void m559a(int i, int i2) {
        double d = (i * 100.0d) / i2;
        for (AbstractC2022a abstractC2022a : this.f1139a) {
            abstractC2022a.mo460a(Double.valueOf(d));
        }
    }

    /* renamed from: a */
    private void m558a(Context context) {
        if (this.f1140b == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return;
            }
            this.f1140b = new C2023b(handler, audioManager);
            context.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.f1140b);
        }
    }

    /* renamed from: b */
    private void m555b(Context context) {
        if (this.f1140b != null) {
            context.getContentResolver().unregisterContentObserver(this.f1140b);
            this.f1140b = null;
        }
    }

    /* renamed from: c */
    private void m553c(Context context) {
        m555b(context);
        f1138c = null;
    }

    /* renamed from: d */
    public static Double m552d(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            return Double.valueOf((audioManager.getStreamVolume(3) * 100.0d) / audioManager.getStreamMaxVolume(3));
        }
        return null;
    }

    /* renamed from: a */
    public void m557a(Context context, AbstractC2022a abstractC2022a) {
        if (!this.f1139a.contains(abstractC2022a)) {
            if (this.f1140b == null) {
                m558a(context);
            }
            this.f1139a.add(abstractC2022a);
        }
    }

    /* renamed from: b */
    public void m554b(Context context, AbstractC2022a abstractC2022a) {
        this.f1139a.remove(abstractC2022a);
        if (this.f1139a.isEmpty()) {
            m553c(context);
        }
    }
}
