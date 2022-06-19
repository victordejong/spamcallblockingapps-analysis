package com.bumptech.glide.load.p079a;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.a.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/l.class */
public abstract class AbstractC1490l<T> implements AbstractC1475d<T> {

    /* renamed from: a */
    private final Uri f4835a;

    /* renamed from: b */
    private final ContentResolver f4836b;

    /* renamed from: c */
    private T f4837c;

    public AbstractC1490l(ContentResolver contentResolver, Uri uri) {
        this.f4836b = contentResolver;
        this.f4835a = uri;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public final void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super T> abstractC1476a) {
        try {
            this.f4837c = mo16902b(this.f4835a, this.f4836b);
            abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super T>) ((T) this.f4837c));
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e);
            }
            abstractC1476a.mo16338a((Exception) e);
        }
    }

    /* renamed from: a */
    protected abstract void mo16903a(T t);

    /* renamed from: b */
    protected abstract T mo16902b(Uri uri, ContentResolver contentResolver);

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: b */
    public void mo16811b() {
        if (this.f4837c != null) {
            try {
                mo16903a(this.f4837c);
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: c */
    public void mo16810c() {
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: d */
    public EnumC1464a mo16809d() {
        return EnumC1464a.LOCAL;
    }
}
