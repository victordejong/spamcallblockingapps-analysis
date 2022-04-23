package com.iab.omid.library.pubnativenet.g;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final HashMap<View, String> f33413a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    final HashMap<View, a> f33414b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    final HashMap<String, View> f33415c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    final HashSet<View> f33416d = new HashSet<>();
    final HashSet<String> e = new HashSet<>();
    final HashSet<String> f = new HashSet<>();
    final HashMap<String, String> g = new HashMap<>();
    boolean h;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final c f33417a;

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<String> f33418b = new ArrayList<>();

        public a(c cVar, String str) {
            this.f33417a = cVar;
            a(str);
        }

        public final void a(String str) {
            this.f33418b.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(k kVar) {
        for (c cVar : kVar.f33351b) {
            View view = (View) cVar.f33362a.get();
            if (view != null) {
                a aVar = this.f33414b.get(view);
                if (aVar != null) {
                    aVar.a(kVar.f);
                } else {
                    this.f33414b.put(view, new a(cVar, kVar.f));
                }
            }
        }
    }
}
