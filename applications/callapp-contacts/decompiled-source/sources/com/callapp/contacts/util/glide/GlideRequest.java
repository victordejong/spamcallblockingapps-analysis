package com.callapp.contacts.util.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.c;
import com.bumptech.glide.e.a;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.bumptech.glide.k;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.l;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/GlideRequest.class */
public class GlideRequest<TranscodeType> extends j<TranscodeType> implements Cloneable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public GlideRequest(c cVar, k kVar, Class<TranscodeType> cls, Context context) {
        super(cVar, kVar, cls, context);
    }

    GlideRequest(Class<TranscodeType> cls, j<?> jVar) {
        super(cls, jVar);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(float f) {
        return (GlideRequest) super.a(f);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(Bitmap.CompressFormat compressFormat) {
        return (GlideRequest) super.a(compressFormat);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(h hVar) {
        return (GlideRequest) super.a(hVar);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(com.bumptech.glide.load.engine.j jVar) {
        return (GlideRequest) super.a(jVar);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(g gVar, Object obj) {
        return (GlideRequest) super.a((g<g>) gVar, (g) obj);
    }

    @Override // com.bumptech.glide.e.a
    public final /* synthetic */ a a(l lVar) {
        return b((l<Bitmap>) lVar);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(com.bumptech.glide.load.resource.bitmap.k kVar) {
        return (GlideRequest) super.a(kVar);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(Class cls) {
        return (GlideRequest) super.a((Class<?>) cls);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a a(boolean z) {
        return (GlideRequest) super.a(z);
    }

    @Override // com.bumptech.glide.j
    public final /* bridge */ /* synthetic */ j a() {
        return (GlideRequest) super.d();
    }

    @Override // com.bumptech.glide.j
    public final /* bridge */ /* synthetic */ j a(Bitmap bitmap) {
        return (GlideRequest) super.a(bitmap);
    }

    @Override // com.bumptech.glide.j
    public final /* bridge */ /* synthetic */ j a(Drawable drawable) {
        return (GlideRequest) super.a(drawable);
    }

    @Override // com.bumptech.glide.j
    public final /* bridge */ /* synthetic */ j b(com.bumptech.glide.e.g gVar) {
        return (GlideRequest) super.b(gVar);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> a(com.bumptech.glide.l<?, ? super TranscodeType> lVar) {
        return (GlideRequest) super.a((com.bumptech.glide.l) lVar);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> a(f fVar) {
        return (GlideRequest) super.a(fVar);
    }

    public final GlideRequest<TranscodeType> b(l<Bitmap> lVar) {
        return (GlideRequest) super.a(lVar);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> a(Integer num) {
        return (GlideRequest) super.a(num);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> a(Object obj) {
        return (GlideRequest) super.a(obj);
    }

    /* renamed from: b */
    public final GlideRequest<TranscodeType> a(String str) {
        return (GlideRequest) super.a(str);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a c(int i) {
        return (GlideRequest) super.c(i);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> b(int i, int i2) {
        return (GlideRequest) super.b(i, i2);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> b(Drawable drawable) {
        return (GlideRequest) super.b(drawable);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> b(a<?> aVar) {
        return (GlideRequest) super.a(aVar);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> a(com.bumptech.glide.e.g<TranscodeType> gVar) {
        return (GlideRequest) super.a((com.bumptech.glide.e.g) gVar);
    }

    /* renamed from: c */
    public final GlideRequest<TranscodeType> b(boolean z) {
        return (GlideRequest) super.b(z);
    }

    @Override // com.bumptech.glide.j, com.bumptech.glide.e.a
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (GlideRequest) super.d();
    }

    @Override // com.bumptech.glide.j, com.bumptech.glide.e.a
    public final /* synthetic */ a d() {
        return (GlideRequest) super.d();
    }

    /* renamed from: d */
    public final GlideRequest<TranscodeType> a(int i) {
        return (GlideRequest) super.a(i);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a e() {
        return (GlideRequest) super.e();
    }

    /* renamed from: e */
    public final GlideRequest<TranscodeType> b(int i) {
        return (GlideRequest) super.b(i);
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a f() {
        return (GlideRequest) super.f();
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a g() {
        return (GlideRequest) super.g();
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a h() {
        return (GlideRequest) super.h();
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a i() {
        return (GlideRequest) super.i();
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a j() {
        return (GlideRequest) super.j();
    }

    @Override // com.bumptech.glide.e.a
    public final /* bridge */ /* synthetic */ a k() {
        return (GlideRequest) super.k();
    }

    public final GlideRequest<TranscodeType> m() {
        return (GlideRequest) super.g();
    }

    public final GlideRequest<TranscodeType> n() {
        return (GlideRequest) super.i();
    }
}
