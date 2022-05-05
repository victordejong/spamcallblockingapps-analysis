package com.bumptech.glide.load.c;

import android.net.Uri;
import com.bumptech.glide.load.a.c;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b.class */
public class b<T> implements j<File, T> {

    /* renamed from: a  reason: collision with root package name */
    private final j<Uri, T> f3558a;

    public b(j<Uri, T> jVar) {
        this.f3558a = jVar;
    }

    @Override // com.bumptech.glide.load.c.j
    public final /* synthetic */ c a(File file, int i, int i2) {
        return this.f3558a.a(Uri.fromFile(file), i, i2);
    }
}
