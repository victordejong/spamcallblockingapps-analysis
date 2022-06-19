package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/l.class */
public abstract class AbstractC4022l<T> implements AbstractC4007d<T> {

    /* renamed from: d */
    private final Uri f12665d;

    /* renamed from: e */
    private final ContentResolver f12666e;

    /* renamed from: f */
    private T f12667f;

    public AbstractC4022l(ContentResolver contentResolver, Uri uri) {
        this.f12666e = contentResolver;
        this.f12665d = uri;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: b */
    public void mo23089b() {
        T t = this.f12667f;
        if (t != null) {
            try {
                mo23480c(t);
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: c */
    protected abstract void mo23480c(T t);

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: d */
    public DataSource mo23087d() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: e */
    public final void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super T> abstractC4008a) {
        try {
            T mo23479f = mo23479f(this.f12665d, this.f12666e);
            this.f12667f = mo23479f;
            abstractC4008a.mo23126f(mo23479f);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e);
            }
            abstractC4008a.mo23127c(e);
        }
    }

    /* renamed from: f */
    protected abstract T mo23479f(Uri uri, ContentResolver contentResolver);
}
