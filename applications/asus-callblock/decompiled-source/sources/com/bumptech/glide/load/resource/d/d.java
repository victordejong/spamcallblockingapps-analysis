package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.c.b;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/d.class */
public final class d implements f<a> {

    /* renamed from: a  reason: collision with root package name */
    private final f<Bitmap> f3657a;

    /* renamed from: b  reason: collision with root package name */
    private final f<b> f3658b;
    private String c;

    public d(f<Bitmap> fVar, f<b> fVar2) {
        this.f3657a = fVar;
        this.f3658b = fVar2;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        if (this.c == null) {
            this.c = this.f3657a.a() + this.f3658b.a();
        }
        return this.c;
    }

    @Override // com.bumptech.glide.load.b
    public final /* bridge */ /* synthetic */ boolean a(Object obj, OutputStream outputStream) {
        a aVar = (a) ((k) obj).a();
        k<Bitmap> kVar = aVar.f3653b;
        return kVar != null ? this.f3657a.a(kVar, outputStream) : this.f3658b.a(aVar.f3652a, outputStream);
    }
}
