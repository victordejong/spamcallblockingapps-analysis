package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/l.class */
public abstract class AbstractC3688l<T> implements AbstractC3673d<T> {

    /* renamed from: a */
    private final Uri f13840a;

    /* renamed from: b */
    private final ContentResolver f13841b;

    /* renamed from: c */
    private T f13842c;

    public AbstractC3688l(ContentResolver contentResolver, Uri uri) {
        this.f13841b = contentResolver;
        this.f13840a = uri;
    }

    /* renamed from: a */
    protected abstract T mo37516a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    /* renamed from: a */
    protected abstract void mo37515a(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public void cleanup() {
        T t = this.f13842c;
        if (t != null) {
            try {
                mo37515a(t);
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public EnumC3658a getDataSource() {
        return EnumC3658a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super T> abstractC3674a) {
        try {
            T mo37516a = mo37516a(this.f13840a, this.f13841b);
            this.f13842c = mo37516a;
            abstractC3674a.onDataReady(mo37516a);
        } catch (FileNotFoundException e) {
            Log.isLoggable("LocalUriFetcher", 3);
            abstractC3674a.onLoadFailed(e);
        }
    }
}
