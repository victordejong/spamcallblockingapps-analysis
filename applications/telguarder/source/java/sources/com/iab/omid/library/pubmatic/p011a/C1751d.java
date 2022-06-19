package com.iab.omid.library.pubmatic.p011a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* renamed from: com.iab.omid.library.pubmatic.a.d */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/a/d.class */
public final class C1751d extends ContentObserver {

    /* renamed from: a */
    private final Context f209a;

    /* renamed from: b */
    private final AudioManager f210b;

    /* renamed from: c */
    private final C1748a f211c;

    /* renamed from: d */
    private final AbstractC1750c f212d;

    /* renamed from: e */
    private float f213e;

    public C1751d(Handler handler, Context context, C1748a c1748a, AbstractC1750c abstractC1750c) {
        super(handler);
        this.f209a = context;
        this.f210b = (AudioManager) context.getSystemService("audio");
        this.f211c = c1748a;
        this.f212d = abstractC1750c;
    }

    /* renamed from: a */
    private boolean m1334a(float f) {
        return f != this.f213e;
    }

    /* renamed from: c */
    private float m1332c() {
        return this.f211c.m1337a(this.f210b.getStreamVolume(3), this.f210b.getStreamMaxVolume(3));
    }

    /* renamed from: d */
    private void m1331d() {
        this.f212d.mo1267a(this.f213e);
    }

    /* renamed from: a */
    public void m1335a() {
        this.f213e = m1332c();
        m1331d();
        this.f209a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* renamed from: b */
    public void m1333b() {
        this.f209a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float m1332c = m1332c();
        if (m1334a(m1332c)) {
            this.f213e = m1332c;
            m1331d();
        }
    }
}
