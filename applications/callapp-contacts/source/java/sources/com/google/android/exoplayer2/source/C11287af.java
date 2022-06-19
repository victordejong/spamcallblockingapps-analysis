package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.C11583p;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C11593a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.source.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/af.class */
public final class C11287af extends AbstractC11266a {

    /* renamed from: a */
    private final C11570j f37057a;

    /* renamed from: b */
    private final AbstractC11567h.AbstractC11568a f37058b;

    /* renamed from: c */
    private final Format f37059c;

    /* renamed from: d */
    private final long f37060d;

    /* renamed from: e */
    private final AbstractC11585r f37061e;

    /* renamed from: f */
    private final boolean f37062f;

    /* renamed from: g */
    private final AbstractC10864al f37063g;

    /* renamed from: h */
    private final MediaItem f37064h;

    /* renamed from: i */
    private AbstractC11590v f37065i;

    /* renamed from: com.google.android.exoplayer2.source.af$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/af$a.class */
    public static final class C11289a {

        /* renamed from: a */
        final AbstractC11567h.AbstractC11568a f37066a;

        /* renamed from: b */
        AbstractC11585r f37067b = new C11583p();

        /* renamed from: c */
        boolean f37068c = true;

        /* renamed from: d */
        Object f37069d;

        /* renamed from: e */
        String f37070e;

        public C11289a(AbstractC11567h.AbstractC11568a abstractC11568a) {
            this.f37066a = (AbstractC11567h.AbstractC11568a) C11593a.m20020b(abstractC11568a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C11287af(String str, MediaItem.C10833d c10833d, AbstractC11567h.AbstractC11568a abstractC11568a, long j, AbstractC11585r abstractC11585r, boolean z, Object obj) {
        this.f37058b = abstractC11568a;
        this.f37060d = j;
        this.f37061e = abstractC11585r;
        this.f37062f = z;
        MediaItem.C10830a c10830a = new MediaItem.C10830a();
        c10830a.f34819b = Uri.EMPTY;
        c10830a.f34818a = c10833d.f34857a.toString();
        List singletonList = Collections.singletonList(c10833d);
        c10830a.f34830m = (singletonList == null || singletonList.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(singletonList));
        c10830a.f34831n = obj;
        MediaItem m22318a = c10830a.m22318a();
        this.f37064h = m22318a;
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = c10833d.f34858b;
        c10828a.f34784c = c10833d.f34859c;
        c10828a.f34785d = c10833d.f34860d;
        c10828a.f34786e = c10833d.f34861e;
        c10828a.f34783b = c10833d.f34862f;
        this.f37059c = c10828a.m22321a();
        C11570j.C11572a c11572a = new C11570j.C11572a();
        c11572a.f38523a = c10833d.f34857a;
        c11572a.f38531i = 1;
        this.f37057a = c11572a.m20073a();
        this.f37063g = new C11274ad(j, true, false, false, (Object) null, m22318a);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final AbstractC11312p mo20859a(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        return new C11283ae(this.f37057a, this.f37058b, this.f37065i, this.f37059c, this.f37060d, this.f37061e, m21012a(c11316a), this.f37062f);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20860a(AbstractC11312p abstractC11312p) {
        ((C11283ae) abstractC11312p).f37037b.m20205a((Loader.AbstractC11530e) null);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    protected final void mo20858a(AbstractC11590v abstractC11590v) {
        this.f37065i = abstractC11590v;
        m21013a(this.f37063g);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    protected final void mo20857c() {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: e */
    public final MediaItem mo20856e() {
        return this.f37064h;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: f */
    public final void mo20855f() {
    }
}
