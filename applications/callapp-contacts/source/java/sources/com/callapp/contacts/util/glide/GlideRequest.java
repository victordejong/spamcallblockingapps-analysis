package com.callapp.contacts.util.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.AbstractC3657l;
import com.bumptech.glide.C3651j;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.C3819g;
import com.bumptech.glide.load.engine.AbstractC3782j;
import com.bumptech.glide.load.resource.bitmap.AbstractC3870k;
import com.bumptech.glide.p112e.AbstractC3572a;
import com.bumptech.glide.p112e.AbstractC3604g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideRequest.class */
public class GlideRequest<TranscodeType> extends C3651j<TranscodeType> implements Cloneable {
    public GlideRequest(ComponentCallbacks2C3548c componentCallbacks2C3548c, ComponentCallbacks2C3653k componentCallbacks2C3653k, Class<TranscodeType> cls, Context context) {
        super(componentCallbacks2C3548c, componentCallbacks2C3653k, cls, context);
    }

    GlideRequest(Class<TranscodeType> cls, C3651j<?> c3651j) {
        super(cls, c3651j);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27105a(float f) {
        return (GlideRequest) super.mo27105a(f);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27103a(Bitmap.CompressFormat compressFormat) {
        return (GlideRequest) super.mo27103a(compressFormat);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27098a(EnumC3646h enumC3646h) {
        return (GlideRequest) super.mo27098a(enumC3646h);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27096a(AbstractC3782j abstractC3782j) {
        return (GlideRequest) super.mo27096a(abstractC3782j);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27094a(C3819g c3819g, Object obj) {
        return (GlideRequest) super.mo27094a((C3819g<C3819g>) c3819g, (C3819g) obj);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* synthetic */ AbstractC3572a mo27093a(AbstractC3826l abstractC3826l) {
        return m27079b((AbstractC3826l<Bitmap>) abstractC3826l);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27092a(AbstractC3870k abstractC3870k) {
        return (GlideRequest) super.mo27092a(abstractC3870k);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27091a(Class cls) {
        return (GlideRequest) super.mo27091a((Class<?>) cls);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27087a(boolean z) {
        return (GlideRequest) super.mo27087a(z);
    }

    @Override // com.bumptech.glide.C3651j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C3651j mo27106a() {
        return (GlideRequest) super.mo27068d();
    }

    @Override // com.bumptech.glide.C3651j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C3651j mo27102a(Bitmap bitmap) {
        return (GlideRequest) super.mo27102a(bitmap);
    }

    @Override // com.bumptech.glide.C3651j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C3651j mo27101a(Drawable drawable) {
        return (GlideRequest) super.mo27101a(drawable);
    }

    @Override // com.bumptech.glide.C3651j
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C3651j mo27082b(AbstractC3604g abstractC3604g) {
        return (GlideRequest) super.mo27082b(abstractC3604g);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> mo27097a(AbstractC3657l<?, ? super TranscodeType> abstractC3657l) {
        return (GlideRequest) super.mo27097a((AbstractC3657l) abstractC3657l);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> mo27095a(AbstractC3818f abstractC3818f) {
        return (GlideRequest) super.mo27095a(abstractC3818f);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> m27079b(AbstractC3826l<Bitmap> abstractC3826l) {
        return (GlideRequest) super.mo27093a(abstractC3826l);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> mo27090a(Integer num) {
        return (GlideRequest) super.mo27090a(num);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> mo27089a(Object obj) {
        return (GlideRequest) super.mo27089a(obj);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> mo27088a(String str) {
        return (GlideRequest) super.mo27088a(str);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27074c(int i) {
        return (GlideRequest) super.mo27074c(i);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> mo27085b(int i, int i2) {
        return (GlideRequest) super.mo27085b(i, i2);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> mo27084b(Drawable drawable) {
        return (GlideRequest) super.mo27084b(drawable);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> mo27083b(AbstractC3572a<?> abstractC3572a) {
        return (GlideRequest) super.mo27100a(abstractC3572a);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> mo27099a(AbstractC3604g<TranscodeType> abstractC3604g) {
        return (GlideRequest) super.mo27099a((AbstractC3604g) abstractC3604g);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> mo27075b(boolean z) {
        return (GlideRequest) super.mo27075b(z);
    }

    @Override // com.bumptech.glide.C3651j, com.bumptech.glide.p112e.AbstractC3572a
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (GlideRequest) super.mo27068d();
    }

    @Override // com.bumptech.glide.C3651j, com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: d */
    public final /* synthetic */ AbstractC3572a mo27068d() {
        return (GlideRequest) super.mo27068d();
    }

    /* renamed from: d */
    public final GlideRequest<TranscodeType> mo27104a(int i) {
        return (GlideRequest) super.mo27104a(i);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27066e() {
        return (GlideRequest) super.mo27066e();
    }

    /* renamed from: e */
    public final GlideRequest<TranscodeType> mo27086b(int i) {
        return (GlideRequest) super.mo27086b(i);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27064f() {
        return (GlideRequest) super.mo27064f();
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27063g() {
        return (GlideRequest) super.mo27063g();
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27062h() {
        return (GlideRequest) super.mo27062h();
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: i */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27061i() {
        return (GlideRequest) super.mo27061i();
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27060j() {
        return (GlideRequest) super.mo27060j();
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ AbstractC3572a mo27059k() {
        return (GlideRequest) super.mo27059k();
    }

    /* renamed from: m */
    public final GlideRequest<TranscodeType> m27058m() {
        return (GlideRequest) super.mo27063g();
    }

    /* renamed from: n */
    public final GlideRequest<TranscodeType> m27057n() {
        return (GlideRequest) super.mo27061i();
    }
}
