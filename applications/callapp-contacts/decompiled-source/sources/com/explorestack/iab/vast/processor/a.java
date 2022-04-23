package com.explorestack.iab.vast.processor;

import android.util.Pair;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastError;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.tags.MediaFileTag;
import com.explorestack.iab.vast.tags.c;
import com.explorestack.iab.vast.tags.d;
import com.explorestack.iab.vast.tags.e;
import com.explorestack.iab.vast.tags.f;
import com.explorestack.iab.vast.tags.g;
import com.explorestack.iab.vast.tags.h;
import com.explorestack.iab.vast.tags.i;
import com.explorestack.iab.vast.tags.j;
import com.explorestack.iab.vast.tags.k;
import com.explorestack.iab.vast.tags.p;
import com.explorestack.iab.vast.tags.q;
import com.explorestack.iab.vast.tags.s;
import com.explorestack.iab.vast.tags.t;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final int f19276a;

    /* renamed from: b  reason: collision with root package name */
    final Stack<com.explorestack.iab.vast.tags.a> f19277b;

    /* renamed from: c  reason: collision with root package name */
    private final VastRequest f19278c;

    /* renamed from: d  reason: collision with root package name */
    private VastMediaPicker<MediaFileTag> f19279d;
    private int e;

    public a(VastRequest vastRequest, VastMediaPicker<MediaFileTag> vastMediaPicker) {
        this(vastRequest, vastMediaPicker, 5);
    }

    a(VastRequest vastRequest, VastMediaPicker<MediaFileTag> vastMediaPicker, int i) {
        this.f19277b = new Stack<>();
        this.e = 0;
        this.f19278c = vastRequest;
        this.f19279d = vastMediaPicker;
        this.f19276a = i;
    }

    private b a(com.explorestack.iab.vast.tags.a aVar, q qVar, c cVar) {
        b bVar = new b();
        for (int i = 0; i < qVar.f19319a.size(); i++) {
            c cVar2 = qVar.f19319a.get(i);
            if (!(cVar2 == null || cVar2.f19294a == null)) {
                com.explorestack.iab.vast.tags.a aVar2 = cVar2.f19294a;
                if (aVar2 instanceof j) {
                    b a2 = a((j) aVar2);
                    if (a2.a()) {
                        return a2;
                    }
                    a(a2.f19280a);
                    if (aVar == null) {
                        bVar.f19282c = a2.f19282c;
                    } else if (a2.f19283d) {
                        bVar.a(aVar, a2.f19282c);
                    }
                } else if ((aVar2 instanceof t) && cVar.f19284a) {
                    b a3 = a((t) aVar2);
                    if (a3.a()) {
                        return a3;
                    }
                    a(a3.f19280a);
                    if (aVar == null) {
                        bVar.f19282c = VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD;
                    } else if (a3.f19283d) {
                        bVar.a(aVar, a3.f19282c);
                    } else {
                        bVar.a(aVar, VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD);
                    }
                    if (i == 0 && !cVar.f19286c) {
                        return bVar;
                    }
                }
                a(aVar2);
            }
        }
        if (bVar.f19282c == -1 && aVar != null) {
            bVar.a(aVar, VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD);
        }
        return bVar;
    }

    private b a(j jVar) {
        this.f19277b.push(jVar);
        b bVar = new b();
        Pair<k, MediaFileTag> b2 = b(jVar);
        if (b2 == null) {
            bVar.a(jVar, 101);
        } else if (b2.first == null && b2.second == null) {
            bVar.a(jVar, VastError.ERROR_CODE_BAD_FILE);
        } else {
            ArrayList<String> arrayList = new ArrayList<>();
            ArrayList<String> arrayList2 = new ArrayList<>();
            EnumMap<TrackingEvent, List<String>> enumMap = new EnumMap<>(TrackingEvent.class);
            d dVar = null;
            d dVar2 = null;
            if (!this.f19277b.empty()) {
                Iterator<com.explorestack.iab.vast.tags.a> it2 = this.f19277b.iterator();
                while (true) {
                    dVar = dVar2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    com.explorestack.iab.vast.tags.a next = it2.next();
                    if (next != null) {
                        if (next.f19290c != null) {
                            arrayList.addAll(next.f19290c);
                        }
                        if (next.f19288a != null) {
                            for (h hVar : next.f19288a) {
                                if (hVar != null) {
                                    g gVar = hVar.f19305a;
                                    if (gVar instanceof k) {
                                        k kVar = (k) gVar;
                                        s sVar = kVar.f19308b;
                                        if (!(sVar == null || sVar.f19323b == null)) {
                                            arrayList2.addAll(sVar.f19323b);
                                        }
                                        a(enumMap, kVar.f19310d);
                                    }
                                }
                            }
                        }
                        if (dVar2 == null && next.f19289b != null) {
                            Iterator<i> it3 = next.f19289b.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    i next2 = it3.next();
                                    if (next2 instanceof d) {
                                        dVar2 = (d) next2;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            VastAd vastAd = new VastAd((k) b2.first, (MediaFileTag) b2.second);
            vastAd.setImpressionUrlList(arrayList);
            vastAd.setErrorUrlList(a());
            vastAd.setClickTrackingUrlList(arrayList2);
            vastAd.setTrackingEventListMap(enumMap);
            vastAd.setCompanionTagList(b((com.explorestack.iab.vast.tags.a) jVar));
            vastAd.setAppodealExtension(dVar);
            bVar.f19282c = 0;
            bVar.f19281b = vastAd;
        }
        return bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x04a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.explorestack.iab.vast.processor.b a(com.explorestack.iab.vast.tags.t r9) {
        /*
            Method dump skipped, instructions count: 1277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.processor.a.a(com.explorestack.iab.vast.tags.t):com.explorestack.iab.vast.processor.b");
    }

    private ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f19277b.empty()) {
            return arrayList;
        }
        Iterator<com.explorestack.iab.vast.tags.a> it2 = this.f19277b.iterator();
        while (it2.hasNext()) {
            com.explorestack.iab.vast.tags.a next = it2.next();
            if (!(next == null || next.f19291d == null)) {
                arrayList.addAll(next.f19291d);
            }
        }
        return arrayList;
    }

    private void a(com.explorestack.iab.vast.tags.a aVar) {
        if (!this.f19277b.empty()) {
            int search = this.f19277b.search(aVar);
            for (int i = 0; i < search; i++) {
                this.f19277b.pop();
            }
        }
    }

    private void a(List<String> list) {
        this.f19278c.fireErrorUrls(list, null);
    }

    private static void a(Map<TrackingEvent, List<String>> map, Map<TrackingEvent, List<String>> map2) {
        if (!(map2 == null || map2.isEmpty())) {
            for (Map.Entry<TrackingEvent, List<String>> entry : map2.entrySet()) {
                TrackingEvent key = entry.getKey();
                List<String> list = map.get(key);
                List<String> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                    map.put(key, list2);
                }
                list2.addAll(entry.getValue());
            }
        }
    }

    private Pair<k, MediaFileTag> b(j jVar) {
        k kVar;
        List<MediaFileTag> list;
        ArrayList arrayList = new ArrayList();
        for (h hVar : ((com.explorestack.iab.vast.tags.a) jVar).f19288a) {
            if (hVar != null) {
                g gVar = hVar.f19305a;
                if ((gVar instanceof k) && (list = (kVar = (k) gVar).f19307a) != null && !list.isEmpty()) {
                    for (MediaFileTag mediaFileTag : list) {
                        arrayList.add(new Pair(kVar, mediaFileTag));
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        VastMediaPicker<MediaFileTag> vastMediaPicker = this.f19279d;
        Pair<k, MediaFileTag> pickVideo = vastMediaPicker != null ? vastMediaPicker.pickVideo(arrayList) : null;
        return pickVideo != null ? pickVideo : new Pair<>(null, null);
    }

    private static ArrayList<f> b(com.explorestack.iab.vast.tags.a aVar) {
        ArrayList<f> arrayList = new ArrayList<>();
        for (h hVar : aVar.f19288a) {
            if (hVar != null) {
                g gVar = hVar.f19305a;
                if (gVar instanceof e) {
                    e eVar = (e) gVar;
                    if (eVar.f19299a != null) {
                        arrayList.addAll(eVar.f19299a);
                    }
                }
            }
        }
        return arrayList;
    }

    public final b a(String str) {
        VastLog.d("VastProcessor", "process");
        b bVar = new b();
        try {
            q a2 = p.a(str);
            if (a2 != null && a2.d()) {
                return a(null, a2, new c());
            }
            bVar.f19282c = 101;
            return bVar;
        } catch (Exception e) {
            bVar.f19282c = 100;
            return bVar;
        }
    }
}
