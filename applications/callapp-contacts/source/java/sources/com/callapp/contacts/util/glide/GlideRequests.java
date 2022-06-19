package com.callapp.contacts.util.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.C3651j;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import com.bumptech.glide.load.resource.p125d.C3909c;
import com.bumptech.glide.manager.AbstractC3943l;
import com.bumptech.glide.manager.AbstractC3949p;
import com.bumptech.glide.p112e.C3605h;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideRequests.class */
public class GlideRequests extends ComponentCallbacks2C3653k {
    public GlideRequests(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3943l abstractC3943l, AbstractC3949p abstractC3949p, Context context) {
        super(componentCallbacks2C3548c, abstractC3943l, abstractC3949p, context);
    }

    @Override // com.bumptech.glide.ComponentCallbacks2C3653k
    /* renamed from: a */
    public final /* synthetic */ C3651j mo27054a(Class cls) {
        return new GlideRequest(this.f13785a, this, cls, this.f13786b);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> mo27056a(Bitmap bitmap) {
        return (GlideRequest) super.mo27056a(bitmap);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> mo27055a(Drawable drawable) {
        return (GlideRequest) super.mo27055a(drawable);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> mo27053a(Object obj) {
        return (GlideRequest) super.mo27053a(obj);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> mo27052a(String str) {
        return (GlideRequest) super.mo27052a(str);
    }

    @Override // com.bumptech.glide.ComponentCallbacks2C3653k
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C3651j mo27047d() {
        return (GlideRequest) super.mo27047d();
    }

    @Override // com.bumptech.glide.ComponentCallbacks2C3653k
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C3651j mo27046e() {
        return (GlideRequest) super.mo27046e();
    }

    @Override // com.bumptech.glide.ComponentCallbacks2C3653k
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ C3651j mo27045f() {
        return (GlideRequest) super.mo27045f();
    }

    @Override // com.bumptech.glide.ComponentCallbacks2C3653k
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ C3651j mo27044g() {
        return (GlideRequest) super.mo27044g();
    }

    /* renamed from: h */
    public final GlideRequest<Bitmap> m27043h() {
        return (GlideRequest) super.mo27047d();
    }

    /* renamed from: i */
    public final GlideRequest<C3909c> m27042i() {
        return (GlideRequest) super.mo27046e();
    }

    /* renamed from: j */
    public final GlideRequest<File> m27041j() {
        return (GlideRequest) super.mo27044g();
    }

    @Override // com.bumptech.glide.ComponentCallbacks2C3653k
    public void setRequestOptions(C3605h c3605h) {
        if (c3605h instanceof GlideOptions) {
            super.setRequestOptions(c3605h);
        } else {
            super.setRequestOptions(new GlideOptions().mo27083b(c3605h));
        }
    }
}
