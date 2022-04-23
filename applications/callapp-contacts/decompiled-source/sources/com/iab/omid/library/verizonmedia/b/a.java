package com.iab.omid.library.verizonmedia.b;

import com.iab.omid.library.verizonmedia.adsession.k;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/a.class */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    private static a f33450c = new a();

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<k> f33451a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<k> f33452b = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f33450c;
    }

    public final void a(k kVar) {
        boolean b2 = b();
        this.f33452b.add(kVar);
        if (!b2) {
            f.a().b();
        }
    }

    public final boolean b() {
        return this.f33452b.size() > 0;
    }
}
