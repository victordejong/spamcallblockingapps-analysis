package com.iab.omid.library.verizonmedia.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/a/d.class */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final Context f33426a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f33427b;

    /* renamed from: c  reason: collision with root package name */
    private final a f33428c;

    /* renamed from: d  reason: collision with root package name */
    private final c f33429d;
    private float e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f33426a = context;
        this.f33427b = (AudioManager) context.getSystemService("audio");
        this.f33428c = aVar;
        this.f33429d = cVar;
    }

    private float b() {
        return a.a(this.f33427b.getStreamVolume(3), this.f33427b.getStreamMaxVolume(3));
    }

    private void c() {
        this.f33429d.a(this.e);
    }

    public final void a() {
        this.e = b();
        c();
        this.f33426a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float b2 = b();
        if (b2 != this.e) {
            this.e = b2;
            c();
        }
    }
}
