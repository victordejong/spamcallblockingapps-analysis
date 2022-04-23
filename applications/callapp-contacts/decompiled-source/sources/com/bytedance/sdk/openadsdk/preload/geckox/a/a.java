package com.bytedance.sdk.openadsdk.preload.geckox.a;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.preload.geckox.h.b;
import com.bytedance.sdk.openadsdk.preload.geckox.i.c;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Common;
import com.bytedance.sdk.openadsdk.preload.geckox.model.ComponentModel;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.f;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.i;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.k;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a.class */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a$a.class */
    public static class C0185a {

        /* renamed from: a  reason: collision with root package name */
        String f10137a;

        /* renamed from: b  reason: collision with root package name */
        String f10138b;

        /* renamed from: c  reason: collision with root package name */
        int f10139c;

        /* renamed from: d  reason: collision with root package name */
        long f10140d;
        File e;

        C0185a(String str, String str2, int i, long j, File file) {
            this.f10137a = str;
            this.f10138b = str2;
            this.f10139c = i;
            this.f10140d = j;
            this.e = file;
        }
    }

    public static List<StatisticModel.PackageStatisticModel> a(Context context) {
        return b.a(context).a();
    }

    private static List<C0185a> a(Map<String, ComponentModel.b> map, File file) {
        ComponentModel.b value;
        List<Long> b2;
        List<Long> b3;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, ComponentModel.b>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, ComponentModel.b> next = it2.next();
            String key = next.getKey();
            File file2 = new File(file, key);
            if (file2.isDirectory() && (value = next.getValue()) != null && value.f10235a != null && !value.f10235a.isEmpty()) {
                List<ComponentModel.a> list = value.f10235a;
                HashSet hashSet = new HashSet();
                Iterator<ComponentModel.a> it3 = list.iterator();
                Iterator<Map.Entry<String, ComponentModel.b>> it4 = it2;
                while (true) {
                    it2 = it4;
                    if (it3.hasNext()) {
                        ComponentModel.a next2 = it3.next();
                        String str = next2.f10232a;
                        if (!hashSet.contains(str)) {
                            hashSet.add(str);
                            int i = next2.f10233b;
                            List<Long> list2 = next2.f10234c;
                            File file3 = new File(file2, str);
                            if (i != 1) {
                                if (i != 2) {
                                    if (i == 3) {
                                        File file4 = new File(file2, str);
                                        File file5 = new File(file2, str + "--pending-delete");
                                        file4.renameTo(file5);
                                        arrayList.add(new C0185a(key, str, i, 0L, file5));
                                    }
                                } else if (!(list2 == null || (b2 = k.b(file3)) == null || b2.isEmpty())) {
                                    Iterator<Long> it5 = b2.iterator();
                                    while (true) {
                                        it4 = it4;
                                        it3 = it3;
                                        file2 = file2;
                                        if (it5.hasNext()) {
                                            Long next3 = it5.next();
                                            if (list2.get(0).longValue() > next3.longValue()) {
                                                File file6 = new File(file3, next3 + "--pending-delete");
                                                new File(file3, String.valueOf(next3)).renameTo(file6);
                                                arrayList.add(new C0185a(key, str, i, next3.longValue(), file6));
                                            }
                                        }
                                    }
                                }
                            } else if (!(list2 == null || (b3 = k.b(file3)) == null || b3.isEmpty())) {
                                for (Long l : b3) {
                                    if (list2.contains(l)) {
                                        File file7 = new File(file3, l + "--pending-delete");
                                        new File(file3, String.valueOf(l)).renameTo(file7);
                                        arrayList.add(new C0185a(key, str, i, l.longValue(), file7));
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

    public static void a(final Context context, Map<String, ComponentModel.b> map, File file, final com.bytedance.sdk.openadsdk.preload.geckox.e.a aVar) {
        if (map != null && !map.isEmpty()) {
            final List<C0185a> list = null;
            try {
                list = a(map, file);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (list != null) {
                f.a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            a.b(context, list, aVar);
                        } catch (Exception e2) {
                            b.a("clean-channel", "", e2);
                        }
                    }
                });
            }
        }
    }

    public static void a(com.bytedance.sdk.openadsdk.preload.geckox.b bVar) {
        if (bVar.c()) {
            Common common = new Common(bVar.j(), bVar.n(), bVar.q(), com.bytedance.sdk.openadsdk.preload.geckox.utils.a.b(bVar.a()), i.a(bVar.a()), bVar.k(), bVar.l());
            StatisticModel statisticModel = new StatisticModel();
            statisticModel.common = common;
            statisticModel.packages.addAll(a(bVar.a()));
            if (!statisticModel.packages.isEmpty()) {
                String str = "https://" + bVar.i() + "/gecko/server/packages/stats";
                String a2 = com.bytedance.sdk.openadsdk.preload.geckox.c.b.a().b().a(statisticModel);
                for (int i = 0; i < 3; i++) {
                    try {
                        a(bVar, str, a2);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                b.a("clean-channel", "upload failed", a2);
            }
        }
    }

    private static void a(com.bytedance.sdk.openadsdk.preload.geckox.b bVar, String str, String str2) throws Exception {
        c a2 = bVar.h().a(str, str2);
        if (a2.f10221c != 200) {
            throw new NetworkErrorException("net work get failed, code: " + a2.f10221c + ", url:" + str);
        } else if (new JSONObject(a2.f10220b).getInt("status") != 0) {
            throw new RuntimeException("upload failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, List<C0185a> list, com.bytedance.sdk.openadsdk.preload.geckox.e.a aVar) {
        if (!(list == null || list.isEmpty())) {
            for (C0185a aVar2 : list) {
                File file = aVar2.e;
                long uptimeMillis = SystemClock.uptimeMillis();
                boolean a2 = d.a(file);
                long uptimeMillis2 = SystemClock.uptimeMillis();
                if (a2) {
                    if (aVar != null) {
                        aVar.b(aVar2.f10138b);
                    }
                    b.a(context).a(aVar2.f10137a, aVar2.f10138b, aVar2.f10139c, 200, aVar2.f10140d, 0, null, uptimeMillis2 - uptimeMillis, 1);
                } else {
                    b.a(context).a(aVar2.f10137a, aVar2.f10138b, aVar2.f10139c, 201, aVar2.f10140d, 601, "delete failed", uptimeMillis2 - uptimeMillis, 1);
                }
            }
        }
    }
}
