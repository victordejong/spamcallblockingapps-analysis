package com.allinone.callerid.main;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.ComponentCallbacks2C3971i;
import com.bumptech.glide.manager.AbstractC4344l;
import com.bumptech.glide.manager.AbstractC4350p;
import com.bumptech.glide.request.C4401e;
/* renamed from: com.allinone.callerid.main.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/d.class */
public class C3070d extends ComponentCallbacks2C3971i {
    public C3070d(ComponentCallbacks2C3958c componentCallbacks2C3958c, AbstractC4344l abstractC4344l, AbstractC4350p abstractC4350p, Context context) {
        super(componentCallbacks2C3958c, abstractC4344l, abstractC4350p, context);
    }

    /* renamed from: C */
    public <ResourceType> C3069c<ResourceType> mo23638j(Class<ResourceType> cls) {
        return new C3069c<>(this.f12504g, this, cls, this.f12505h);
    }

    /* renamed from: D */
    public C3069c<Bitmap> mo23637k() {
        return (C3069c) super.mo23637k();
    }

    /* renamed from: E */
    public C3069c<Drawable> mo23636l() {
        return (C3069c) super.mo23636l();
    }

    /* renamed from: F */
    public C3069c<Drawable> mo23631q(Uri uri) {
        return (C3069c) super.mo23631q(uri);
    }

    /* renamed from: G */
    public C3069c<Drawable> m26049G(Object obj) {
        return (C3069c) super.m23630r(obj);
    }

    /* renamed from: H */
    public C3069c<Drawable> mo23629s(String str) {
        return (C3069c) super.mo23629s(str);
    }

    /* renamed from: I */
    public C3070d mo23624x(C4401e c4401e) {
        C3070d c3070d;
        synchronized (this) {
            c3070d = (C3070d) super.mo23624x(c4401e);
        }
        return c3070d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.ComponentCallbacks2C3971i
    /* renamed from: y */
    public void mo23623y(C4401e c4401e) {
        if (c4401e instanceof C3068b) {
            super.mo23623y(c4401e);
        } else {
            super.mo23623y(new C3068b().mo22632a(c4401e));
        }
    }
}
