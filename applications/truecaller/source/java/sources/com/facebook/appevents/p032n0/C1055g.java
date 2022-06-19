package com.facebook.appevents.p032n0;

import com.facebook.appevents.p032n0.C1056h;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import s1.k;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0007\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u001b\b\u0002\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J+\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u00052\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00172\u0006\u0010\u0018\u001a\u00020\u0004¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0013X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/ml/Model;", "", "weights", "", "", "Lcom/facebook/appevents/ml/MTensor;", "(Ljava/util/Map;)V", "convs0Bias", "convs0Weight", "convs1Bias", "convs1Weight", "convs2Bias", "convs2Weight", "embedding", "fc1Bias", "fc1Weight", "fc2Bias", "fc2Weight", "finalWeights", "", "predictOnMTML", "dense", "texts", "", "task", "(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.n0.g */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/g.class */
public final class C1055g {

    /* renamed from: m */
    public static final C1055g f2900m = null;

    /* renamed from: n */
    public static final Map<String, String> f2901n = i.I(new k[]{new k("embedding.weight", "embed.weight"), new k("dense1.weight", "fc1.weight"), new k("dense2.weight", "fc2.weight"), new k("dense3.weight", "fc3.weight"), new k("dense1.bias", "fc1.bias"), new k("dense2.bias", "fc2.bias"), new k("dense3.bias", "fc3.bias")});

    /* renamed from: a */
    public final C1053f f2902a;

    /* renamed from: b */
    public final C1053f f2903b;

    /* renamed from: c */
    public final C1053f f2904c;

    /* renamed from: d */
    public final C1053f f2905d;

    /* renamed from: e */
    public final C1053f f2906e;

    /* renamed from: f */
    public final C1053f f2907f;

    /* renamed from: g */
    public final C1053f f2908g;

    /* renamed from: h */
    public final C1053f f2909h;

    /* renamed from: i */
    public final C1053f f2910i;

    /* renamed from: j */
    public final C1053f f2911j;

    /* renamed from: k */
    public final C1053f f2912k;

    /* renamed from: l */
    public final Map<String, C1053f> f2913l;

    public C1055g(Map map, f fVar) {
        Object obj = map.get("embed.weight");
        if (obj != null) {
            this.f2902a = (C1053f) obj;
            Object obj2 = map.get("convs.0.weight");
            if (obj2 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2903b = C1060i.m41827l((C1053f) obj2);
            Object obj3 = map.get("convs.1.weight");
            if (obj3 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2904c = C1060i.m41827l((C1053f) obj3);
            Object obj4 = map.get("convs.2.weight");
            if (obj4 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2905d = C1060i.m41827l((C1053f) obj4);
            Object obj5 = map.get("convs.0.bias");
            if (obj5 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2906e = (C1053f) obj5;
            Object obj6 = map.get("convs.1.bias");
            if (obj6 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2907f = (C1053f) obj6;
            Object obj7 = map.get("convs.2.bias");
            if (obj7 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2908g = (C1053f) obj7;
            Object obj8 = map.get("fc1.weight");
            if (obj8 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2909h = C1060i.m41828k((C1053f) obj8);
            Object obj9 = map.get("fc2.weight");
            if (obj9 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2910i = C1060i.m41828k((C1053f) obj9);
            Object obj10 = map.get("fc1.bias");
            if (obj10 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2911j = (C1053f) obj10;
            Object obj11 = map.get("fc2.bias");
            if (obj11 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2912k = (C1053f) obj11;
            this.f2913l = new HashMap();
            for (String str : i.z0(new String[]{C1056h.EnumC1057a.MTML_INTEGRITY_DETECT.m41843a(), C1056h.EnumC1057a.MTML_APP_EVENT_PREDICTION.m41843a()})) {
                String j = l.j(str, ".weight");
                String j2 = l.j(str, ".bias");
                C1053f c1053f = (C1053f) map.get(j);
                C1053f c1053f2 = (C1053f) map.get(j2);
                if (c1053f != null) {
                    this.f2913l.put(j, C1060i.m41828k(c1053f));
                }
                if (c1053f2 != null) {
                    this.f2913l.put(j2, c1053f2);
                }
            }
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    /* renamed from: a */
    public final C1053f m41852a(C1053f c1053f, String[] strArr, String str) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(c1053f, "dense");
            l.e(strArr, "texts");
            l.e(str, "task");
            C1053f m41836c = C1060i.m41836c(C1060i.m41834e(strArr, 128, this.f2902a), this.f2903b);
            C1060i.m41838a(m41836c, this.f2906e);
            C1060i.m41830i(m41836c);
            C1053f m41836c2 = C1060i.m41836c(m41836c, this.f2904c);
            C1060i.m41838a(m41836c2, this.f2907f);
            C1060i.m41830i(m41836c2);
            C1053f m41832g = C1060i.m41832g(m41836c2, 2);
            C1053f m41836c3 = C1060i.m41836c(m41832g, this.f2905d);
            C1060i.m41838a(m41836c3, this.f2908g);
            C1060i.m41830i(m41836c3);
            C1053f m41832g2 = C1060i.m41832g(m41836c, m41836c.f2897a[1]);
            C1053f m41832g3 = C1060i.m41832g(m41832g, m41832g.f2897a[1]);
            C1053f m41832g4 = C1060i.m41832g(m41836c3, m41836c3.f2897a[1]);
            C1060i.m41833f(m41832g2, 1);
            C1060i.m41833f(m41832g3, 1);
            C1060i.m41833f(m41832g4, 1);
            C1053f m41835d = C1060i.m41835d(C1060i.m41837b(new C1053f[]{m41832g2, m41832g3, m41832g4, c1053f}), this.f2909h, this.f2911j);
            C1060i.m41830i(m41835d);
            C1053f m41835d2 = C1060i.m41835d(m41835d, this.f2910i, this.f2912k);
            C1060i.m41830i(m41835d2);
            C1053f c1053f2 = this.f2913l.get(l.j(str, ".weight"));
            C1053f c1053f3 = this.f2913l.get(l.j(str, ".bias"));
            if (c1053f2 == null || c1053f3 == null) {
                return null;
            }
            C1053f m41835d3 = C1060i.m41835d(m41835d2, c1053f2, c1053f3);
            C1060i.m41829j(m41835d3);
            return m41835d3;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
