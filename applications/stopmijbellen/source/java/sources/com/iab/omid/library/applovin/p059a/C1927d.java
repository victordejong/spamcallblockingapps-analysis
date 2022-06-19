package com.iab.omid.library.applovin.p059a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* renamed from: com.iab.omid.library.applovin.a.d */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/a/d.class */
public final class C1927d extends ContentObserver {

    /* renamed from: a */
    private final Context f7140a;

    /* renamed from: b */
    private final AudioManager f7141b;

    /* renamed from: c */
    private final C1924a f7142c;

    /* renamed from: d */
    private final AbstractC1926c f7143d;

    /* renamed from: e */
    private float f7144e;

    public C1927d(Handler handler, Context context, C1924a c1924a, AbstractC1926c abstractC1926c) {
        super(handler);
        this.f7140a = context;
        this.f7141b = (AudioManager) context.getSystemService("audio");
        this.f7142c = c1924a;
        this.f7143d = abstractC1926c;
    }

    /* renamed from: a */
    private boolean m4201a(float f) {
        return f != this.f7144e;
    }

    /* renamed from: c */
    private float m4199c() {
        return this.f7142c.m4204a(this.f7141b.getStreamVolume(3), this.f7141b.getStreamMaxVolume(3));
    }

    /* renamed from: d */
    private void m4198d() {
        this.f7143d.mo4131a(this.f7144e);
    }

    /* renamed from: a */
    public void m4202a() {
        this.f7144e = m4199c();
        m4198d();
        this.f7140a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* renamed from: b */
    public void m4200b() {
        this.f7140a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float m4199c = m4199c();
        if (m4201a(m4199c)) {
            this.f7144e = m4199c;
            m4198d();
        }
    }
}
