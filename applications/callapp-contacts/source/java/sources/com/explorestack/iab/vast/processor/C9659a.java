package com.explorestack.iab.vast.processor;

import android.util.Pair;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastError;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.tags.C9663a;
import com.explorestack.iab.vast.tags.C9665c;
import com.explorestack.iab.vast.tags.C9666d;
import com.explorestack.iab.vast.tags.C9667e;
import com.explorestack.iab.vast.tags.C9668f;
import com.explorestack.iab.vast.tags.C9669g;
import com.explorestack.iab.vast.tags.C9670h;
import com.explorestack.iab.vast.tags.C9671i;
import com.explorestack.iab.vast.tags.C9672j;
import com.explorestack.iab.vast.tags.C9673k;
import com.explorestack.iab.vast.tags.C9678p;
import com.explorestack.iab.vast.tags.C9679q;
import com.explorestack.iab.vast.tags.C9681s;
import com.explorestack.iab.vast.tags.C9682t;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
/* renamed from: com.explorestack.iab.vast.processor.a */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/a.class */
public final class C9659a {

    /* renamed from: a */
    final int f32766a;

    /* renamed from: b */
    final Stack<C9663a> f32767b;

    /* renamed from: c */
    private final VastRequest f32768c;

    /* renamed from: d */
    private VastMediaPicker<MediaFileTag> f32769d;

    /* renamed from: e */
    private int f32770e;

    public C9659a(VastRequest vastRequest, VastMediaPicker<MediaFileTag> vastMediaPicker) {
        this(vastRequest, vastMediaPicker, 5);
    }

    C9659a(VastRequest vastRequest, VastMediaPicker<MediaFileTag> vastMediaPicker, int i) {
        this.f32767b = new Stack<>();
        this.f32770e = 0;
        this.f32768c = vastRequest;
        this.f32769d = vastMediaPicker;
        this.f32766a = i;
    }

    /* renamed from: a */
    private C9660b m23887a(C9663a c9663a, C9679q c9679q, C9661c c9661c) {
        C9660b c9660b = new C9660b();
        for (int i = 0; i < c9679q.f32840a.size(); i++) {
            C9665c c9665c = c9679q.f32840a.get(i);
            if (c9665c != null && c9665c.f32786a != null) {
                C9663a c9663a2 = c9665c.f32786a;
                if (c9663a2 instanceof C9672j) {
                    C9660b m23886a = m23886a((C9672j) c9663a2);
                    if (m23886a.m23879a()) {
                        return m23886a;
                    }
                    m23883a(m23886a.f32771a);
                    if (c9663a == null) {
                        c9660b.f32773c = m23886a.f32773c;
                    } else if (m23886a.f32774d) {
                        c9660b.m23878a(c9663a, m23886a.f32773c);
                    }
                } else if ((c9663a2 instanceof C9682t) && c9661c.f32775a) {
                    C9660b m23885a = m23885a((C9682t) c9663a2);
                    if (m23885a.m23879a()) {
                        return m23885a;
                    }
                    m23883a(m23885a.f32771a);
                    if (c9663a == null) {
                        c9660b.f32773c = VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD;
                    } else if (m23885a.f32774d) {
                        c9660b.m23878a(c9663a, m23885a.f32773c);
                    } else {
                        c9660b.m23878a(c9663a, VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD);
                    }
                    if (i == 0 && !c9661c.f32777c) {
                        return c9660b;
                    }
                }
                m23888a(c9663a2);
            }
        }
        if (c9660b.f32773c == -1 && c9663a != null) {
            c9660b.m23878a(c9663a, VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD);
        }
        return c9660b;
    }

