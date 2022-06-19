package com.iab.omid.library.verizonmedia.p446a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* renamed from: com.iab.omid.library.verizonmedia.a.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/a/d.class */
public final class C16477d extends ContentObserver {

    /* renamed from: a */
    public final Context f58018a;

    /* renamed from: b */
    private final AudioManager f58019b;

    /* renamed from: c */
    private final C16474a f58020c;

    /* renamed from: d */
    private final AbstractC16476c f58021d;

    /* renamed from: e */
    private float f58022e;

    public C16477d(Handler handler, Context context, C16474a c16474a, AbstractC16476c abstractC16476c) {
        super(handler);
        this.f58018a = context;
        this.f58019b = (AudioManager) context.getSystemService("audio");
        this.f58020c = c16474a;
        this.f58021d = abstractC16476c;
    }

    /* renamed from: b */
    private float m7177b() {
        return C16474a.m7179a(this.f58019b.getStreamVolume(3), this.f58019b.getStreamMaxVolume(3));
    }

    /* renamed from: c */
    private void m7176c() {
        this.f58021d.mo7126a(this.f58022e);
    }

    /* renamed from: a */
    public final void m7178a() {
        this.f58022e = m7177b();
        m7176c();
        this.f58018a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float m7177b = m7177b();
        if (m7177b != this.f58022e) {
            this.f58022e = m7177b;
            m7176c();
        }
    }
}
