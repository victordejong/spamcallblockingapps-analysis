package com.flurry.sdk;
/* renamed from: com.flurry.sdk.bx */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bx.class */
public final class C2897bx implements AbstractC2895bv {
    @Override // com.flurry.sdk.AbstractC2895bv
    /* renamed from: a */
    public final boolean mo33454a(AbstractC3469lr lrVar) {
        String j;
        String f;
        String k;
        if (lrVar == null) {
            return false;
        }
        if (lrVar.mo32392i() != null && !lrVar.mo32392i().isEmpty()) {
            return true;
        }
        String h = lrVar.mo32394h();
        if (h == null || h.length() == 0 || (j = lrVar.mo32390j()) == null || j.length() == 0) {
            return false;
        }
        String g = lrVar.mo32396g();
        if ((g != null && g.length() != 0 && !g.startsWith("http://") && !g.startsWith("https://")) || (f = lrVar.mo32398f()) == null || f.length() == 0) {
            return false;
        }
        if (!f.startsWith("http://") && !f.startsWith("https://")) {
            return false;
        }
        if (C2886bp.f4317a == null) {
            C2886bp.f4317a = new C2886bp();
        }
        return !(lrVar != null && (k = lrVar.mo32389k()) != null && C2886bp.f4317a.f4318b.contains(k));
    }
}
