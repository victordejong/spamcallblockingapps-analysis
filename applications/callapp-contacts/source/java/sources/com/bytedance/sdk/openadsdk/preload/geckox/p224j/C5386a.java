package com.bytedance.sdk.openadsdk.preload.geckox.p224j;

import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5336a;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5345b;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5356c;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5364e;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5365f;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5366g;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5367h;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5368i;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p213a.C5337a;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p213a.C5338b;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p213a.C5339c;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b.C5340a;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b.C5341b;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b.C5342c;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b.C5343d;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p212a.p214b.C5344e;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p216a.C5346a;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p216a.C5347b;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p216a.C5348c;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p216a.C5349d;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b.C5350a;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b.C5351b;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b.C5352c;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b.C5353d;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b.C5354e;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.p215b.p217b.C5355f;
import com.bytedance.sdk.openadsdk.preload.geckox.p218e.AbstractC5369a;
import com.bytedance.sdk.openadsdk.preload.geckox.p218e.C5370b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5296l;
import com.bytedance.sdk.openadsdk.preload.p201b.C5282c;
import com.bytedance.sdk.openadsdk.preload.p201b.C5286f;
import com.bytedance.sdk.openadsdk.preload.p201b.C5289h;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.C5281b;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.j.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/j/a.class */
public class C5386a {
    /* renamed from: a */
    private static AbstractC5280a m32421a(final AbstractC5369a abstractC5369a) {
        if (abstractC5369a == null) {
            return null;
        }
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.j.a.1
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                abstractC5369a.m32463a(((UpdatePackage) abstractC5279b.mo32630b(C5365f.class)).getChannel(), th);
            }
        };
    }

    /* renamed from: a */
    public static AbstractC5279b<Object> m32418a(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b, Map<String, Map<String, Object>> map, Map<String, List<CheckRequestBodyModel.TargetChannel>> map2, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5364e.class).m32645a(file, c5320b.m32581d()).m32648a(c5370b.m32456a(C5364e.class)).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5356c.class).m32645a(c5320b, map, map2, abstractC5369a, str).m32648a(new C5281b(m32408f(abstractC5369a), c5370b.m32456a(C5356c.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5365f.class).m32645a(c5320b.m32579f()).m32648a(m32421a(abstractC5369a)).m32644b());
        AbstractC5296l.C5298b c5298b = new AbstractC5296l.C5298b();
        c5298b.m32633a("branch_zip").m32636a(m32411d(abstractC5369a, file, c5320b, c5370b)).m32636a(C5289h.C5291a.m32649a().m32646a(C5286f.class).m32644b());
        c5298b.m32633a("branch_single_file").m32636a(m32419a(abstractC5369a, file, c5320b, c5370b)).m32636a(C5289h.C5291a.m32649a().m32646a(C5286f.class).m32644b());
        c5298b.m32633a("branch_myarchive_file").m32636a(m32406g(abstractC5369a, file, c5320b, c5370b)).m32636a(C5289h.C5291a.m32649a().m32646a(C5286f.class).m32644b());
        arrayList.add(c5298b.m32634a(C5336a.class));
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5368i.class).m32648a(m32417b(abstractC5369a)).m32644b());
        return C5282c.m32665a(arrayList, null);
    }

    /* renamed from: a */
    private static C5289h m32419a(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        AbstractC5296l.C5298b c5298b = new AbstractC5296l.C5298b();
        c5298b.m32633a("patch").m32635a(m32413c(abstractC5369a, file, c5320b, c5370b));
        c5298b.m32633a("full").m32635a(m32415b(abstractC5369a, file, c5320b, c5370b));
        return c5298b.m32634a(C5345b.class);
    }

    /* renamed from: a */
    private static List<C5289h> m32420a(AbstractC5369a abstractC5369a, File file, C5320b c5320b) {
        return Collections.emptyList();
    }

    /* renamed from: b */
    private static AbstractC5280a m32417b(final AbstractC5369a abstractC5369a) {
        if (abstractC5369a == null) {
            return null;
        }
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.j.a.2
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32387a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32387a(abstractC5279b, abstractC5283d);
                Pair pair = (Pair) abstractC5279b.mo32632a(C5368i.class);
                abstractC5369a.m32464a((String) pair.first, ((Long) pair.second).longValue());
            }
        };
    }

    /* renamed from: b */
    private static List<C5289h> m32416b(AbstractC5369a abstractC5369a, File file, C5320b c5320b) {
        return Collections.emptyList();
    }

    /* renamed from: b */
    private static List<C5289h> m32415b(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5366g.class).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5338b.class).m32645a(c5320b, file).m32648a(new C5281b(m32410e(abstractC5369a), c5370b.m32456a(C5338b.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5337a.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5337a.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5339c.class).m32648a(new C5281b(m32414c(abstractC5369a), c5370b.m32456a(C5339c.class))).m32644b());
        return arrayList;
    }

    /* renamed from: c */
    private static AbstractC5280a m32414c(final AbstractC5369a abstractC5369a) {
        if (abstractC5369a == null) {
            return null;
        }
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.j.a.3
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                abstractC5369a.m32466a((UpdatePackage) abstractC5279b.mo32632a(C5345b.class), th);
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                abstractC5369a.m32460b((UpdatePackage) abstractC5279b.mo32630b(C5345b.class));
            }
        };
    }

    /* renamed from: c */
    private static List<C5289h> m32413c(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5367h.class).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5342c.class).m32645a(c5320b, file).m32648a(new C5281b(m32410e(abstractC5369a), c5370b.m32456a(C5342c.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5341b.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5341b.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5343d.class).m32645a(c5320b).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5343d.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5340a.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5340a.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5344e.class).m32648a(new C5281b(m32414c(abstractC5369a), c5370b.m32456a(C5344e.class))).m32644b());
        return arrayList;
    }

    /* renamed from: d */
    private static AbstractC5280a m32412d(final AbstractC5369a abstractC5369a) {
        if (abstractC5369a == null) {
            return null;
        }
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.j.a.4
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                abstractC5369a.m32466a((UpdatePackage) abstractC5279b.mo32632a(C5345b.class), th);
            }
        };
    }

    /* renamed from: d */
    private static C5289h m32411d(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        AbstractC5296l.C5298b c5298b = new AbstractC5296l.C5298b();
        c5298b.m32633a("patch").m32635a(m32407f(abstractC5369a, file, c5320b, c5370b));
        c5298b.m32633a("full").m32635a(m32409e(abstractC5369a, file, c5320b, c5370b));
        return c5298b.m32634a(C5345b.class);
    }

    /* renamed from: e */
    private static AbstractC5280a m32410e(final AbstractC5369a abstractC5369a) {
        if (abstractC5369a == null) {
            return null;
        }
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.j.a.5
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                abstractC5369a.m32459b((UpdatePackage) abstractC5279b.mo32632a(C5345b.class), th);
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                abstractC5369a.m32457c((UpdatePackage) abstractC5279b.mo32630b(C5345b.class));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: c */
            public final <T> void mo32385c(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32385c(abstractC5279b, abstractC5283d);
                abstractC5369a.m32467a((UpdatePackage) abstractC5279b.mo32632a(C5345b.class));
            }
        };
    }

    /* renamed from: e */
    private static List<C5289h> m32409e(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5366g.class).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5347b.class).m32645a(c5320b, file).m32648a(new C5281b(m32410e(abstractC5369a), c5370b.m32456a(C5347b.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5346a.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5346a.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5349d.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5349d.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5348c.class).m32648a(new C5281b(m32414c(abstractC5369a))).m32644b());
        return arrayList;
    }

    /* renamed from: f */
    private static AbstractC5280a m32408f(final AbstractC5369a abstractC5369a) {
        if (abstractC5369a == null) {
            return null;
        }
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.j.a.6
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                abstractC5369a.m32462a((Map) abstractC5279b.mo32632a(C5356c.class), th);
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                List<UpdatePackage> list = (List) abstractC5279b.mo32630b(C5356c.class);
                Map<String, List<Pair<String, Long>>> map = (Map) abstractC5279b.mo32632a(C5356c.class);
                HashMap hashMap = new HashMap();
                for (UpdatePackage updatePackage : list) {
                    String accessKey = updatePackage.getAccessKey();
                    List list2 = (List) hashMap.get(accessKey);
                    ArrayList arrayList = list2;
                    if (list2 == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(updatePackage);
                    hashMap.put(accessKey, arrayList);
                }
                abstractC5369a.m32461a(map, hashMap);
            }
        };
    }

    /* renamed from: f */
    private static List<C5289h> m32407f(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5367h.class).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5352c.class).m32645a(c5320b, file).m32648a(new C5281b(m32410e(abstractC5369a), c5370b.m32456a(C5352c.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5351b.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5351b.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5353d.class).m32645a(c5320b).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5353d.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5350a.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5350a.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5355f.class).m32648a(new C5281b(m32412d(abstractC5369a), c5370b.m32456a(C5355f.class))).m32644b());
        arrayList.add(C5289h.C5291a.m32649a().m32646a(C5354e.class).m32648a(new C5281b(m32414c(abstractC5369a))).m32644b());
        return arrayList;
    }

    /* renamed from: g */
    private static C5289h m32406g(AbstractC5369a abstractC5369a, File file, C5320b c5320b, C5370b c5370b) {
        AbstractC5296l.C5298b c5298b = new AbstractC5296l.C5298b();
        c5298b.m32633a("patch").m32635a(m32416b(abstractC5369a, file, c5320b));
        c5298b.m32633a("full").m32635a(m32420a(abstractC5369a, file, c5320b));
        return c5298b.m32634a(C5345b.class);
    }
}
