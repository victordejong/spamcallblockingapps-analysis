package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.C5845s;
import com.google.android.gms.ads.formats.AbstractC5610d;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a00.class */
public final class a00 implements AbstractC5610d {

    /* renamed from: a */
    private final AbstractC7237zz f19782a;

    /* renamed from: b */
    private final MediaView f19783b;

    /* renamed from: c */
    private final C5845s f19784c = new C5845s();

    public a00(AbstractC7237zz abstractC7237zz) {
        Context context;
        this.f19782a = abstractC7237zz;
        try {
            context = (Context) BinderC6255b.m16745J0(abstractC7237zz.mo8132j());
        } catch (RemoteException | NullPointerException e) {
            ei0.m15466d("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (true != this.f19782a.mo8137S(BinderC6255b.m16744m2(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                ei0.m15466d("", e2);
                mediaView = null;
            }
        }
        this.f19783b = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.AbstractC5610d
    /* renamed from: a */
    public final String mo16720a() {
        try {
            return this.f19782a.mo8136f();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            return null;
        }
    }

    /* renamed from: b */
    public final AbstractC7237zz m16719b() {
        return this.f19782a;
    }
}
