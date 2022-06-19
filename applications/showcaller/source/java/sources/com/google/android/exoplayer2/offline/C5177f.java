package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.offline.AbstractC5176e;
import com.google.android.exoplayer2.upstream.C5494v;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.offline.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/f.class */
public final class C5177f<T extends AbstractC5176e<T>> implements C5494v.AbstractC5495a<T> {

    /* renamed from: a */
    private final C5494v.AbstractC5495a<? extends T> f16256a;

    /* renamed from: b */
    private final List<StreamKey> f16257b;

    public C5177f(C5494v.AbstractC5495a<? extends T> abstractC5495a, List<StreamKey> list) {
        this.f16256a = abstractC5495a;
        this.f16257b = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.exoplayer2.offline.e] */
    /* renamed from: b */
    public T mo18951a(Uri uri, InputStream inputStream) {
        T mo18951a = this.f16256a.mo18951a(uri, inputStream);
        List<StreamKey> list = this.f16257b;
        T t = mo18951a;
        if (list != null) {
            t = list.isEmpty() ? mo18951a : (AbstractC5176e) mo18951a.mo19907a(this.f16257b);
        }
        return t;
    }
}
