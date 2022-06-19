package com.bytedance.sdk.openadsdk.preload.geckox.p211d;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Common;
import com.bytedance.sdk.openadsdk.preload.geckox.model.ComponentModel;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Response;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.C5304a;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.C5316c;
import com.bytedance.sdk.openadsdk.preload.geckox.p210c.C5335b;
import com.bytedance.sdk.openadsdk.preload.geckox.p218e.AbstractC5369a;
import com.bytedance.sdk.openadsdk.preload.geckox.p221g.C5376a;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.p223i.C5385c;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.C5412e;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.C5415b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5416a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5425i;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.ExecutorC5422f;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/c.class */
public class C5356c extends AbstractC5283d<Map<String, List<Pair<String, Long>>>, List<UpdatePackage>> {

    /* renamed from: d */
    private C5320b f18841d;

    /* renamed from: e */
    private Map<String, Map<String, Object>> f18842e;

    /* renamed from: f */
    private Map<String, List<CheckRequestBodyModel.TargetChannel>> f18843f;

    /* renamed from: g */
    private AbstractC5369a f18844g;

    /* renamed from: h */
    private String f18845h;

    /* renamed from: i */
    private C5415b f18846i = new C5415b();

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/c$a.class */
    public static class C5360a extends RuntimeException {
        C5360a(String str) {
            super(str);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.c$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/c$b.class */
    public static class C5361b extends RuntimeException {
        C5361b(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.d.c$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/d/c$c.class */
    public static class C5362c extends RuntimeException {
        C5362c(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: a */
    private long m32483a(List<Pair<String, Long>> list, String str) {
        for (Pair<String, Long> pair : list) {
            if (((String) pair.first).equals(str)) {
                return ((Long) pair.second).longValue();
            }
        }
        return 0L;
    }

    /* renamed from: a */
    private void m32487a(AbstractC5369a abstractC5369a, String str) {
        if (abstractC5369a == null) {
            return;
        }
        try {
            abstractC5369a.m32465a(str);
        } catch (Throwable th) {
            C5381b.m32430a("gecko-debug-tag", "onUpdating:", th);
        }
    }

    /* renamed from: a */
    private void m32486a(String str, AbstractC5369a abstractC5369a, Exception exc) {
        if (abstractC5369a == null) {
            return;
        }
        try {
            abstractC5369a.m32463a(str, exc);
        } catch (Throwable th) {
            C5381b.m32430a("gecko-debug-tag", "onUpdateFailed:", th);
        }
    }

    /* renamed from: a */
    private void m32485a(Iterator<UpdatePackage> it2, UpdatePackage updatePackage, long j, long j2) {
        C5381b.m32429a("gecko-debug-tag", updatePackage.getChannel(), "rollback：", Long.valueOf(j), "->", Long.valueOf(j2));
        File[] listFiles = new File(this.f18841d.m32572m(), updatePackage.getAccessKey() + File.separator + updatePackage.getChannel()).listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.d.c.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file.isDirectory();
            }
        });
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        for (File file : listFiles) {
            try {
                int i = (Long.parseLong(file.getName()) > j2 ? 1 : (Long.parseLong(file.getName()) == j2 ? 0 : -1));
                if (i > 0) {
                    final File file2 = new File(file.getParent(), file.getName() + "--pending-delete");
                    file.renameTo(file2);
                    ExecutorC5422f.m32351a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.d.c.2
                        @Override // java.lang.Runnable
                        public void run() {
                            C5419d.m32358a(file2);
                        }
                    });
                } else if (i == 0) {
                    it2.remove();
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    private void m32484a(List<UpdatePackage> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (UpdatePackage updatePackage : list) {
            C5316c.m32590a(new File(new File(this.f18841d.m32572m(), updatePackage.getAccessKey()), updatePackage.getChannel()).getAbsolutePath());
        }
    }

    /* renamed from: a */
    private void m32482a(Map<String, List<UpdatePackage>> map) {
        for (Map.Entry<String, List<UpdatePackage>> entry : map.entrySet()) {
            Iterator<UpdatePackage> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                UpdatePackage next = it2.next();
                long localVersion = next.getLocalVersion();
                long version = next.getVersion();
                if (version < localVersion) {
                    m32485a(it2, next, localVersion, version);
                }
            }
        }
    }

    /* renamed from: b */
    private Map<String, List<UpdatePackage>> m32480b(Map<String, List<Pair<String, Long>>> map) throws Exception {
        String m32478c = m32478c(map);
        String str = "https://" + this.f18841d.m32576i() + "/gecko/server/v3/package";
        try {
            this.f18846i.f18949f = C5425i.m32346a(this.f18841d.m32584a());
            C5385c mo32422a = this.f18841d.m32577h().mo32422a(str, m32478c);
            this.f18846i.f18950g = mo32422a.f18884c;
            this.f18846i.f18947d = mo32422a.f18885d;
            this.f18846i.f18948e = C5415b.m32373a(mo32422a.f18882a);
            if (mo32422a.f18884c != 200) {
                throw new NetworkErrorException("net work get failed, code: " + mo32422a.f18884c + ", url:" + str);
            }
            String str2 = mo32422a.f18883b;
            C5381b.m32429a("gecko-debug-tag", "response:", str2);
            try {
                Response response = (Response) C5335b.m32516a().m32515b().m32718a(str2, new C5236a<Response<ComponentModel>>() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.d.c.3
                }.m32805b());
                if (response.status != 0) {
                    if (response.status == 2000) {
                        C5304a.m32610a(this.f18841d);
                        return new HashMap();
                    }
                    String str3 = "check update error，unknow status code，response.status：" + response.status;
                    this.f18846i.f18947d = str3;
                    C5412e.m32381a(this.f18841d, this.f18846i);
                    throw new C5360a(str3);
                } else if (response.data == 0) {
                    this.f18846i.f18947d = "check update error：response.data==null";
                    C5412e.m32381a(this.f18841d, this.f18846i);
                    throw new C5360a("check update error：response.data==null");
                } else {
                    C5304a.m32611a(this.f18841d.m32584a(), ((ComponentModel) response.data).getUniversalStrategies(), this.f18841d.m32572m(), this.f18844g);
                    Map<String, List<UpdatePackage>> packages = ((ComponentModel) response.data).getPackages();
                    if (packages == null || packages.isEmpty()) {
                        C5304a.m32610a(this.f18841d);
                        return new HashMap();
                    }
                    for (String str4 : this.f18841d.m32580e()) {
                        List<UpdatePackage> list = packages.get(str4);
                        if (list != null && !list.isEmpty()) {
                            for (UpdatePackage updatePackage : list) {
                                updatePackage.setAccessKey(str4);
                                updatePackage.setLocalVersion(m32483a(map.get(str4), updatePackage.getChannel()));
                            }
                        }
                    }
                    return packages;
                }
            } catch (Exception e) {
                this.f18846i.f18947d = "json parse failed：" + e.getMessage();
                C5412e.m32381a(this.f18841d, this.f18846i);
                throw new C5361b("json parse failed：" + str2 + " caused by:" + e.getMessage(), e);
            }
        } catch (Exception e2) {
            C5412e.m32381a(this.f18841d, this.f18846i);
            throw new C5362c("request failed：url:" + str + ", caused by:" + e2.getMessage(), e2);
        }
    }

    /* renamed from: b */
    private void m32481b(List<Pair<String, C5376a>> list) {
        if (list == null) {
            return;
        }
        for (Pair<String, C5376a> pair : list) {
            try {
                ((C5376a) pair.second).m32438a();
            } catch (Exception e) {
                C5381b.m32428b("gecko-debug-tag", "releaseLock:", e);
            }
        }
    }

    /* renamed from: c */
    private String m32478c(Map<String, List<Pair<String, Long>>> map) {
        List<CheckRequestBodyModel.TargetChannel> list;
        CheckRequestBodyModel checkRequestBodyModel = new CheckRequestBodyModel();
        Context m32584a = this.f18841d.m32584a();
        checkRequestBodyModel.setCommon(new Common(this.f18841d.m32575j(), this.f18841d.m32571n(), this.f18841d.m32568q(), C5416a.m32363b(m32584a), C5425i.m32346a(m32584a), this.f18841d.m32574k(), this.f18841d.m32573l()));
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<Pair<String, Long>>> entry : map.entrySet()) {
            HashMap hashMap2 = new HashMap();
            for (Pair<String, Long> pair : entry.getValue()) {
                CheckRequestBodyModel.LocalChannel localChannel = new CheckRequestBodyModel.LocalChannel();
                localChannel.localVersion = (Long) pair.second;
                hashMap2.put(pair.first, localChannel);
            }
            hashMap.put(entry.getKey(), hashMap2);
        }
        this.f18846i.f18944a = C5335b.m32516a().m32515b().m32723a(hashMap);
        checkRequestBodyModel.setLocal(hashMap);
        HashMap hashMap3 = new HashMap();
        for (String str : this.f18841d.m32580e()) {
            CheckRequestBodyModel.Group group = new CheckRequestBodyModel.Group();
            group.groupName = this.f18845h;
            Map<String, List<CheckRequestBodyModel.TargetChannel>> map2 = this.f18843f;
            if (map2 != null && !map2.isEmpty() && (list = this.f18843f.get(str)) != null && !list.isEmpty()) {
                group.targetChannels = new ArrayList();
                group.targetChannels.addAll(list);
            }
            hashMap3.put(str, group);
        }
        this.f18846i.f18945b = C5335b.m32516a().m32515b().m32723a(hashMap3);
        checkRequestBodyModel.setDeployments(hashMap3);
        if (this.f18842e != null) {
            this.f18846i.f18946c = C5335b.m32516a().m32515b().m32723a(this.f18842e);
            checkRequestBodyModel.setCustom(this.f18842e);
        }
        return C5335b.m32516a().m32515b().m32723a(checkRequestBodyModel);
    }

    /* renamed from: c */
    private List<Pair<String, C5376a>> m32479c(List<UpdatePackage> list) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UpdatePackage updatePackage : list) {
            try {
                File file = new File(new File(this.f18841d.m32572m(), updatePackage.getAccessKey()), updatePackage.getChannel());
                if (file.isFile()) {
                    C5419d.m32358a(file);
                }
                if (!file.mkdirs() && !file.isDirectory()) {
                    C5381b.m32429a("gecko-debug-tag", "can not create channel dir：", file.getAbsolutePath());
                    throw new RuntimeException("can not create channel dir:" + file.getAbsolutePath());
                    break;
                }
                C5376a m32437a = C5376a.m32437a(file.getAbsolutePath() + File.separator + "update.lock");
                if (m32437a != null) {
                    arrayList.add(new Pair(updatePackage.getChannel(), m32437a));
                    arrayList2.add(updatePackage);
                } else {
                    m32487a(this.f18844g, updatePackage.getChannel());
                }
            } catch (Exception e) {
                C5381b.m32428b("gecko-debug-tag", "filterChannel:", e);
                m32486a(updatePackage.getChannel(), this.f18844g, e);
            }
        }
        list.clear();
        list.addAll(arrayList2);
        return arrayList;
    }

