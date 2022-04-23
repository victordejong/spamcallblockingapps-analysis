package com.bumptech.glide.load.c;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.b;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/h.class */
public final class h implements b<g> {

    /* renamed from: a  reason: collision with root package name */
    private final b<InputStream> f3573a;

    /* renamed from: b  reason: collision with root package name */
    private final b<ParcelFileDescriptor> f3574b;
    private String c;

    public h(b<InputStream> bVar, b<ParcelFileDescriptor> bVar2) {
        this.f3573a = bVar;
        this.f3574b = bVar2;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        if (this.c == null) {
            this.c = this.f3573a.a() + this.f3574b.a();
        }
        return this.c;
    }

    @Override // com.bumptech.glide.load.b
    public final /* bridge */ /* synthetic */ boolean a(g gVar, OutputStream outputStream) {
        g gVar2 = gVar;
        return gVar2.f3571a != null ? this.f3573a.a(gVar2.f3571a, outputStream) : this.f3574b.a(gVar2.f3572b, outputStream);
    }
}
