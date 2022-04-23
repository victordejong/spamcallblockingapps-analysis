package com.callapp.contacts.util.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.c;
import com.bumptech.glide.e.h;
import com.bumptech.glide.j;
import com.bumptech.glide.k;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.manager.p;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideRequests.class */
public class GlideRequests extends k {
    public GlideRequests(c cVar, l lVar, p pVar, Context context) {
        super(cVar, lVar, pVar, context);
    }

    @Override // com.bumptech.glide.k
    public final /* synthetic */ j a(Class cls) {
        return new GlideRequest(this.f7373a, this, cls, this.f7374b);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> a(Bitmap bitmap) {
        return (GlideRequest) super.a(bitmap);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> a(Drawable drawable) {
        return (GlideRequest) super.a(drawable);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> a(Object obj) {
        return (GlideRequest) super.a(obj);
    }

    /* renamed from: b */
    public final GlideRequest<Drawable> a(String str) {
        return (GlideRequest) super.a(str);
    }

    @Override // com.bumptech.glide.k
    public final /* bridge */ /* synthetic */ j d() {
        return (GlideRequest) super.d();
    }

    @Override // com.bumptech.glide.k
    public final /* bridge */ /* synthetic */ j e() {
        return (GlideRequest) super.e();
    }

    @Override // com.bumptech.glide.k
    public final /* bridge */ /* synthetic */ j f() {
        return (GlideRequest) super.f();
    }

    @Override // com.bumptech.glide.k
    public final /* bridge */ /* synthetic */ j g() {
        return (GlideRequest) super.g();
    }

    public final GlideRequest<Bitmap> h() {
        return (GlideRequest) super.d();
    }

    public final GlideRequest<com.bumptech.glide.load.resource.d.c> i() {
        return (GlideRequest) super.e();
    }

    public final GlideRequest<File> j() {
        return (GlideRequest) super.g();
    }

    @Override // com.bumptech.glide.k
    public void setRequestOptions(h hVar) {
        if (hVar instanceof GlideOptions) {
            super.setRequestOptions(hVar);
        } else {
            super.setRequestOptions(new GlideOptions().b(hVar));
        }
    }
}
