package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/l.class */
public abstract class l<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f7414a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f7415b;

    /* renamed from: c  reason: collision with root package name */
    private T f7416c;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f7415b = contentResolver;
        this.f7414a = uri;
    }

    protected abstract T a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    protected abstract void a(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public void cleanup() {
        T t = this.f7416c;
        if (t != null) {
            try {
                a(t);
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public a getDataSource() {
        return a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void loadData(h hVar, d.a<? super T> aVar) {
        try {
            T a2 = a(this.f7414a, this.f7415b);
            this.f7416c = a2;
            aVar.onDataReady(a2);
        } catch (FileNotFoundException e) {
            Log.isLoggable("LocalUriFetcher", 3);
            aVar.onLoadFailed(e);
        }
    }
}
