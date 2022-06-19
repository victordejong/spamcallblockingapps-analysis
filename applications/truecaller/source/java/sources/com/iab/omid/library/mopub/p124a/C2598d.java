package com.iab.omid.library.mopub.p124a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* renamed from: com.iab.omid.library.mopub.a.d */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/a/d.class */
public final class C2598d extends ContentObserver {

    /* renamed from: a */
    private final Context f8333a;

    /* renamed from: b */
    private final AudioManager f8334b;

    /* renamed from: c */
    private final C2595a f8335c;

    /* renamed from: d */
    private final AbstractC2597c f8336d;

    /* renamed from: e */
    private float f8337e;

    public C2598d(Handler handler, Context context, C2595a c2595a, AbstractC2597c abstractC2597c) {
        super(handler);
        this.f8333a = context;
        this.f8334b = (AudioManager) context.getSystemService("audio");
        this.f8335c = c2595a;
        this.f8336d = abstractC2597c;
    }

    /* renamed from: a */
    private boolean m36489a(float f) {
        return f != this.f8337e;
    }

    /* renamed from: c */
    private float m36487c() {
        return this.f8335c.m36493a(this.f8334b.getStreamVolume(3), this.f8334b.getStreamMaxVolume(3));
    }

    /* renamed from: d */
    private void m36486d() {
        this.f8336d.m36491a(this.f8337e);
    }

    /* renamed from: a */
    public void m36490a() {
        this.f8337e = m36487c();
        m36486d();
        this.f8333a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* renamed from: b */
    public void m36488b() {
        this.f8333a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float m36487c = m36487c();
        if (m36489a(m36487c)) {
            this.f8337e = m36487c;
            m36486d();
        }
    }
}
