package com.bytedance.sdk.openadsdk.preload.geckox.p206a;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Common;
import com.bytedance.sdk.openadsdk.preload.geckox.model.ComponentModel;
import com.bytedance.sdk.openadsdk.preload.geckox.p210c.C5335b;
import com.bytedance.sdk.openadsdk.preload.geckox.p218e.AbstractC5369a;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.p223i.C5385c;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5416a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5425i;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5427k;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.ExecutorC5422f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a.class */
public class C5304a {

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a$a.class */
    public static class C5306a {

        /* renamed from: a */
        String f18756a;

        /* renamed from: b */
        String f18757b;

        /* renamed from: c */
        int f18758c;

        /* renamed from: d */
        long f18759d;

        /* renamed from: e */
        File f18760e;

        C5306a(String str, String str2, int i, long j, File file) {
            this.f18756a = str;
            this.f18757b = str2;
            this.f18758c = i;
            this.f18759d = j;
            this.f18760e = file;
        }
    }

    /* renamed from: a */
    public static List<StatisticModel.PackageStatisticModel> m32613a(Context context) {
        return C5315b.m32593a(context).m32594a();
    }

    /* renamed from: a */
    private static List<C5306a> m32608a(Map<String, ComponentModel.C5396b> map, File file) {
        ComponentModel.C5396b value;
        List<Long> m32343b;
        List<Long> m32343b2;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, ComponentModel.C5396b>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, ComponentModel.C5396b> next = it2.next();
            String key = next.getKey();
            File file2 = new File(file, key);
            if (file2.isDirectory() && (value = next.getValue()) != null && value.f18900a != null && !value.f18900a.isEmpty()) {
                List<ComponentModel.C5395a> list = value.f18900a;
                HashSet hashSet = new HashSet();
                Iterator<ComponentModel.C5395a> it3 = list.iterator();
                Iterator<Map.Entry<String, ComponentModel.C5396b>> it4 = it2;
                while (true) {
                    it2 = it4;
                    if (it3.hasNext()) {
                        ComponentModel.C5395a next2 = it3.next();
                        String str = next2.f18897a;
                        if (!hashSet.contains(str)) {
                            hashSet.add(str);
                            int i = next2.f18898b;
                            List<Long> list2 = next2.f18899c;
                            File file3 = new File(file2, str);
                            if (i != 1) {
                                if (i != 2) {
                                    if (i == 3) {
                                        File file4 = new File(file2, str);
                                        File file5 = new File(file2, str + "--pending-delete");
                                        file4.renameTo(file5);
                                        arrayList.add(new C5306a(key, str, i, 0L, file5));
                                    }
                                } else if (list2 != null && (m32343b = C5427k.m32343b(file3)) != null && !m32343b.isEmpty()) {
                                    Iterator<Long> it5 = m32343b.iterator();
                                    File file6 = file2;
                                    Iterator<ComponentModel.C5395a> it6 = it3;
                                    Iterator<Map.Entry<String, ComponentModel.C5396b>> it7 = it4;
                                    while (true) {
                                        it4 = it7;
                                        it3 = it6;
                                        file2 = file6;
                                        if (it5.hasNext()) {
                                            Long next3 = it5.next();
                                            if (list2.get(0).longValue() > next3.longValue()) {
                                                File file7 = new File(file3, next3 + "--pending-delete");
                                                new File(file3, String.valueOf(next3)).renameTo(file7);
                                                arrayList.add(new C5306a(key, str, i, next3.longValue(), file7));
                                            }
                                        }
                                    }
                                }
                            } else if (list2 != null && (m32343b2 = C5427k.m32343b(file3)) != null && !m32343b2.isEmpty()) {
                                for (Long l : m32343b2) {
                                    if (list2.contains(l)) {
                                        File file8 = new File(file3, l + "--pending-delete");
                                        new File(file3, String.valueOf(l)).renameTo(file8);
                                        arrayList.add(new C5306a(key, str, i, l.longValue(), file8));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m32611a(final Context context, Map<String, ComponentModel.C5396b> map, File file, final AbstractC5369a abstractC5369a) {
        List<C5306a> list;
        if (map == null || map.isEmpty()) {
            return;
        }
        try {
            list = m32608a(map, file);
        } catch (Exception e) {
            e.printStackTrace();
            list = null;
        }
        if (list == null) {
            return;
        }
        final List<C5306a> list2 = list;
        ExecutorC5422f.m32351a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C5304a.m32607b(context, list2, abstractC5369a);
                } catch (Exception e2) {
                    C5381b.m32430a("clean-channel", "", e2);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m32610a(C5320b c5320b) {
        if (!c5320b.m32582c()) {
            return;
        }
        Common common = new Common(c5320b.m32575j(), c5320b.m32571n(), c5320b.m32568q(), C5416a.m32363b(c5320b.m32584a()), C5425i.m32346a(c5320b.m32584a()), c5320b.m32574k(), c5320b.m32573l());
        StatisticModel statisticModel = new StatisticModel();
        statisticModel.common = common;
        statisticModel.packages.addAll(m32613a(c5320b.m32584a()));
        if (statisticModel.packages.isEmpty()) {
            return;
        }
        String str = "https://" + c5320b.m32576i() + "/gecko/server/packages/stats";
        String m32723a = C5335b.m32516a().m32515b().m32723a(statisticModel);
        for (int i = 0; i < 3; i++) {
            try {
                m32609a(c5320b, str, m32723a);
                return;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        C5381b.m32429a("clean-channel", "upload failed", m32723a);
    }

    /* renamed from: a */
    private static void m32609a(C5320b c5320b, String str, String str2) throws Exception {
        C5385c mo32422a = c5320b.m32577h().mo32422a(str, str2);
        if (mo32422a.f18884c == 200) {
            if (new JSONObject(mo32422a.f18883b).getInt("status") != 0) {
                throw new RuntimeException("upload failed");
            }
            return;
        }
        throw new NetworkErrorException("net work get failed, code: " + mo32422a.f18884c + ", url:" + str);
    }

    /* renamed from: b */
    public static void m32607b(Context context, List<C5306a> list, AbstractC5369a abstractC5369a) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (C5306a c5306a : list) {
            File file = c5306a.f18760e;
            long uptimeMillis = SystemClock.uptimeMillis();
            boolean m32358a = C5419d.m32358a(file);
            long uptimeMillis2 = SystemClock.uptimeMillis();
            if (m32358a) {
                if (abstractC5369a != null) {
                    abstractC5369a.m32458b(c5306a.f18757b);
                }
                C5315b.m32593a(context).m32592a(c5306a.f18756a, c5306a.f18757b, c5306a.f18758c, 200, c5306a.f18759d, 0, null, uptimeMillis2 - uptimeMillis, 1);
            } else {
                C5315b.m32593a(context).m32592a(c5306a.f18756a, c5306a.f18757b, c5306a.f18758c, 201, c5306a.f18759d, 601, "delete failed", uptimeMillis2 - uptimeMillis, 1);
            }
        }
    }
}
