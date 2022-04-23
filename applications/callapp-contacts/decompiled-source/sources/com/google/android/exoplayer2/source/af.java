package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.upstream.r;
import com.google.android.exoplayer2.upstream.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/af.class */
public final class af extends com.google.android.exoplayer2.source.a {

    /* renamed from: a  reason: collision with root package name */
    private final j f21580a;

    /* renamed from: b  reason: collision with root package name */
    private final h.a f21581b;

    /* renamed from: c  reason: collision with root package name */
    private final Format f21582c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21583d;
    private final r e;
    private final boolean f;
    private final al g;
    private final MediaItem h;
    private v i;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/af$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final h.a f21584a;

        /* renamed from: b  reason: collision with root package name */
        r f21585b = new p();

        /* renamed from: c  reason: collision with root package name */
        boolean f21586c = true;

        /* renamed from: d  reason: collision with root package name */
        Object f21587d;
        String e;

        public a(h.a aVar) {
            this.f21584a = (h.a) com.google.android.exoplayer2.util.a.b(aVar);
        }
    }

    private af(String str, MediaItem.d dVar, h.a aVar, long j, r rVar, boolean z, Object obj) {
        this.f21581b = aVar;
        this.f21583d = j;
        this.e = rVar;
        this.f = z;
        MediaItem.a aVar2 = new MediaItem.a();
        aVar2.f20615b = Uri.EMPTY;
        aVar2.f20614a = dVar.f20626a.toString();
        List singletonList = Collections.singletonList(dVar);
        aVar2.m = (singletonList == null || singletonList.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(singletonList));
        aVar2.n = obj;
        MediaItem a2 = aVar2.a();
        this.h = a2;
        Format.a aVar3 = new Format.a();
        aVar3.f20603a = str;
        aVar3.k = dVar.f20627b;
        aVar3.f20605c = dVar.f20628c;
        aVar3.f20606d = dVar.f20629d;
        aVar3.e = dVar.e;
        aVar3.f20604b = dVar.f;
        this.f21582c = aVar3.a();
        j.a aVar4 = new j.a();
        aVar4.f22208a = dVar.f20626a;
        aVar4.i = 1;
        this.f21580a = aVar4.a();
        this.g = new ad(j, true, false, false, (Object) null, a2);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final p a(r.a aVar, b bVar, long j) {
        return new ae(this.f21580a, this.f21581b, this.i, this.f21582c, this.f21583d, this.e, a(aVar), this.f);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(p pVar) {
        ((ae) pVar).f21570b.a((Loader.e) null);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected final void a(v vVar) {
        this.i = vVar;
        a(this.g);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected final void c() {
    }

    @Override // com.google.android.exoplayer2.source.r
    public final MediaItem e() {
        return this.h;
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void f() {
    }
}
