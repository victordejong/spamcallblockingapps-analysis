package com.bumptech.glide.load.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/g.class */
public abstract class g<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f3482a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3483b;
    private T c;

    public g(Context context, Uri uri) {
        this.f3483b = context.getApplicationContext();
        this.f3482a = uri;
    }

    @Override // com.bumptech.glide.load.a.c
    public final T a(int i) {
        this.c = a(this.f3482a, this.f3483b.getContentResolver());
        return this.c;
    }

    protected abstract T a(Uri uri, ContentResolver contentResolver);

    @Override // com.bumptech.glide.load.a.c
    public final void a() {
        if (this.c != null) {
            try {
                a((g<T>) this.c);
            } catch (IOException e) {
                if (Log.isLoggable("LocalUriFetcher", 2)) {
                    Log.v("LocalUriFetcher", "failed to close data", e);
                }
            }
        }
    }

    protected abstract void a(T t);

    @Override // com.bumptech.glide.load.a.c
    public final String b() {
        return this.f3482a.toString();
    }

    @Override // com.bumptech.glide.load.a.c
    public final void c() {
    }
}
