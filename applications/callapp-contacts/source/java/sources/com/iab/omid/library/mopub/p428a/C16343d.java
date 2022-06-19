package com.iab.omid.library.mopub.p428a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
/* renamed from: com.iab.omid.library.mopub.a.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/a/d.class */
public final class C16343d extends ContentObserver {

    /* renamed from: a */
    public final Context f57757a;

    /* renamed from: b */
    public float f57758b;

    /* renamed from: c */
    private final AudioManager f57759c;

    /* renamed from: d */
    private final C16340a f57760d;

    /* renamed from: e */
    private final AbstractC16342c f57761e;

    public C16343d(Handler handler, Context context, C16340a c16340a, AbstractC16342c abstractC16342c) {
        super(handler);
        this.f57757a = context;
        this.f57759c = (AudioManager) context.getSystemService("audio");
        this.f57760d = c16340a;
        this.f57761e = abstractC16342c;
    }

    /* renamed from: a */
    public float m7382a() {
        return C16340a.m7383a(this.f57759c.getStreamVolume(3), this.f57759c.getStreamMaxVolume(3));
    }

    /* renamed from: b */
    public void m7381b() {
        this.f57761e.mo7348a(this.f57758b);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float m7382a = m7382a();
        if (m7382a != this.f57758b) {
            this.f57758b = m7382a;
            m7381b();
        }
    }
}
