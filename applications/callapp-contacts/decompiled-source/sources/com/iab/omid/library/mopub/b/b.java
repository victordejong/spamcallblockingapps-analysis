package com.iab.omid.library.mopub.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.iab.omid.library.mopub.adsession.k;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/b.class */
public final class b {
    private static b f = new b();

    /* renamed from: a  reason: collision with root package name */
    public Context f33262a;

    /* renamed from: b  reason: collision with root package name */
    public BroadcastReceiver f33263b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f33264c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f33265d;
    public a e;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/b$a.class */
    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return f;
    }

    static /* synthetic */ void a(b bVar, boolean z) {
        if (bVar.f33265d != z) {
            bVar.f33265d = z;
            if (bVar.f33264c) {
                bVar.c();
                a aVar = bVar.e;
                if (aVar != null) {
                    aVar.a(bVar.b());
                }
            }
        }
    }

    public final boolean b() {
        return !this.f33265d;
    }

    public void c() {
        boolean z = this.f33265d;
        for (k kVar : Collections.unmodifiableCollection(com.iab.omid.library.mopub.b.a.a().f33260a)) {
            com.iab.omid.library.mopub.f.a aVar = kVar.f33256c;
            if (aVar.f33295a.get() != null) {
                e.a().a(aVar.c(), "setState", z ^ true ? "foregrounded" : "backgrounded");
            }
        }
    }
}