    /* renamed from: a */
    private C9660b m23886a(C9672j c9672j) {
        this.f32767b.push(c9672j);
        C9660b c9660b = new C9660b();
        Pair<C9673k, MediaFileTag> m23880b = m23880b(c9672j);
        if (m23880b == null) {
            c9660b.m23878a(c9672j, 101);
        } else if (m23880b.first == null && m23880b.second == null) {
            c9660b.m23878a(c9672j, VastError.ERROR_CODE_BAD_FILE);
        } else {
            ArrayList<String> arrayList = new ArrayList<>();
            ArrayList<String> arrayList2 = new ArrayList<>();
            EnumMap<TrackingEvent, List<String>> enumMap = new EnumMap<>(TrackingEvent.class);
            C9666d c9666d = null;
            C9666d c9666d2 = null;
            if (!this.f32767b.empty()) {
                Iterator<C9663a> it2 = this.f32767b.iterator();
                while (true) {
                    c9666d = c9666d2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    C9663a next = it2.next();
                    if (next != null) {
                        if (next.f32781c != null) {
                            arrayList.addAll(next.f32781c);
                        }
                        if (next.f32779a != null) {
                            for (C9670h c9670h : next.f32779a) {
                                if (c9670h != null) {
                                    C9669g c9669g = c9670h.f32814a;
                                    if (c9669g instanceof C9673k) {
                                        C9673k c9673k = (C9673k) c9669g;
                                        C9681s c9681s = c9673k.f32818b;
                                        if (c9681s != null && c9681s.f32844b != null) {
                                            arrayList2.addAll(c9681s.f32844b);
                                        }
                                        m23882a(enumMap, c9673k.f32820d);
                                    }
                                }
                            }
                        }
                        if (c9666d2 == null && next.f32780b != null) {
                            Iterator<C9671i> it3 = next.f32780b.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    C9671i next2 = it3.next();
                                    if (next2 instanceof C9666d) {
                                        c9666d2 = (C9666d) next2;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            VastAd vastAd = new VastAd((C9673k) m23880b.first, (MediaFileTag) m23880b.second);
            vastAd.setImpressionUrlList(arrayList);
            vastAd.setErrorUrlList(m23889a());
            vastAd.setClickTrackingUrlList(arrayList2);
            vastAd.setTrackingEventListMap(enumMap);
            vastAd.setCompanionTagList(m23881b((C9663a) c9672j));
            vastAd.setAppodealExtension(c9666d);
            c9660b.f32773c = 0;
            c9660b.f32772b = vastAd;
        }
        return c9660b;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x04a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.explorestack.iab.vast.processor.C9660b m23885a(com.explorestack.iab.vast.tags.C9682t r9) {
        /*
            Method dump skipped, instructions count: 1277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.processor.C9659a.m23885a(com.explorestack.iab.vast.tags.t):com.explorestack.iab.vast.processor.b");
    }

    /* renamed from: a */
    private ArrayList<String> m23889a() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f32767b.empty()) {
            return arrayList;
        }
        Iterator<C9663a> it2 = this.f32767b.iterator();
        while (it2.hasNext()) {
            C9663a next = it2.next();
            if (next != null && next.f32782d != null) {
                arrayList.addAll(next.f32782d);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m23888a(C9663a c9663a) {
        if (this.f32767b.empty()) {
            return;
        }
        int search = this.f32767b.search(c9663a);
        for (int i = 0; i < search; i++) {
            this.f32767b.pop();
        }
    }

    /* renamed from: a */
    private void m23883a(List<String> list) {
        this.f32768c.fireErrorUrls(list, null);
    }

    /* renamed from: a */
    private static void m23882a(Map<TrackingEvent, List<String>> map, Map<TrackingEvent, List<String>> map2) {
        if (map2 == null || map2.isEmpty()) {
            return;
        }
        for (Map.Entry<TrackingEvent, List<String>> entry : map2.entrySet()) {
            TrackingEvent key = entry.getKey();
            List<String> list = map.get(key);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                map.put(key, arrayList);
            }
            arrayList.addAll(entry.getValue());
        }
    }

    /* renamed from: b */
    private Pair<C9673k, MediaFileTag> m23880b(C9672j c9672j) {
        C9673k c9673k;
        List<MediaFileTag> list;
        ArrayList arrayList = new ArrayList();
        for (C9670h c9670h : ((C9663a) c9672j).f32779a) {
            if (c9670h != null) {
                C9669g c9669g = c9670h.f32814a;
                if ((c9669g instanceof C9673k) && (list = (c9673k = (C9673k) c9669g).f32817a) != null && !list.isEmpty()) {
                    for (MediaFileTag mediaFileTag : list) {
                        arrayList.add(new Pair(c9673k, mediaFileTag));
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        VastMediaPicker<MediaFileTag> vastMediaPicker = this.f32769d;
        Pair<C9673k, MediaFileTag> pickVideo = vastMediaPicker != null ? vastMediaPicker.pickVideo(arrayList) : null;
        return pickVideo != null ? pickVideo : new Pair<>(null, null);
    }

    /* renamed from: b */
    private static ArrayList<C9668f> m23881b(C9663a c9663a) {
        ArrayList<C9668f> arrayList = new ArrayList<>();
        for (C9670h c9670h : c9663a.f32779a) {
            if (c9670h != null) {
                C9669g c9669g = c9670h.f32814a;
                if (c9669g instanceof C9667e) {
                    C9667e c9667e = (C9667e) c9669g;
                    if (c9667e.f32804a != null) {
                        arrayList.addAll(c9667e.f32804a);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final C9660b m23884a(String str) {
        VastLog.m24015d("VastProcessor", "process");
        C9660b c9660b = new C9660b();
        try {
            C9679q m23852a = C9678p.m23852a(str);
            if (m23852a != null && m23852a.m23851d()) {
                return m23887a(null, m23852a, new C9661c());
            }
            c9660b.f32773c = 101;
            return c9660b;
        } catch (Exception e) {
            c9660b.f32773c = 100;
            return c9660b;
        }
    }
}
