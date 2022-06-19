package com.iab.omid.library.mopub.publisher;

import android.webkit.WebView;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/publisher/b$1.class */
public class b$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b f8386a;

    /* renamed from: b */
    private WebView f8387b;

    public b$1(b bVar) {
        this.f8386a = bVar;
        this.f8387b = b.a(bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8387b.destroy();
    }
}