    /* renamed from: a */
    public Object mo32469a_(AbstractC5279b<List<UpdatePackage>> abstractC5279b, Map<String, List<Pair<String, Long>>> map) throws Throwable {
        Throwable th;
        List<Pair<String, C5376a>> list;
        Object obj;
        List<Pair<String, C5376a>> m32479c;
        C5381b.m32429a("gecko-debug-tag", "start get server channel version[v3]... local channel version:", map);
        Map<String, List<UpdatePackage>> m32480b = m32480b(map);
        C5412e.m32381a(this.f18841d, this.f18846i);
        m32482a(m32480b);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<UpdatePackage>> entry : m32480b.entrySet()) {
            arrayList.addAll(entry.getValue());
        }
        try {
            m32479c = m32479c(arrayList);
        } catch (Throwable th2) {
            th = th2;
            list = null;
        }
        try {
            obj = abstractC5279b.mo32631a((AbstractC5279b<List<UpdatePackage>>) arrayList);
            m32481b(m32479c);
            C5381b.m32429a("gecko-debug-tag", "all channel update finished");
        } catch (Throwable th3) {
            th = th3;
            list = m32479c;
            try {
                C5381b.m32428b("gecko-debug-tag", "filterChannel:", th);
                m32481b(list);
                C5381b.m32429a("gecko-debug-tag", "all channel update finished");
                obj = null;
                m32484a(arrayList);
                return obj;
            } catch (Throwable th4) {
                m32481b(list);
                C5381b.m32429a("gecko-debug-tag", "all channel update finished");
                throw th4;
            }
        }
        m32484a(arrayList);
        return obj;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        this.f18841d = (C5320b) objArr[0];
        this.f18842e = (Map) objArr[1];
        this.f18843f = (Map) objArr[2];
        this.f18844g = (AbstractC5369a) objArr[3];
        this.f18845h = (String) objArr[4];
    }
}
