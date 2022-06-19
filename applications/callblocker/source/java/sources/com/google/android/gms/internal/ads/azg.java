package com.google.android.gms.internal.ads;

import androidx.p013b.C0386g;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azg.class */
public final class azg {

    /* renamed from: a */
    public static final azg f10688a = new azi().m12209a();

    /* renamed from: b */
    private final AbstractC2950da f10689b;

    /* renamed from: c */
    private final AbstractC2902cv f10690c;

    /* renamed from: d */
    private final AbstractC3007do f10691d;

    /* renamed from: e */
    private final AbstractC2999dj f10692e;

    /* renamed from: f */
    private final AbstractC3179gv f10693f;

    /* renamed from: g */
    private final C0386g<String, AbstractC2964dg> f10694g;

    /* renamed from: h */
    private final C0386g<String, AbstractC2952db> f10695h;

    /* JADX INFO: Access modifiers changed from: private */
    public azg(azi aziVar) {
        this.f10689b = aziVar.f10696a;
        this.f10690c = aziVar.f10697b;
        this.f10691d = aziVar.f10698c;
        this.f10694g = new C0386g<>(aziVar.f10701f);
        this.f10695h = new C0386g<>(aziVar.f10702g);
        this.f10692e = aziVar.f10699d;
        this.f10693f = aziVar.f10700e;
    }

    /* renamed from: a */
    public final AbstractC2950da m12218a() {
        return this.f10689b;
    }

    /* renamed from: a */
    public final AbstractC2964dg m12217a(String str) {
        return this.f10694g.get(str);
    }

    /* renamed from: b */
    public final AbstractC2902cv m12216b() {
        return this.f10690c;
    }

    /* renamed from: b */
    public final AbstractC2952db m12215b(String str) {
        return this.f10695h.get(str);
    }

    /* renamed from: c */
    public final AbstractC3007do m12214c() {
        return this.f10691d;
    }

    /* renamed from: d */
    public final AbstractC2999dj m12213d() {
        return this.f10692e;
    }

    /* renamed from: e */
    public final AbstractC3179gv m12212e() {
        return this.f10693f;
    }

    /* renamed from: f */
    public final ArrayList<String> m12211f() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f10691d != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f10689b != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f10690c != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f10694g.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f10693f != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    /* renamed from: g */
    public final ArrayList<String> m12210g() {
        ArrayList<String> arrayList = new ArrayList<>(this.f10694g.size());
        for (int i = 0; i < this.f10694g.size(); i++) {
            arrayList.add(this.f10694g.m21085b(i));
        }
        return arrayList;
    }
}
