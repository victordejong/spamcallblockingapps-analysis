package com.iab.omid.library.pubnativenet.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/a/d.class */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final Context f33331a;

    /* renamed from: b  reason: collision with root package name */
    public float f33332b;

    /* renamed from: c  reason: collision with root package name */
    private final AudioManager f33333c;

    /* renamed from: d  reason: collision with root package name */
    private final a f33334d;
    private final c e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f33331a = context;
        this.f33333c = (AudioManager) context.getSystemService("audio");
        this.f33334d = aVar;
        this.e = cVar;
    }

    public float a() {
        return a.a(this.f33333c.getStreamVolume(3), this.f33333c.getStreamMaxVolume(3));
    }

    public void b() {
        this.e.a(this.f33332b);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float a2 = a();
        if (a2 != this.f33332b) {
            this.f33332b = a2;
            b();
        }
    }
}
