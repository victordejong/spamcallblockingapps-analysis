package com.iab.omid.library.pubnativenet.p437a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
/* renamed from: com.iab.omid.library.pubnativenet.a.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/a/d.class */
public final class C16411d extends ContentObserver {

    /* renamed from: a */
    public final Context f57889a;

    /* renamed from: b */
    public float f57890b;

    /* renamed from: c */
    private final AudioManager f57891c;

    /* renamed from: d */
    private final C16408a f57892d;

    /* renamed from: e */
    private final AbstractC16410c f57893e;

    public C16411d(Handler handler, Context context, C16408a c16408a, AbstractC16410c abstractC16410c) {
        super(handler);
        this.f57889a = context;
        this.f57891c = (AudioManager) context.getSystemService("audio");
        this.f57892d = c16408a;
        this.f57893e = abstractC16410c;
    }

    /* renamed from: a */
    public float m7282a() {
        return C16408a.m7283a(this.f57891c.getStreamVolume(3), this.f57891c.getStreamMaxVolume(3));
    }

    /* renamed from: b */
    public void m7281b() {
        this.f57893e.mo7246a(this.f57890b);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float m7282a = m7282a();
        if (m7282a != this.f57890b) {
            this.f57890b = m7282a;
            m7281b();
        }
    }
}
